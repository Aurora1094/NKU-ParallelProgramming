#pragma once

#include "01_common.cuh"
#include "01_search_config.h"

#include <cstddef>
#include <cstdint>
#include <queue>
#include <utility>
#include <vector>

class GPUFlatSearcher {
public:
    GPUFlatSearcher(
        const float* base,
        const float* queries,
        size_t base_number,
        size_t query_number,
        size_t dim,
        size_t k,
        size_t batch_size,
        bool use_gpu_topk
    );

    ~GPUFlatSearcher();

    GPUFlatSearcher(const GPUFlatSearcher&) = delete;
    GPUFlatSearcher& operator=(const GPUFlatSearcher&) = delete;

    std::priority_queue<std::pair<float, uint32_t>> search(size_t query_id);
    void set_batch_stats_config(const BatchStatsConfig& config);

private:
    void compute_batch(size_t batch_id);
    void compute_cpu_topk(size_t real_batch);
    void compute_gpu_topk(size_t real_batch);
    void maybe_debug_gemm(size_t batch_start, size_t real_batch);

    const float* base_;
    const float* queries_;
    size_t base_number_;
    size_t query_number_;
    size_t dim_;
    size_t k_;
    size_t batch_size_;
    bool use_gpu_topk_;

    cublasHandle_t handle_;
    float* d_base_;
    float* d_queries_;
    float* d_scores_;
    int* d_topk_ids_;
    float* d_topk_dists_;

    bool has_cached_batch_;
    size_t cached_batch_id_;
    size_t cached_batch_start_;
    size_t cached_batch_count_;

    std::vector<float> host_scores_;
    std::vector<int> host_topk_ids_;
    std::vector<float> host_topk_dists_;
    std::vector<std::priority_queue<std::pair<float, uint32_t>>> cached_results_;
    BatchStatsConfig batch_stats_;
};
