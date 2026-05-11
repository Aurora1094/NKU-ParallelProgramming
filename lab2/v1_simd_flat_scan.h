#pragma once

#include <queue>
#include <utility>
#include <cstdint>
#include <cstddef>

#if defined(__aarch64__) || defined(__ARM_NEON)
#include <arm_neon.h>
#endif

inline float dot_product_simd(const float* a, const float* b, size_t vecdim) {
#if defined(__aarch64__) || defined(__ARM_NEON)
    float32x4_t sum_vec = vdupq_n_f32(0.0f);

    size_t d = 0;
    for (; d + 4 <= vecdim; d += 4) {
        float32x4_t va = vld1q_f32(a + d);
        float32x4_t vb = vld1q_f32(b + d);
        sum_vec = vmlaq_f32(sum_vec, va, vb);
    }

    float tmp[4];
    vst1q_f32(tmp, sum_vec);

    float sum = tmp[0] + tmp[1] + tmp[2] + tmp[3];

    for (; d < vecdim; ++d) {
        sum += a[d] * b[d];
    }

    return sum;
#else
    float sum = 0.0f;
    for (size_t d = 0; d < vecdim; ++d) {
        sum += a[d] * b[d];
    }
    return sum;
#endif
}

inline std::priority_queue<std::pair<float, uint32_t>>
flat_search_simd(float* base, float* query, size_t base_number, size_t vecdim, size_t k) {
    std::priority_queue<std::pair<float, uint32_t>> q;

    for (size_t i = 0; i < base_number; ++i) {
        const float* base_vec = base + i * vecdim;

        // DEEP100K 使用 inner product 距离：dis = 1 - dot(base, query)
        float dis = 1.0f - dot_product_simd(base_vec, query, vecdim);

        if (q.size() < k) {
            q.push({dis, static_cast<uint32_t>(i)});
        } else if (dis < q.top().first) {
            q.push({dis, static_cast<uint32_t>(i)});
            q.pop();
        }
    }

    return q;
}