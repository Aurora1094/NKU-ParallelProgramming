#pragma once

#include <queue>
#include <vector>
#include <utility>
#include <cstdint>
#include <cstddef>
#include <cmath>
#include <algorithm>
#include <limits>

#include "v4_simd_prefetch_flat_scan.h"

struct SQQuantizer {
    float min_val;
    float max_val;
    float scale;
    float inv_scale;
};

inline SQQuantizer build_sq_quantizer_global(const float* base, size_t base_number, size_t vecdim) {
    SQQuantizer q;
    q.min_val = std::numeric_limits<float>::max();
    q.max_val = std::numeric_limits<float>::lowest();

    size_t total = base_number * vecdim;
    for (size_t i = 0; i < total; ++i) {
        q.min_val = std::min(q.min_val, base[i]);
        q.max_val = std::max(q.max_val, base[i]);
    }

    float range = q.max_val - q.min_val;
    if (range < 1e-12f) {
        q.scale = 1.0f;
        q.inv_scale = 1.0f;
    } else {
        q.scale = range / 255.0f;
        q.inv_scale = 255.0f / range;
    }

    return q;
}

inline uint8_t quantize_one_uint8(float x, const SQQuantizer& q) {
    int v = static_cast<int>(std::round((x - q.min_val) * q.inv_scale));
    if (v < 0) v = 0;
    if (v > 255) v = 255;
    return static_cast<uint8_t>(v);
}

inline void quantize_base_uint8_with_sum(
    const float* base,
    size_t base_number,
    size_t vecdim,
    const SQQuantizer& q,
    std::vector<uint8_t>& base_sq,
    std::vector<int>& base_sq_sum
) {
    base_sq.resize(base_number * vecdim);
    base_sq_sum.assign(base_number, 0);

    for (size_t i = 0; i < base_number; ++i) {
        int sum = 0;
        for (size_t d = 0; d < vecdim; ++d) {
            uint8_t v = quantize_one_uint8(base[i * vecdim + d], q);
            base_sq[i * vecdim + d] = v;
            sum += static_cast<int>(v);
        }
        base_sq_sum[i] = sum;
    }
}

inline void quantize_query_uint8_v5_2(
    const float* query,
    size_t vecdim,
    const SQQuantizer& q,
    std::vector<uint8_t>& query_sq
) {
    query_sq.resize(vecdim);
    for (size_t d = 0; d < vecdim; ++d) {
        query_sq[d] = quantize_one_uint8(query[d], q);
    }
}

inline int uint8_dot_product_scalar_v5_2(const uint8_t* a, const uint8_t* b, size_t vecdim) {
    int sum = 0;
    for (size_t d = 0; d < vecdim; ++d) {
        sum += static_cast<int>(a[d]) * static_cast<int>(b[d]);
    }
    return sum;
}

inline std::priority_queue<std::pair<float, uint32_t>>
sq_search_corrected_rerank_v5_2(
    float* base,
    const uint8_t* base_sq,
    const int* base_sq_sum,
    float* query,
    const SQQuantizer& quantizer,
    size_t base_number,
    size_t vecdim,
    size_t k,
    size_t rerank_p
) {
    if (rerank_p < k) rerank_p = k;
    if (rerank_p > base_number) rerank_p = base_number;

    std::vector<uint8_t> query_sq;
    quantize_query_uint8_v5_2(query, vecdim, quantizer, query_sq);

    const float scale2 = quantizer.scale * quantizer.scale;
    const float min_scale = quantizer.min_val * quantizer.scale;

    std::priority_queue<std::pair<float, uint32_t>> coarse_q;

    for (size_t i = 0; i < base_number; ++i) {
        const uint8_t* base_vec_sq = base_sq + i * vecdim;

        int dot_uint8 = uint8_dot_product_scalar_v5_2(base_vec_sq, query_sq.data(), vecdim);

        float score = scale2 * static_cast<float>(dot_uint8)
                    + min_scale * static_cast<float>(base_sq_sum[i]);

        float dis_sq = -score;

        if (coarse_q.size() < rerank_p) {
            coarse_q.push({dis_sq, static_cast<uint32_t>(i)});
        } else if (dis_sq < coarse_q.top().first) {
            coarse_q.push({dis_sq, static_cast<uint32_t>(i)});
            coarse_q.pop();
        }
    }

    std::priority_queue<std::pair<float, uint32_t>> final_q;

    while (!coarse_q.empty()) {
        uint32_t id = coarse_q.top().second;
        coarse_q.pop();

        float dis = 1.0f - dot_product_simd_prefetch(
            base + static_cast<size_t>(id) * vecdim,
            query,
            vecdim
        );

        if (final_q.size() < k) {
            final_q.push({dis, id});
        } else if (dis < final_q.top().first) {
            final_q.push({dis, id});
            final_q.pop();
        }
    }

    return final_q;
}