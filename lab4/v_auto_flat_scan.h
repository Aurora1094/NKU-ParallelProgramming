#pragma once

#include <queue>
#include <vector>
#include <utility>
#include <cstdint>
#include <cstddef>

// ==========================================================
// v_auto: compiler auto-vectorized flat scan
// 不使用 arm_neon.h intrinsic。
// 目的：测试普通 C++ 标量循环在 -O2 / -O3 下由编译器自动向量化后的性能。
// ==========================================================

inline float dot_product_auto_vectorized(
    const float* a,
    const float* b,
    size_t vecdim
) {
    float sum = 0.0f;

    // 普通 C++ for 循环，交给编译器自动向量化。
    // 不使用手写 NEON intrinsic。
    for (size_t d = 0; d < vecdim; ++d) {
        sum += a[d] * b[d];
    }

    return sum;
}

inline std::priority_queue<std::pair<float, uint32_t>>
flat_search_auto_vectorized(
    float* base,
    float* query,
    size_t base_number,
    size_t vecdim,
    size_t k
) {
    std::priority_queue<std::pair<float, uint32_t>> q;

    for (size_t i = 0; i < base_number; ++i) {
        float dot = dot_product_auto_vectorized(
            base + i * vecdim,
            query,
            vecdim
        );

        float dis = 1.0f - dot;

        if (q.size() < k) {
            q.push({dis, static_cast<uint32_t>(i)});
        } else if (dis < q.top().first) {
            q.push({dis, static_cast<uint32_t>(i)});
            q.pop();
        }
    }

    return q;
}