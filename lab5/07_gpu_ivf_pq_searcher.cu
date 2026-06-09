#include "07_gpu_ivf_pq_searcher.h"

#include <algorithm>
#include <chrono>
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

} // namespace

GPUIVFPQSearcher::GPUIVFPQSearcher(
    const IVFIndex& index,
    const PQIndex& pq,
    const float* queries,
    size_t query_number,
    size_t dim,
    size_t k,
    size_t batch_size,
    size_t nprobe,
    SearchMode mode
) :
    index_(index),
    pq_(pq),
    queries_(queries),
    query_number_(query_number),
    dim_(dim),
    k_(k),
    batch_size_(batch_size),
    nprobe_(std::min(nprobe, static_cast<size_t>(index.nlist))),
    mode_(mode),
    handle_(nullptr),
    d_centroids_(nullptr),
    d_queries_(nullptr),
    d_centroid_scores_(nullptr),
    overlap_ratio_sum_(0.0),
    unique_probe_lists_sum_(0.0),
    stats_batches_(0)
{
    if (queries_ == nullptr || query_number_ == 0 || dim_ == 0 || batch_size_ == 0 || k_ == 0) {
        std::cerr << "Invalid GPU IVF-PQ search inputs" << std::endl;
        std::exit(1);
    }
    if (index_.dim != static_cast<int>(dim_) || pq_.dim != static_cast<int>(dim_)) {
        std::cerr << "IVF/PQ dimensions do not match queries" << std::endl;
        std::exit(1);
    }
    if (nprobe_ == 0) {
        std::cerr << "nprobe must be positive" << std::endl;
        std::exit(1);
    }

    build_query_order();

    CUBLAS_CHECK(cublasCreate(&handle_));
    CUDA_CHECK(cudaMalloc(reinterpret_cast<void**>(&d_centroids_), index_.centroids.size() * sizeof(float)));
    CUDA_CHECK(cudaMalloc(reinterpret_cast<void**>(&d_queries_), batch_size_ * dim_ * sizeof(float)));
    CUDA_CHECK(cudaMalloc(reinterpret_cast<void**>(&d_centroid_scores_), batch_size_ * index_.nlist * sizeof(float)));
    CUDA_CHECK(cudaMemcpy(
        d_centroids_,
        index_.centroids.data(),
        index_.centroids.size() * sizeof(float),
        cudaMemcpyHostToDevice
    ));

    host_batch_queries_.resize(batch_size_ * dim_);
    host_centroid_scores_.resize(batch_size_ * index_.nlist);

    const size_t num_batches = (query_number_ + batch_size_ - 1) / batch_size_;
    batch_computed_.assign(num_batches, 0);
    cached_ids_.resize(query_number_);
    cached_dists_.resize(query_number_);
    for (size_t q = 0; q < query_number_; ++q) {
        cached_ids_[q].assign(k_, std::numeric_limits<uint32_t>::max());
        cached_dists_[q].assign(k_, std::numeric_limits<float>::infinity());
    }
}

GPUIVFPQSearcher::~GPUIVFPQSearcher()
{
    if (d_centroid_scores_ != nullptr) {
        cudaFree(d_centroid_scores_);
    }
    if (d_queries_ != nullptr) {
        cudaFree(d_queries_);
    }
    if (d_centroids_ != nullptr) {
        cudaFree(d_centroids_);
    }
    if (handle_ != nullptr) {
        cublasDestroy(handle_);
    }
}

std::priority_queue<std::pair<float, uint32_t>> GPUIVFPQSearcher::search(size_t query_id)
{
    if (query_id >= query_number_) {
        std::cerr << "query_id out of range: " << query_id << std::endl;
        std::exit(1);
    }
    const size_t grouped_pos = static_cast<size_t>(original_to_position_[query_id]);
    const size_t batch_id = grouped_pos / batch_size_;
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

void GPUIVFPQSearcher::set_batch_stats_config(const BatchStatsConfig& config)
{
    batch_stats_ = config;
}

void GPUIVFPQSearcher::print_stats() const
{
    if (stats_batches_ == 0) {
        return;
    }
    std::cerr << "mode,batch_size,nprobe,avg_overlap_ratio,avg_unique_probe_lists\n";
    std::cerr << mode_to_string(mode_) << ','
              << batch_size_ << ','
              << nprobe_ << ','
              << average_overlap_ratio() << ','
              << average_unique_probe_lists() << std::endl;
}

double GPUIVFPQSearcher::average_overlap_ratio() const
{
    return stats_batches_ == 0 ? 0.0 : overlap_ratio_sum_ / static_cast<double>(stats_batches_);
}

double GPUIVFPQSearcher::average_unique_probe_lists() const
{
    return stats_batches_ == 0 ? 0.0 : unique_probe_lists_sum_ / static_cast<double>(stats_batches_);
}

void GPUIVFPQSearcher::build_query_order()
{
    grouped_to_original_.resize(query_number_);
    original_to_position_.resize(query_number_);
    std::iota(grouped_to_original_.begin(), grouped_to_original_.end(), 0);

    if (mode_ == SearchMode::GPU_IVF_PQ) {
        for (size_t pos = 0; pos < grouped_to_original_.size(); ++pos) {
            original_to_position_[grouped_to_original_[pos]] = static_cast<int>(pos);
        }
        return;
    }

    std::vector<int> main_cluster(query_number_, 0);
    std::vector<std::vector<int>> probe_sets(query_number_);
    for (size_t q = 0; q < query_number_; ++q) {
        probe_sets[q] = cpu_top_probe_lists(q, static_cast<int>(nprobe_));
        main_cluster[q] = probe_sets[q].empty() ? 0 : probe_sets[q][0];
        std::sort(probe_sets[q].begin(), probe_sets[q].end());
    }

    if (mode_ == SearchMode::GPU_IVF_PQ_MAIN) {
        std::sort(grouped_to_original_.begin(), grouped_to_original_.end(), [&](int a, int b) {
            if (main_cluster[a] != main_cluster[b]) {
                return main_cluster[a] < main_cluster[b];
            }
            return a < b;
        });
    } else {
        std::vector<std::vector<int>> buckets(index_.nlist);
        for (size_t q = 0; q < query_number_; ++q) {
            buckets[main_cluster[q]].push_back(static_cast<int>(q));
        }
        grouped_to_original_.clear();
        grouped_to_original_.reserve(query_number_);
        for (int c = 0; c < index_.nlist; ++c) {
            std::vector<int> remaining = buckets[c];
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
                        if (score > best_score || (score == best_score && candidate < remaining[best_pos])) {
                            best_score = score;
                            best_pos = pos;
                        }
                    }
                    grouped_to_original_.push_back(remaining[best_pos]);
                    remaining.erase(remaining.begin() + best_pos);
                    ++group_count;
                }
            }
        }
    }

    for (size_t pos = 0; pos < grouped_to_original_.size(); ++pos) {
        original_to_position_[grouped_to_original_[pos]] = static_cast<int>(pos);
    }
}

std::vector<int> GPUIVFPQSearcher::cpu_top_probe_lists(size_t query_id, int count) const
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

void GPUIVFPQSearcher::compute_batch(size_t batch_id)
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

    CUDA_CHECK(cudaMemcpy(d_queries_, host_batch_queries_.data(), real_batch * dim_ * sizeof(float), cudaMemcpyHostToDevice));

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

    std::vector<std::vector<int>> probe_lists(real_batch);
    const int take = checked_int(nprobe_, "nprobe");
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
        for (int i = 0; i < take; ++i) {
            probe_lists[q].push_back(scores[i].second);
        }
    }

    std::vector<char> used_lists(index_.nlist, 0);
    int unique_lists = 0;
    size_t duplicated_scanned_vectors = 0;
    std::vector<std::priority_queue<std::pair<float, uint32_t>>> batch_heaps(real_batch);
    std::vector<float> lookup(static_cast<size_t>(pq_.pq_m) * pq_.pq_ksub, 0.0f);

    for (size_t local_q = 0; local_q < real_batch; ++local_q) {
        const float* query = host_batch_queries_.data() + local_q * dim_;
        for (int m = 0; m < pq_.pq_m; ++m) {
            const float* q_sub = query + m * pq_.subdim;
            const float* codebook = pq_.codebooks.data() + static_cast<size_t>(m) * pq_.pq_ksub * pq_.subdim;
            for (int k = 0; k < pq_.pq_ksub; ++k) {
                const float* word = codebook + static_cast<size_t>(k) * pq_.subdim;
                float value = 0.0f;
                if (pq_.metric == "ip") {
                    for (int d = 0; d < pq_.subdim; ++d) {
                        value += q_sub[d] * word[d];
                    }
                } else {
                    for (int d = 0; d < pq_.subdim; ++d) {
                        const float diff = q_sub[d] - word[d];
                        value += diff * diff;
                    }
                }
                lookup[static_cast<size_t>(m) * pq_.pq_ksub + k] = value;
            }
        }

        for (int list_id : probe_lists[local_q]) {
            if (!used_lists[list_id]) {
                used_lists[list_id] = 1;
                ++unique_lists;
            }
            const int list_begin = index_.list_offsets[list_id];
            const int list_end = index_.list_offsets[list_id + 1];
            duplicated_scanned_vectors += static_cast<size_t>(list_end - list_begin);
            for (int pos = list_begin; pos < list_end; ++pos) {
                const uint8_t* codes = pq_.codes.data() + static_cast<size_t>(pos) * pq_.pq_m;
                float accum = 0.0f;
                for (int m = 0; m < pq_.pq_m; ++m) {
                    accum += lookup[static_cast<size_t>(m) * pq_.pq_ksub + codes[m]];
                }
                const float dist = (pq_.metric == "ip") ? (1.0f - accum) : accum;
                update_heap(batch_heaps[local_q], dist, static_cast<uint32_t>(index_.list_ids[pos]));
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

    const double overlap =
        1.0 - static_cast<double>(unique_lists) / static_cast<double>(real_batch * nprobe_);
    overlap_ratio_sum_ += overlap;
    unique_probe_lists_sum_ += static_cast<double>(unique_lists);
    ++stats_batches_;

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

void GPUIVFPQSearcher::update_heap(
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
