#include "02_gpu_flat_searcher.h"

#include "03_gpu_topk.cuh"

#include <algorithm>
#include <chrono>
#include <cmath>
#include <cstdlib>
#include <iostream>
#include <string>

GPUFlatSearcher::GPUFlatSearcher(
    const float* base,
    const float* queries,
    size_t base_number,
    size_t query_number,
    size_t dim,
    size_t k,
    size_t batch_size,
    bool use_gpu_topk
) :
    base_(base),
    queries_(queries),
    base_number_(base_number),
    query_number_(query_number),
    dim_(dim),
    k_(k),
    batch_size_(batch_size),
    use_gpu_topk_(use_gpu_topk),
    handle_(nullptr),
    d_base_(nullptr),
    d_queries_(nullptr),
    d_scores_(nullptr),
    d_topk_ids_(nullptr),
    d_topk_dists_(nullptr),
    has_cached_batch_(false),
    cached_batch_id_(0),
    cached_batch_start_(0),
    cached_batch_count_(0)
{
    if (base_ == nullptr || queries_ == nullptr) {
        std::cerr << "GPUFlatSearcher received null data pointer" << std::endl;
        std::exit(1);
    }
    if (base_number_ == 0 || query_number_ == 0 || dim_ == 0 || batch_size_ == 0 || k_ == 0) {
        std::cerr << "Invalid flat search dimensions" << std::endl;
        std::exit(1);
    }

    CUBLAS_CHECK(cublasCreate(&handle_));

    const size_t base_bytes = base_number_ * dim_ * sizeof(float);
    const size_t query_bytes = batch_size_ * dim_ * sizeof(float);
    const size_t score_bytes = batch_size_ * base_number_ * sizeof(float);

    CUDA_CHECK(cudaMalloc(reinterpret_cast<void**>(&d_base_), base_bytes));
    CUDA_CHECK(cudaMalloc(reinterpret_cast<void**>(&d_queries_), query_bytes));
    CUDA_CHECK(cudaMalloc(reinterpret_cast<void**>(&d_scores_), score_bytes));
    CUDA_CHECK(cudaMemcpy(d_base_, base_, base_bytes, cudaMemcpyHostToDevice));

    host_scores_.resize(batch_size_ * base_number_);
    cached_results_.resize(batch_size_);

    if (use_gpu_topk_) {
        const size_t topk_count = batch_size_ * k_;
        CUDA_CHECK(cudaMalloc(reinterpret_cast<void**>(&d_topk_ids_), topk_count * sizeof(int)));
        CUDA_CHECK(cudaMalloc(reinterpret_cast<void**>(&d_topk_dists_), topk_count * sizeof(float)));
        host_topk_ids_.resize(topk_count);
        host_topk_dists_.resize(topk_count);
    }
}

GPUFlatSearcher::~GPUFlatSearcher()
{
    if (d_topk_dists_ != nullptr) {
        cudaFree(d_topk_dists_);
    }
    if (d_topk_ids_ != nullptr) {
        cudaFree(d_topk_ids_);
    }
    if (d_scores_ != nullptr) {
        cudaFree(d_scores_);
    }
    if (d_queries_ != nullptr) {
        cudaFree(d_queries_);
    }
    if (d_base_ != nullptr) {
        cudaFree(d_base_);
    }
    if (handle_ != nullptr) {
        cublasDestroy(handle_);
    }
}

std::priority_queue<std::pair<float, uint32_t>> GPUFlatSearcher::search(size_t query_id)
{
    if (query_id >= query_number_) {
        std::cerr << "query_id out of range: " << query_id << std::endl;
        std::exit(1);
    }

    const size_t batch_id = query_id / batch_size_;
    if (!has_cached_batch_ || cached_batch_id_ != batch_id) {
        compute_batch(batch_id);
    }

    const size_t offset = query_id - cached_batch_start_;
    if (offset >= cached_batch_count_) {
        std::cerr << "cached batch offset out of range" << std::endl;
        std::exit(1);
    }
    return cached_results_[offset];
}

void GPUFlatSearcher::set_batch_stats_config(const BatchStatsConfig& config)
{
    batch_stats_ = config;
}

void GPUFlatSearcher::compute_batch(size_t batch_id)
{
    const auto stats_begin = std::chrono::high_resolution_clock::now();
    const size_t batch_start = batch_id * batch_size_;
    const size_t real_batch = std::min(batch_size_, query_number_ - batch_start);
    const size_t query_bytes = real_batch * dim_ * sizeof(float);

    CUDA_CHECK(cudaMemcpy(
        d_queries_,
        queries_ + batch_start * dim_,
        query_bytes,
        cudaMemcpyHostToDevice
    ));

    const float alpha = 1.0f;
    const float beta = 0.0f;
    const int n = checked_int(base_number_, "base_number");
    const int b = checked_int(real_batch, "batch_size");
    const int d = checked_int(dim_, "dim");

    // Verified layout: row-major scores[B][N], computed as scores^T = base * queries^T.
    CUBLAS_CHECK(cublasSgemm(
        handle_,
        CUBLAS_OP_T,
        CUBLAS_OP_N,
        n,
        b,
        d,
        &alpha,
        d_base_,
        d,
        d_queries_,
        d,
        &beta,
        d_scores_,
        n
    ));

    maybe_debug_gemm(batch_start, real_batch);

    if (use_gpu_topk_) {
        compute_gpu_topk(real_batch);
    } else {
        const size_t score_bytes = real_batch * base_number_ * sizeof(float);
        CUDA_CHECK(cudaMemcpy(host_scores_.data(), d_scores_, score_bytes, cudaMemcpyDeviceToHost));
        compute_cpu_topk(real_batch);
    }

    cached_batch_id_ = batch_id;
    cached_batch_start_ = batch_start;
    cached_batch_count_ = real_batch;
    has_cached_batch_ = true;

    const auto stats_end = std::chrono::high_resolution_clock::now();
    BatchStatsRow row;
    row.batch_id = batch_id;
    row.real_batch = real_batch;
    row.latency_batch_us = static_cast<double>(
        std::chrono::duration_cast<std::chrono::microseconds>(stats_end - stats_begin).count()
    );
    row.estimated_scanned_vectors = std::to_string(base_number_ * real_batch);
    append_batch_stats_row(batch_stats_, row);
}

void GPUFlatSearcher::compute_cpu_topk(size_t real_batch)
{
    const size_t effective_k = std::min(k_, base_number_);
    cached_results_.assign(real_batch, std::priority_queue<std::pair<float, uint32_t>>());

    for (size_t q = 0; q < real_batch; ++q) {
        auto& heap = cached_results_[q];
        const float* scores = host_scores_.data() + q * base_number_;

        for (size_t id = 0; id < base_number_; ++id) {
            const float dist = 1.0f - scores[id];
            const auto item = std::make_pair(dist, static_cast<uint32_t>(id));
            if (heap.size() < effective_k) {
                heap.push(item);
            } else if (dist < heap.top().first) {
                heap.pop();
                heap.push(item);
            }
        }
    }
}

void GPUFlatSearcher::compute_gpu_topk(size_t real_batch)
{
    const size_t effective_k = std::min(k_, base_number_);
    launch_gpu_topk(
        d_scores_,
        checked_int(real_batch, "real_batch"),
        checked_int(base_number_, "base_number"),
        checked_int(effective_k, "k"),
        d_topk_ids_,
        d_topk_dists_
    );

    const size_t topk_count = real_batch * effective_k;
    CUDA_CHECK(cudaMemcpy(host_topk_ids_.data(), d_topk_ids_, topk_count * sizeof(int), cudaMemcpyDeviceToHost));
    CUDA_CHECK(cudaMemcpy(host_topk_dists_.data(), d_topk_dists_, topk_count * sizeof(float), cudaMemcpyDeviceToHost));

    cached_results_.assign(real_batch, std::priority_queue<std::pair<float, uint32_t>>());
    for (size_t q = 0; q < real_batch; ++q) {
        auto& heap = cached_results_[q];
        for (size_t j = 0; j < effective_k; ++j) {
            const size_t off = q * effective_k + j;
            heap.push(std::make_pair(host_topk_dists_[off], static_cast<uint32_t>(host_topk_ids_[off])));
        }
    }
}

void GPUFlatSearcher::maybe_debug_gemm(size_t batch_start, size_t real_batch)
{
    if (real_batch == 0 || std::getenv("ANN_DEBUG_GEMM") == nullptr) {
        return;
    }

    const size_t score_bytes = real_batch * base_number_ * sizeof(float);
    CUDA_CHECK(cudaMemcpy(host_scores_.data(), d_scores_, score_bytes, cudaMemcpyDeviceToHost));

    const size_t ids[5] = {
        0,
        base_number_ / 4,
        base_number_ / 2,
        (base_number_ * 3) / 4,
        base_number_ - 1
    };

    const float* query = queries_ + batch_start * dim_;
    std::cerr << "GEMM layout check for query " << batch_start << std::endl;
    for (size_t id : ids) {
        float cpu_score = 0.0f;
        const float* base_vec = base_ + id * dim_;
        for (size_t j = 0; j < dim_; ++j) {
            cpu_score += query[j] * base_vec[j];
        }
        const float gpu_score = host_scores_[id];
        std::cerr << "  id=" << id
                  << " cpu=" << cpu_score
                  << " gpu=" << gpu_score
                  << " abs_err=" << std::abs(cpu_score - gpu_score)
                  << std::endl;
    }
}
