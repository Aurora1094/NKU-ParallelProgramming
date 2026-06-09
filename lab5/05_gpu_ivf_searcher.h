#pragma once

#include "01_common.cuh"
#include "01_search_config.h"
#include "04_ivf_index.h"

#include <cstddef>
#include <cstdint>
#include <queue>
#include <utility>
#include <vector>

class GPUIVFSearcher {
public:
    GPUIVFSearcher(
        const IVFIndex& index,
        const float* queries,
        size_t query_number,
        size_t dim,
        size_t k,
        size_t batch_size,
        size_t nprobe,
        SearchMode mode
    );

    ~GPUIVFSearcher();

    GPUIVFSearcher(const GPUIVFSearcher&) = delete;
    GPUIVFSearcher& operator=(const GPUIVFSearcher&) = delete;

    std::priority_queue<std::pair<float, uint32_t>> search(size_t query_id);
    void print_stats() const;
    void set_batch_stats_config(const BatchStatsConfig& config);
    double average_overlap_ratio() const;
    double average_unique_probe_lists() const;

private:
    void build_query_order();
    std::vector<int> cpu_top_probe_lists(size_t query_id, int count) const;
    void compute_batch(size_t batch_id);
    void select_batch_probe_lists(size_t real_batch, std::vector<std::vector<int>>& probe_lists) const;
    void update_heap(
        std::priority_queue<std::pair<float, uint32_t>>& heap,
        float dist,
        uint32_t id
    ) const;

    const IVFIndex& index_;
    const float* queries_;
    size_t query_number_;
    size_t dim_;
    size_t k_;
    size_t batch_size_;
    size_t nprobe_;
    SearchMode mode_;

    cublasHandle_t handle_;
    float* d_centroids_;
    float* d_list_vectors_;
    float* d_queries_;
    float* d_centroid_scores_;
    float* d_sub_queries_;
    float* d_list_scores_;

    size_t max_list_size_;

    std::vector<int> grouped_to_original_;
    std::vector<int> original_to_position_;

    std::vector<char> batch_computed_;
    std::vector<std::vector<uint32_t>> cached_ids_;
    std::vector<std::vector<float>> cached_dists_;

    std::vector<float> host_batch_queries_;
    std::vector<float> host_centroid_scores_;
    std::vector<float> host_sub_queries_;
    std::vector<float> host_list_scores_;

    double overlap_ratio_sum_;
    double unique_probe_lists_sum_;
    size_t stats_batches_;
    size_t compute_batch_calls_;
    BatchStatsConfig batch_stats_;
};
