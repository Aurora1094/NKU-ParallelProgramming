#pragma once

#include <queue>
#include <utility>
#include <cstdint>
#include <cstddef>

#if defined(__aarch64__) || defined(__ARM_NEON)
#include <arm_neon.h>
#endif

inline float dot_product_simd_hsum(const float* a, const float* b, size_t vecdim) {
#if defined(__aarch64__) || defined(__ARM_NEON)
    float32x4_t sum0 = vdupq_n_f32(0.0f);
    float32x4_t sum1 = vdupq_n_f32(0.0f);
    float32x4_t sum2 = vdupq_n_f32(0.0f);
    float32x4_t sum3 = vdupq_n_f32(0.0f);

    size_t d = 0;

    for (; d + 16 <= vecdim; d += 16) {
        float32x4_t a0 = vld1q_f32(a + d);
        float32x4_t b0 = vld1q_f32(b + d);
        sum0 = vmlaq_f32(sum0, a0, b0);

        float32x4_t a1 = vld1q_f32(a + d + 4);
        float32x4_t b1 = vld1q_f32(b + d + 4);
        sum1 = vmlaq_f32(sum1, a1, b1);

        float32x4_t a2 = vld1q_f32(a + d + 8);
        float32x4_t b2 = vld1q_f32(b + d + 8);
        sum2 = vmlaq_f32(sum2, a2, b2);

        float32x4_t a3 = vld1q_f32(a + d + 12);
        float32x4_t b3 = vld1q_f32(b + d + 12);
        sum3 = vmlaq_f32(sum3, a3, b3);
    }

    float32x4_t sum_vec = vaddq_f32(vaddq_f32(sum0, sum1), vaddq_f32(sum2, sum3));

    for (; d + 4 <= vecdim; d += 4) {
        float32x4_t va = vld1q_f32(a + d);
        float32x4_t vb = vld1q_f32(b + d);
        sum_vec = vmlaq_f32(sum_vec, va, vb);
    }

#if defined(__aarch64__)
    float sum = vaddvq_f32(sum_vec);
#else
    float tmp[4];
    vst1q_f32(tmp, sum_vec);
    float sum = tmp[0] + tmp[1] + tmp[2] + tmp[3];
#endif

    for (; d < vecdim; ++d) {
        sum += a[d] * b[d];
    }

    return sum;
#else
    float sum0 = 0.0f;
    float sum1 = 0.0f;
    float sum2 = 0.0f;
    float sum3 = 0.0f;

    size_t d = 0;
    for (; d + 4 <= vecdim; d += 4) {
        sum0 += a[d] * b[d];
        sum1 += a[d + 1] * b[d + 1];
        sum2 += a[d + 2] * b[d + 2];
        sum3 += a[d + 3] * b[d + 3];
    }

    float sum = sum0 + sum1 + sum2 + sum3;

    for (; d < vecdim; ++d) {
        sum += a[d] * b[d];
    }

    return sum;
#endif
}

inline std::priority_queue<std::pair<float, uint32_t>>
flat_search_simd_hsum(float* base, float* query, size_t base_number, size_t vecdim, size_t k) {
    std::priority_queue<std::pair<float, uint32_t>> q;

    for (size_t i = 0; i < base_number; ++i) {
        const float* base_vec = base + i * vecdim;

        float dis = 1.0f - dot_product_simd_hsum(base_vec, query, vecdim);

        if (q.size() < k) {
            q.push({dis, static_cast<uint32_t>(i)});
        } else if (dis < q.top().first) {
            q.push({dis, static_cast<uint32_t>(i)});
            q.pop();
        }
    }

    return q;
}