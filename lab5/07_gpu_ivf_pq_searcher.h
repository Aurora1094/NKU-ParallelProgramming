#pragma once

#include "01_common.cuh"
#include "01_search_config.h"
#include "04_ivf_index.h"
#include "06_pq_index.h"

#include <cstddef>
#include <cstdint>
#include <queue>
#include <utility>
#include <vector>

class GPUIVFPQSearcher {
public:
    GPUIVFPQSearcher(
        const IVFIndex& index,
        const PQIndex& pq,
        const float* queries,
        size_t query_number,
        size_t dim,
        size_t k,
        size_t batch_size,
        size_t nprobe,
        SearchMode mode
    );

    ~GPUIVFPQSearcher();

    GPUIVFPQSearcher(const GPUIVFPQSearcher&) = delete;
    GPUIVFPQSearcher& operator=(const GPUIVFPQSearcher&) = delete;

    std::priority_queue<std::pair<float, uint32_t>> search(size_t query_id);
    void set_batch_stats_config(const BatchStatsConfig& config);
    void print_stats() const;
    double average_overlap_ratio() const;
    double average_unique_probe_lists() const;

private:
    void build_query_order();
    std::vector<int> cpu_top_probe_lists(size_t query_id, int count) const;
    void compute_batch(size_t batch_id);
    void update_heap(std::priority_queue<std::pair<float, uint32_t>>& heap, float dist, uint32_t id) const;

    const IVFIndex& index_;
    const PQIndex& pq_;
    const float* queries_;
    size_t query_number_;
    size_t dim_;
    size_t k_;
    size_t batch_size_;
    size_t nprobe_;
    SearchMode mode_;

    cublasHandle_t handle_;
    float* d_centroids_;
    float* d_queries_;
    float* d_centroid_scores_;

    std::vector<int> grouped_to_original_;
    std::vector<int> original_to_position_;
    std::vector<char> batch_computed_;
    std::vector<std::vector<uint32_t>> cached_ids_;
    std::vector<std::vector<float>> cached_dists_;

    std::vector<float> host_batch_queries_;
    std::vector<float> host_centroid_scores_;

    double overlap_ratio_sum_;
    double unique_probe_lists_sum_;
    size_t stats_batches_;
    BatchStatsConfig batch_stats_;
};
