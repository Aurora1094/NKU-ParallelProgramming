#include "05_gpu_ivf_searcher.h"

#include <algorithm>
#include <chrono>
#include <cmath>
#include <cstdlib>
#include <iostream>
#include <limits>
#include <numeric>
#include <string>

namespace {

float cpu_dot(const float* a, const float* b, size_t dim)
{
    float sum = 0.0f;
    for (size_t i = 0; i < dim; ++i) {
        sum += a[i] * b[i];
    }
    return sum;
}

int intersection_size(const std::vector<int>& a, const std::vector<int>& b)
{
    int i = 0;
    int j = 0;
    int count = 0;
    while (i < static_cast<int>(a.size()) && j < static_cast<int>(b.size())) {
        if (a[i] == b[j]) {
            ++count;
            ++i;
            ++j;
        } else if (a[i] < b[j]) {
            ++i;
        } else {
            ++j;
        }
    }
    return count;
}

double query_projection(const float* query, size_t dim)
{
    double projection = 0.0;
    for (size_t d = 0; d < dim; ++d) {
        const double weight = static_cast<double>((d * 131) % 997) / 997.0;
        projection += static_cast<double>(query[d]) * weight;
    }
    return projection;
}

} // namespace

GPUIVFSearcher::GPUIVFSearcher(
    const IVFIndex& index,
    const float* queries,
    size_t query_number,
    size_t dim,
    size_t k,
    size_t batch_size,
    size_t nprobe,
    SearchMode mode
) :
    index_(index),
    queries_(queries),
    query_number_(query_number),
    dim_(dim),
    k_(k),
    batch_size_(batch_size),
    nprobe_(std::min(nprobe, static_cast<size_t>(index.nlist))),
    mode_(mode),
    handle_(nullptr),
    d_centroids_(nullptr),
    d_list_vectors_(nullptr),
    d_queries_(nullptr),
    d_centroid_scores_(nullptr),
    d_sub_queries_(nullptr),
    d_list_scores_(nullptr),
    max_list_size_(0),
    overlap_ratio_sum_(0.0),
    unique_probe_lists_sum_(0.0),
    stats_batches_(0),
    compute_batch_calls_(0)
{
    if (queries_ == nullptr || query_number_ == 0 || dim_ == 0 || batch_size_ == 0 || k_ == 0) {
        std::cerr << "Invalid GPU IVF search inputs" << std::endl;
        std::exit(1);
    }
    if (index_.dim != static_cast<int>(dim_) || index_.nlist <= 0) {
        std::cerr << "IVF index dimension does not match queries" << std::endl;
        std::exit(1);
    }
    if (nprobe_ == 0) {
        std::cerr << "nprobe must be positive" << std::endl;
        std::exit(1);
    }

    for (int c = 0; c < index_.nlist; ++c) {
        const size_t list_size = static_cast<size_t>(index_.list_offsets[c + 1] - index_.list_offsets[c]);
        max_list_size_ = std::max(max_list_size_, list_size);
    }
    if (max_list_size_ == 0) {
        std::cerr << "IVF index has no vectors" << std::endl;
        std::exit(1);
    }

    build_query_order();

    CUBLAS_CHECK(cublasCreate(&handle_));

    CUDA_CHECK(cudaMalloc(reinterpret_cast<void**>(&d_centroids_), index_.centroids.size() * sizeof(float)));
    CUDA_CHECK(cudaMalloc(reinterpret_cast<void**>(&d_list_vectors_), index_.list_vectors.size() * sizeof(float)));
    CUDA_CHECK(cudaMalloc(reinterpret_cast<void**>(&d_queries_), batch_size_ * dim_ * sizeof(float)));
    CUDA_CHECK(cudaMalloc(reinterpret_cast<void**>(&d_centroid_scores_), batch_size_ * index_.nlist * sizeof(float)));
    CUDA_CHECK(cudaMalloc(reinterpret_cast<void**>(&d_sub_queries_), batch_size_ * dim_ * sizeof(float)));
    CUDA_CHECK(cudaMalloc(reinterpret_cast<void**>(&d_list_scores_), batch_size_ * max_list_size_ * sizeof(float)));

    CUDA_CHECK(cudaMemcpy(
        d_centroids_,
        index_.centroids.data(),
        index_.centroids.size() * sizeof(float),
        cudaMemcpyHostToDevice
    ));
    CUDA_CHECK(cudaMemcpy(
        d_list_vectors_,
        index_.list_vectors.data(),
        index_.list_vectors.size() * sizeof(float),
        cudaMemcpyHostToDevice
    ));

    host_batch_queries_.resize(batch_size_ * dim_);
    host_centroid_scores_.resize(batch_size_ * index_.nlist);
    host_sub_queries_.resize(batch_size_ * dim_);
    host_list_scores_.resize(batch_size_ * max_list_size_);

    const size_t num_batches = (query_number_ + batch_size_ - 1) / batch_size_;
    batch_computed_.assign(num_batches, 0);
    cached_ids_.resize(query_number_);
    cached_dists_.resize(query_number_);
    for (size_t q = 0; q < query_number_; ++q) {
        cached_ids_[q].assign(k_, std::numeric_limits<uint32_t>::max());
        cached_dists_[q].assign(k_, std::numeric_limits<float>::infinity());
    }
}

GPUIVFSearcher::~GPUIVFSearcher()
{
    if (d_list_scores_ != nullptr) {
        cudaFree(d_list_scores_);
    }
    if (d_sub_queries_ != nullptr) {
        cudaFree(d_sub_queries_);
    }
    if (d_centroid_scores_ != nullptr) {
        cudaFree(d_centroid_scores_);
    }
    if (d_queries_ != nullptr) {
        cudaFree(d_queries_);
    }
    if (d_list_vectors_ != nullptr) {
        cudaFree(d_list_vectors_);
    }
    if (d_centroids_ != nullptr) {
        cudaFree(d_centroids_);
    }
    if (handle_ != nullptr) {
        cublasDestroy(handle_);
    }
}

std::priority_queue<std::pair<float, uint32_t>> GPUIVFSearcher::search(size_t query_id)
{
    if (query_id >= query_number_) {
        std::cerr << "query_id out of range: " << query_id << std::endl;
        std::exit(1);
    }

    const size_t grouped_pos = static_cast<size_t>(original_to_position_[query_id]);
    const size_t batch_id = grouped_pos / batch_size_;
    if (batch_id >= batch_computed_.size()) {
        std::cerr << "IVF batch_id out of range: " << batch_id << std::endl;
        std::exit(1);
    }
    if (!batch_computed_[batch_id]) {
        compute_batch(batch_id);
        batch_computed_[batch_id] = 1;
    }

    std::priority_queue<std::pair<float, uint32_t>> res;
    for (size_t t = 0; t < k_; ++t) {
        res.push(std::make_pair(cached_dists_[query_id][t], cached_ids_[query_id][t]));
    }
    return res;
}

void GPUIVFSearcher::print_stats() const
{
    if (stats_batches_ == 0) {
        return;
    }
    std::cerr << "mode,batch_size,nprobe,avg_overlap_ratio,avg_unique_probe_lists\n";
    std::cerr << mode_to_string(mode_) << ','
              << batch_size_ << ','
              << nprobe_ << ','
              << (overlap_ratio_sum_ / static_cast<double>(stats_batches_)) << ','
              << (unique_probe_lists_sum_ / static_cast<double>(stats_batches_))
              << std::endl;
    if (std::getenv("ANN_DEBUG_IVF") != nullptr) {
        std::cerr << "ivf_compute_batches: " << compute_batch_calls_ << std::endl;
    }
}

void GPUIVFSearcher::set_batch_stats_config(const BatchStatsConfig& config)
{
    batch_stats_ = config;
}

double GPUIVFSearcher::average_overlap_ratio() const
{
    if (stats_batches_ == 0) {
        return 0.0;
    }
    return overlap_ratio_sum_ / static_cast<double>(stats_batches_);
}

double GPUIVFSearcher::average_unique_probe_lists() const
{
    if (stats_batches_ == 0) {
        return 0.0;
    }
    return unique_probe_lists_sum_ / static_cast<double>(stats_batches_);
}

void GPUIVFSearcher::build_query_order()
{
    grouped_to_original_.resize(query_number_);
    original_to_position_.resize(query_number_);
    std::iota(grouped_to_original_.begin(), grouped_to_original_.end(), 0);

    if (mode_ == SearchMode::GPU_IVF_BASELINE) {
        for (size_t pos = 0; pos < grouped_to_original_.size(); ++pos) {
            original_to_position_[grouped_to_original_[pos]] = static_cast<int>(pos);
        }
        return;
    }

    std::vector<int> main_cluster(query_number_, 0);
    std::vector<std::vector<int>> probe_sets(query_number_);
    std::vector<double> projection(query_number_, 0.0);
    std::vector<double> overlap_score(query_number_, 0.0);
    std::vector<double> cost(query_number_, 0.0);

    for (size_t q = 0; q < query_number_; ++q) {
        probe_sets[q] = cpu_top_probe_lists(q, static_cast<int>(nprobe_));
        main_cluster[q] = probe_sets[q].empty() ? 0 : probe_sets[q][0];
        std::sort(probe_sets[q].begin(), probe_sets[q].end());
        projection[q] = query_projection(queries_ + q * dim_, dim_);
        for (int list_id : probe_sets[q]) {
            cost[q] += static_cast<double>(index_.list_offsets[list_id + 1] - index_.list_offsets[list_id]);
        }
    }

    std::vector<std::vector<int>> buckets(index_.nlist);
    for (size_t q = 0; q < query_number_; ++q) {
        buckets[main_cluster[q]].push_back(static_cast<int>(q));
    }

    for (int c = 0; c < index_.nlist; ++c) {
        const std::vector<int>& bucket = buckets[c];
        const int sample_count = std::min<int>(16, static_cast<int>(bucket.size()));
        if (sample_count == 0) {
            continue;
        }
        for (int q : bucket) {
            double sum = 0.0;
            int compared = 0;
            for (int i = 0; i < sample_count; ++i) {
                const int other = bucket[i];
                if (other == q) {
                    continue;
                }
                sum += intersection_size(probe_sets[q], probe_sets[other]);
                ++compared;
            }
            overlap_score[q] = compared > 0 ? sum / static_cast<double>(compared) : 0.0;
        }
    }

    auto append_jaccard_groups = [&](const std::vector<int>& source, bool seed_high_cost) {
        std::vector<int> remaining = source;
        if (seed_high_cost) {
            std::sort(remaining.begin(), remaining.end(), [&](int a, int b) {
                if (cost[a] != cost[b]) {
                    return cost[a] > cost[b];
                }
                return a < b;
            });
        }

        while (!remaining.empty()) {
            const int seed = remaining.front();
            remaining.erase(remaining.begin());
            grouped_to_original_.push_back(seed);

            size_t group_count = 1;
            while (group_count < batch_size_ && !remaining.empty()) {
                int best_pos = 0;
                int best_score = -1;
                for (int pos = 0; pos < static_cast<int>(remaining.size()); ++pos) {
                    const int candidate = remaining[pos];
                    const int score = intersection_size(probe_sets[seed], probe_sets[candidate]);
                    if (score > best_score ||
                        (score == best_score && candidate < remaining[best_pos])) {
                        best_score = score;
                        best_pos = pos;
                    }
                }
                grouped_to_original_.push_back(remaining[best_pos]);
                remaining.erase(remaining.begin() + best_pos);
                ++group_count;
            }
        }
    };

    if (mode_ == SearchMode::GPU_IVF_MAIN_CLUSTER_GROUP) {
        std::sort(grouped_to_original_.begin(), grouped_to_original_.end(), [&](int a, int b) {
            if (main_cluster[a] != main_cluster[b]) {
                return main_cluster[a] < main_cluster[b];
            }
            return a < b;
        });
    } else if (mode_ == SearchMode::GPU_IVF_JACCARD_GROUP) {
        grouped_to_original_.clear();
        grouped_to_original_.reserve(query_number_);
        for (int c = 0; c < index_.nlist; ++c) {
            append_jaccard_groups(buckets[c], false);
        }
    } else if (mode_ == SearchMode::GPU_IVF_QUERY_GROUP) {
        std::sort(grouped_to_original_.begin(), grouped_to_original_.end(), [&](int a, int b) {
            if (projection[a] != projection[b]) {
                return projection[a] < projection[b];
            }
            return a < b;
        });
    } else if (mode_ == SearchMode::GPU_IVF_HYBRID_GROUP) {
        std::sort(grouped_to_original_.begin(), grouped_to_original_.end(), [&](int a, int b) {
            if (main_cluster[a] != main_cluster[b]) {
                return main_cluster[a] < main_cluster[b];
            }
            if (projection[a] != projection[b]) {
                return projection[a] < projection[b];
            }
            return a < b;
        });
    } else if (mode_ == SearchMode::GPU_IVF_ADAPTIVE_GROUP) {
        std::sort(grouped_to_original_.begin(), grouped_to_original_.end(), [&](int a, int b) {
            if (main_cluster[a] != main_cluster[b]) {
                return main_cluster[a] < main_cluster[b];
            }
            if (overlap_score[a] != overlap_score[b]) {
                return overlap_score[a] > overlap_score[b];
            }
            return a < b;
        });
    } else if (mode_ == SearchMode::GPU_IVF_LOAD_BALANCE_GROUP) {
        const size_t num_batches = (query_number_ + batch_size_ - 1) / batch_size_;
        std::vector<std::vector<int>> batches(num_batches);
        std::vector<double> batch_cost(num_batches, 0.0);
        std::vector<int> by_cost(query_number_);
        std::iota(by_cost.begin(), by_cost.end(), 0);
        std::sort(by_cost.begin(), by_cost.end(), [&](int a, int b) {
            if (cost[a] != cost[b]) {
                return cost[a] > cost[b];
            }
            return a < b;
        });

        for (int q : by_cost) {
            size_t best_batch = 0;
            for (size_t b = 1; b < num_batches; ++b) {
                if (batches[b].size() >= batch_size_) {
                    continue;
                }
                if (batches[best_batch].size() >= batch_size_ ||
                    batch_cost[b] < batch_cost[best_batch]) {
                    best_batch = b;
                }
            }
            batches[best_batch].push_back(q);
            batch_cost[best_batch] += cost[q];
        }

        grouped_to_original_.clear();
        grouped_to_original_.reserve(query_number_);
        for (const auto& batch : batches) {
            grouped_to_original_.insert(grouped_to_original_.end(), batch.begin(), batch.end());
        }
    } else if (mode_ == SearchMode::GPU_IVF_LOCALITY_GROUP) {
        grouped_to_original_.clear();
        grouped_to_original_.reserve(query_number_);
        std::vector<char> used(query_number_, 0);
        size_t used_count = 0;
        const size_t window_size = std::max<size_t>(1, 4 * batch_size_);

        while (used_count < query_number_) {
            size_t seed = 0;
            while (seed < query_number_ && used[seed]) {
                ++seed;
            }
            if (seed >= query_number_) {
                break;
            }

            used[seed] = 1;
            ++used_count;
            grouped_to_original_.push_back(static_cast<int>(seed));

            size_t group_count = 1;
            while (group_count < batch_size_ && used_count < query_number_) {
                const size_t window_end = std::min(query_number_, seed + window_size);
                int best = -1;
                int best_score = -1;
                for (size_t q = seed; q < window_end; ++q) {
                    if (used[q]) {
                        continue;
                    }
                    const int score = intersection_size(probe_sets[seed], probe_sets[q]);
                    if (score > best_score || (score == best_score && static_cast<int>(q) < best)) {
                        best_score = score;
                        best = static_cast<int>(q);
                    }
                }
                if (best < 0) {
                    size_t q = 0;
                    while (q < query_number_ && used[q]) {
                        ++q;
                    }
                    best = static_cast<int>(q);
                }

                used[best] = 1;
                ++used_count;
                ++group_count;
                grouped_to_original_.push_back(best);
            }
        }
    } else if (mode_ == SearchMode::GPU_IVF_HIERARCHICAL_GROUP) {
        grouped_to_original_.clear();
        grouped_to_original_.reserve(query_number_);
        for (int c = 0; c < index_.nlist; ++c) {
            append_jaccard_groups(buckets[c], true);
        }
    } else if (mode_ == SearchMode::GPU_IVF_TIME_GROUP) {
        std::sort(grouped_to_original_.begin(), grouped_to_original_.end(), [&](int a, int b) {
            if (main_cluster[a] != main_cluster[b]) {
                return main_cluster[a] < main_cluster[b];
            }
            if (overlap_score[a] != overlap_score[b]) {
                return overlap_score[a] > overlap_score[b];
            }
            if (cost[a] != cost[b]) {
                return cost[a] > cost[b];
            }
            return a < b;
        });
    }

    for (size_t pos = 0; pos < grouped_to_original_.size(); ++pos) {
        original_to_position_[grouped_to_original_[pos]] = static_cast<int>(pos);
    }
}

std::vector<int> GPUIVFSearcher::cpu_top_probe_lists(size_t query_id, int count) const
{
    const int take = std::min(count, index_.nlist);
    std::vector<std::pair<float, int>> scores;
    scores.reserve(index_.nlist);
    const float* query = queries_ + query_id * dim_;
    for (int c = 0; c < index_.nlist; ++c) {
        const float score = cpu_dot(query, index_.centroids.data() + static_cast<size_t>(c) * dim_, dim_);
        scores.push_back(std::make_pair(score, c));
    }

    std::partial_sort(
        scores.begin(),
        scores.begin() + take,
        scores.end(),
        [](const std::pair<float, int>& a, const std::pair<float, int>& b) {
            if (a.first != b.first) {
                return a.first > b.first;
            }
            return a.second < b.second;
        }
    );

    std::vector<int> lists;
    lists.reserve(take);
    for (int i = 0; i < take; ++i) {
        lists.push_back(scores[i].second);
    }
    return lists;
}

void GPUIVFSearcher::compute_batch(size_t batch_id)
{
    const auto stats_begin = std::chrono::high_resolution_clock::now();
    const size_t grouped_start = batch_id * batch_size_;
    const size_t grouped_end = std::min(grouped_start + batch_size_, query_number_);
    const size_t real_batch = grouped_end - grouped_start;

    std::vector<int> batch_original_ids(real_batch);

    for (size_t local_q = 0; local_q < real_batch; ++local_q) {
        const int original_q = grouped_to_original_[grouped_start + local_q];
        batch_original_ids[local_q] = original_q;
        std::copy(
            queries_ + static_cast<size_t>(original_q) * dim_,
            queries_ + static_cast<size_t>(original_q + 1) * dim_,
            host_batch_queries_.begin() + local_q * dim_
        );
    }

    CUDA_CHECK(cudaMemcpy(
        d_queries_,
        host_batch_queries_.data(),
        real_batch * dim_ * sizeof(float),
        cudaMemcpyHostToDevice
    ));

    const float alpha = 1.0f;
    const float beta = 0.0f;
    CUBLAS_CHECK(cublasSgemm(
        handle_,
        CUBLAS_OP_T,
        CUBLAS_OP_N,
        index_.nlist,
        checked_int(real_batch, "real_batch"),
        checked_int(dim_, "dim"),
        &alpha,
        d_centroids_,
        checked_int(dim_, "dim"),
        d_queries_,
        checked_int(dim_, "dim"),
        &beta,
        d_centroid_scores_,
        index_.nlist
    ));

    CUDA_CHECK(cudaMemcpy(
        host_centroid_scores_.data(),
        d_centroid_scores_,
        real_batch * index_.nlist * sizeof(float),
        cudaMemcpyDeviceToHost
    ));

    std::vector<std::vector<int>> probe_lists;
    select_batch_probe_lists(real_batch, probe_lists);

    std::vector<char> used_lists(index_.nlist, 0);
    int unique_lists = 0;
    size_t duplicated_scanned_vectors = 0;
    std::vector<std::vector<int>> queries_for_list(index_.nlist);
    for (size_t q = 0; q < real_batch; ++q) {
        for (int list_id : probe_lists[q]) {
            duplicated_scanned_vectors += static_cast<size_t>(
                index_.list_offsets[list_id + 1] - index_.list_offsets[list_id]
            );
            if (!used_lists[list_id]) {
                used_lists[list_id] = 1;
                ++unique_lists;
            }
            queries_for_list[list_id].push_back(static_cast<int>(q));
        }
    }

    const double overlap =
        1.0 - static_cast<double>(unique_lists) / static_cast<double>(real_batch * nprobe_);
    overlap_ratio_sum_ += overlap;
    unique_probe_lists_sum_ += static_cast<double>(unique_lists);
    ++stats_batches_;

    std::vector<std::priority_queue<std::pair<float, uint32_t>>> batch_heaps(real_batch);

    for (int c = 0; c < index_.nlist; ++c) {
        const std::vector<int>& local_queries = queries_for_list[c];
        if (local_queries.empty()) {
            continue;
        }

        const int list_begin = index_.list_offsets[c];
        const int list_end = index_.list_offsets[c + 1];
        const int list_size = list_end - list_begin;
        if (list_size <= 0) {
            continue;
        }

        const size_t qcount = local_queries.size();
        for (size_t qi = 0; qi < qcount; ++qi) {
            const int local_q = local_queries[qi];
            std::copy(
                host_batch_queries_.begin() + static_cast<size_t>(local_q) * dim_,
                host_batch_queries_.begin() + static_cast<size_t>(local_q + 1) * dim_,
                host_sub_queries_.begin() + qi * dim_
            );
        }

        CUDA_CHECK(cudaMemcpy(
            d_sub_queries_,
            host_sub_queries_.data(),
            qcount * dim_ * sizeof(float),
            cudaMemcpyHostToDevice
        ));

        const float* d_list_start = d_list_vectors_ + static_cast<size_t>(list_begin) * dim_;
        CUBLAS_CHECK(cublasSgemm(
            handle_,
            CUBLAS_OP_T,
            CUBLAS_OP_N,
            list_size,
            checked_int(qcount, "qcount"),
            checked_int(dim_, "dim"),
            &alpha,
            d_list_start,
            checked_int(dim_, "dim"),
            d_sub_queries_,
            checked_int(dim_, "dim"),
            &beta,
            d_list_scores_,
            list_size
        ));

        CUDA_CHECK(cudaMemcpy(
            host_list_scores_.data(),
            d_list_scores_,
            qcount * static_cast<size_t>(list_size) * sizeof(float),
            cudaMemcpyDeviceToHost
        ));

        for (size_t qi = 0; qi < qcount; ++qi) {
            const int local_q = local_queries[qi];
            auto& heap = batch_heaps[local_q];
            const float* scores = host_list_scores_.data() + qi * static_cast<size_t>(list_size);
            for (int vid = 0; vid < list_size; ++vid) {
                const float dist = 1.0f - scores[vid];
                const uint32_t original_id = static_cast<uint32_t>(index_.list_ids[list_begin + vid]);
                update_heap(heap, dist, original_id);
            }
        }
    }

    for (size_t local_q = 0; local_q < real_batch; ++local_q) {
        const int original_q = batch_original_ids[local_q];
        auto heap = batch_heaps[local_q];
        for (size_t t = 0; t < k_; ++t) {
            if (!heap.empty()) {
                cached_dists_[original_q][t] = heap.top().first;
                cached_ids_[original_q][t] = heap.top().second;
                heap.pop();
            } else {
                cached_dists_[original_q][t] = std::numeric_limits<float>::infinity();
                cached_ids_[original_q][t] = std::numeric_limits<uint32_t>::max();
            }
        }
    }

    ++compute_batch_calls_;

    const auto stats_end = std::chrono::high_resolution_clock::now();
    BatchStatsRow row;
    row.batch_id = batch_id;
    row.real_batch = real_batch;
    row.latency_batch_us = static_cast<double>(
        std::chrono::duration_cast<std::chrono::microseconds>(stats_end - stats_begin).count()
    );
    row.avg_overlap_ratio = double_to_csv(overlap);
    row.unique_probe_lists = std::to_string(unique_lists);
    row.total_probe_lists = std::to_string(real_batch * nprobe_);
    row.estimated_scanned_vectors = std::to_string(duplicated_scanned_vectors);
    row.avg_estimated_cost = double_to_csv(
        real_batch == 0 ? 0.0 : static_cast<double>(duplicated_scanned_vectors) / static_cast<double>(real_batch)
    );
    append_batch_stats_row(batch_stats_, row);
}

void GPUIVFSearcher::select_batch_probe_lists(
    size_t real_batch,
    std::vector<std::vector<int>>& probe_lists
) const
{
    const int take = checked_int(nprobe_, "nprobe");
    probe_lists.assign(real_batch, std::vector<int>());

    for (size_t q = 0; q < real_batch; ++q) {
        std::vector<std::pair<float, int>> scores;
        scores.reserve(index_.nlist);
        const float* row = host_centroid_scores_.data() + q * index_.nlist;
        for (int c = 0; c < index_.nlist; ++c) {
            scores.push_back(std::make_pair(row[c], c));
        }
        std::partial_sort(
            scores.begin(),
            scores.begin() + take,
            scores.end(),
            [](const std::pair<float, int>& a, const std::pair<float, int>& b) {
                if (a.first != b.first) {
                    return a.first > b.first;
                }
                return a.second < b.second;
            }
        );

        probe_lists[q].reserve(take);
        for (int i = 0; i < take; ++i) {
            probe_lists[q].push_back(scores[i].second);
        }
    }
}

void GPUIVFSearcher::update_heap(
    std::priority_queue<std::pair<float, uint32_t>>& heap,
    float dist,
    uint32_t id
) const
{
    const auto item = std::make_pair(dist, id);
    if (heap.size() < k_) {
        heap.push(item);
    } else if (dist < heap.top().first) {
        heap.pop();
        heap.push(item);
    }
}
