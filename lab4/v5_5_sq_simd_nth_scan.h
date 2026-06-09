#pragma once

#include <queue>
#include <vector>
#include <utility>
#include <cstdint>
#include <cstddef>
#include <cmath>
#include <algorithm>
#include <limits>

#if defined(__aarch64__) || defined(__ARM_NEON)
#include <arm_neon.h>
#endif

#include "v4_simd_prefetch_flat_scan.h"

struct SQQuantizer {
    float min_val;
    float max_val;
    float scale;
    float inv_scale;
};

inline SQQuantizer build_sq_quantizer_global(
    const float* base,
    size_t base_number,
    size_t vecdim
) {
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

inline void quantize_query_uint8_v5_5(
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

inline int uint8_dot_product_scalar_v5_5(
    const uint8_t* a,
    const uint8_t* b,
    size_t vecdim
) {
    int sum = 0;
    for (size_t d = 0; d < vecdim; ++d) {
        sum += static_cast<int>(a[d]) * static_cast<int>(b[d]);
    }
    return sum;
}

inline int uint8_dot_product_neon_v5_5(
    const uint8_t* a,
    const uint8_t* b,
    size_t vecdim
) {
#if defined(__aarch64__) || defined(__ARM_NEON)
    uint32x4_t sum0 = vdupq_n_u32(0);
    uint32x4_t sum1 = vdupq_n_u32(0);
    uint32x4_t sum2 = vdupq_n_u32(0);
    uint32x4_t sum3 = vdupq_n_u32(0);

    size_t d = 0;

    for (; d + 16 <= vecdim; d += 16) {
        uint8x16_t va = vld1q_u8(a + d);
        uint8x16_t vb = vld1q_u8(b + d);

        uint16x8_t prod_low = vmull_u8(vget_low_u8(va), vget_low_u8(vb));
        uint16x8_t prod_high = vmull_u8(vget_high_u8(va), vget_high_u8(vb));

        sum0 = vaddw_u16(sum0, vget_low_u16(prod_low));
        sum1 = vaddw_u16(sum1, vget_high_u16(prod_low));
        sum2 = vaddw_u16(sum2, vget_low_u16(prod_high));
        sum3 = vaddw_u16(sum3, vget_high_u16(prod_high));
    }

    uint32x4_t sum_vec = vaddq_u32(
        vaddq_u32(sum0, sum1),
        vaddq_u32(sum2, sum3)
    );

#if defined(__aarch64__)
    uint32_t sum = vaddvq_u32(sum_vec);
#else
    uint32_t tmp[4];
    vst1q_u32(tmp, sum_vec);
    uint32_t sum = tmp[0] + tmp[1] + tmp[2] + tmp[3];
#endif

    for (; d < vecdim; ++d) {
        sum += static_cast<uint32_t>(a[d]) * static_cast<uint32_t>(b[d]);
    }

    return static_cast<int>(sum);
#else
    return uint8_dot_product_scalar_v5_5(a, b, vecdim);
#endif
}

inline std::priority_queue<std::pair<float, uint32_t>>
sq_search_simd_nth_rerank_v5_5(
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
    quantize_query_uint8_v5_5(query, vecdim, quantizer, query_sq);

    const float scale2 = quantizer.scale * quantizer.scale;
    const float min_scale = quantizer.min_val * quantizer.scale;

    // v5_5 核心变化：
    // 不再边扫描边用 priority_queue 维护 top-p；
    // 而是先保存所有 score，再用 nth_element 一次性选出 top-p。
    std::vector<std::pair<float, uint32_t>> scores;
    scores.reserve(base_number);

    for (size_t i = 0; i < base_number; ++i) {
        const uint8_t* base_vec_sq = base_sq + i * vecdim;

        int dot_uint8 = uint8_dot_product_neon_v5_5(
            base_vec_sq,
            query_sq.data(),
            vecdim
        );

        float score = scale2 * static_cast<float>(dot_uint8)
                    + min_scale * static_cast<float>(base_sq_sum[i]);

        // score 越大，表示近似 inner product 越大，越应该进入候选集
        scores.push_back({score, static_cast<uint32_t>(i)});
    }

    auto cmp_score_desc = [](
        const std::pair<float, uint32_t>& a,
        const std::pair<float, uint32_t>& b
    ) {
        return a.first > b.first;
    };

    if (rerank_p < scores.size()) {
        std::nth_element(
            scores.begin(),
            scores.begin() + rerank_p,
            scores.end(),
            cmp_score_desc
        );
    }

    std::priority_queue<std::pair<float, uint32_t>> final_q;

    for (size_t idx = 0; idx < rerank_p; ++idx) {
        uint32_t id = scores[idx].second;

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