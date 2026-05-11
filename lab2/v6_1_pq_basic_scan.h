#pragma once

#include <queue>
#include <vector>
#include <utility>
#include <cstdint>
#include <cstddef>
#include <cmath>
#include <algorithm>
#include <limits>
#include <functional>

#include "v4_simd_prefetch_flat_scan.h"

// ==========================================================
// v6_1: PQ-ADC 基础版 + v4 SIMD 精排
// 任务距离：inner product
// 原始距离：dis = 1 - dot
// PQ 粗排：score 越大越好
// ==========================================================

struct PQIndex {
    size_t M;             // 子空间数量
    size_t Ks;            // 每个子空间中心数量，建议 <= 256
    size_t subdim;        // 每个子空间维度
    size_t vecdim;        // 原始向量维度
    size_t base_number;   // base 数量

    // centroids[(m * Ks + c) * subdim + d]
    std::vector<float> centroids;

    // codes[i * M + m]，每个 base 向量在每个子空间的 centroid id
    std::vector<uint8_t> codes;
};

inline float dot_subvector_scalar_v6_1(
    const float* a,
    const float* b,
    size_t dim
) {
    float sum = 0.0f;
    for (size_t d = 0; d < dim; ++d) {
        sum += a[d] * b[d];
    }
    return sum;
}

inline size_t sample_base_index_v6_1(
    size_t sample_id,
    size_t sample_count,
    size_t base_number
) {
    if (sample_count <= 1) return 0;
    size_t idx = sample_id * base_number / sample_count;
    if (idx >= base_number) idx = base_number - 1;
    return idx;
}

inline PQIndex build_pq_index_basic(
    const float* base,
    size_t base_number,
    size_t vecdim,
    size_t M,
    size_t Ks,
    size_t train_samples,
    int kmeans_iters
) {
    PQIndex index;
    index.M = M;
    index.Ks = Ks;
    index.vecdim = vecdim;
    index.base_number = base_number;

    if (M == 0) {
        M = 1;
        index.M = 1;
    }

    if (Ks == 0) {
        Ks = 1;
        index.Ks = 1;
    }

    // code 使用 uint8_t 存储，所以 Ks 最大支持 256
    if (Ks > 256) {
        Ks = 256;
        index.Ks = 256;
    }

    if (vecdim % M != 0) {
        // 如果维度不能整除，退化为 M=1，保证不越界
        M = 1;
        index.M = 1;
    }

    index.subdim = vecdim / index.M;

    if (train_samples == 0 || train_samples > base_number) {
        train_samples = base_number;
    }

    if (kmeans_iters < 1) {
        kmeans_iters = 1;
    }

    const size_t subdim = index.subdim;

    index.centroids.assign(index.M * index.Ks * subdim, 0.0f);
    index.codes.assign(base_number * index.M, 0);

    // ======================================================
    // 1. 对每个子空间单独训练 codebook
    // ======================================================
    for (size_t m = 0; m < index.M; ++m) {
        float* centroids_m = index.centroids.data() + m * index.Ks * subdim;

        // ------------------------------
        // 1.1 初始化 centroid
        // 从采样子向量中均匀选 Ks 个作为初始中心
        // ------------------------------
        for (size_t c = 0; c < index.Ks; ++c) {
            size_t sample_id = c * train_samples / index.Ks;
            if (sample_id >= train_samples) sample_id = train_samples - 1;

            size_t base_id = sample_base_index_v6_1(
                sample_id,
                train_samples,
                base_number
            );

            const float* src =
                base + base_id * vecdim + m * subdim;

            float* dst =
                centroids_m + c * subdim;

            for (size_t d = 0; d < subdim; ++d) {
                dst[d] = src[d];
            }
        }

        std::vector<uint8_t> assign(train_samples, 0);
        std::vector<float> sums(index.Ks * subdim, 0.0f);
        std::vector<int> counts(index.Ks, 0);

        // ------------------------------
        // 1.2 简单 KMeans，inner product 最大作为最近中心
        // ------------------------------
        for (int iter = 0; iter < kmeans_iters; ++iter) {
            // 分配阶段
            for (size_t s = 0; s < train_samples; ++s) {
                size_t base_id = sample_base_index_v6_1(
                    s,
                    train_samples,
                    base_number
                );

                const float* x =
                    base + base_id * vecdim + m * subdim;

                float best_score = -std::numeric_limits<float>::infinity();
                uint8_t best_c = 0;

                for (size_t c = 0; c < index.Ks; ++c) {
                    const float* centroid =
                        centroids_m + c * subdim;

                    float score = dot_subvector_scalar_v6_1(
                        x,
                        centroid,
                        subdim
                    );

                    if (score > best_score) {
                        best_score = score;
                        best_c = static_cast<uint8_t>(c);
                    }
                }

                assign[s] = best_c;
            }

            // 清空更新缓存
            std::fill(sums.begin(), sums.end(), 0.0f);
            std::fill(counts.begin(), counts.end(), 0);

            // 累加每个 cluster 的样本
            for (size_t s = 0; s < train_samples; ++s) {
                size_t base_id = sample_base_index_v6_1(
                    s,
                    train_samples,
                    base_number
                );

                const float* x =
                    base + base_id * vecdim + m * subdim;

                size_t c = static_cast<size_t>(assign[s]);
                float* sum_c = sums.data() + c * subdim;

                for (size_t d = 0; d < subdim; ++d) {
                    sum_c[d] += x[d];
                }

                counts[c]++;
            }

            // 更新 centroid
            for (size_t c = 0; c < index.Ks; ++c) {
                if (counts[c] == 0) {
                    // 空 cluster 保留原中心
                    continue;
                }

                float* centroid =
                    centroids_m + c * subdim;

                const float* sum_c =
                    sums.data() + c * subdim;

                float inv_count = 1.0f / static_cast<float>(counts[c]);

                for (size_t d = 0; d < subdim; ++d) {
                    centroid[d] = sum_c[d] * inv_count;
                }
            }
        }
    }

    // ======================================================
    // 2. 对所有 base 向量编码
    // ======================================================
    for (size_t i = 0; i < base_number; ++i) {
        for (size_t m = 0; m < index.M; ++m) {
            const float* x =
                base + i * vecdim + m * index.subdim;

            const float* centroids_m =
                index.centroids.data() + m * index.Ks * index.subdim;

            float best_score = -std::numeric_limits<float>::infinity();
            uint8_t best_c = 0;

            for (size_t c = 0; c < index.Ks; ++c) {
                const float* centroid =
                    centroids_m + c * index.subdim;

                float score = dot_subvector_scalar_v6_1(
                    x,
                    centroid,
                    index.subdim
                );

                if (score > best_score) {
                    best_score = score;
                    best_c = static_cast<uint8_t>(c);
                }
            }

            index.codes[i * index.M + m] = best_c;
        }
    }

    return index;
}

inline void build_query_lut_v6_1(
    const PQIndex& index,
    const float* query,
    std::vector<float>& lut
) {
    lut.resize(index.M * index.Ks);

    for (size_t m = 0; m < index.M; ++m) {
        const float* query_sub =
            query + m * index.subdim;

        const float* centroids_m =
            index.centroids.data() + m * index.Ks * index.subdim;

        for (size_t c = 0; c < index.Ks; ++c) {
            const float* centroid =
                centroids_m + c * index.subdim;

            float score = dot_subvector_scalar_v6_1(
                query_sub,
                centroid,
                index.subdim
            );

            lut[m * index.Ks + c] = score;
        }
    }
}

inline std::priority_queue<std::pair<float, uint32_t>>
pq_search_rerank_v6_1(
    float* base,
    const PQIndex& index,
    float* query,
    size_t base_number,
    size_t vecdim,
    size_t k,
    size_t rerank_p
) {
    if (rerank_p < k) rerank_p = k;
    if (rerank_p > base_number) rerank_p = base_number;

    // ======================================================
    // 1. 构建 query 的 PQ LUT
    // LUT[m][c] = dot(query_sub_m, centroid[m][c])
    // ======================================================
    std::vector<float> lut;
    build_query_lut_v6_1(index, query, lut);

    // ======================================================
    // 2. ADC 粗排
    // score 越大越好，所以使用小根堆维护 top-p 最大 score
    // ======================================================
    using ScorePair = std::pair<float, uint32_t>;

    std::priority_queue<
        ScorePair,
        std::vector<ScorePair>,
        std::greater<ScorePair>
    > coarse_q;

    for (size_t i = 0; i < base_number; ++i) {
        float score = 0.0f;

        const uint8_t* code_i =
            index.codes.data() + i * index.M;

        for (size_t m = 0; m < index.M; ++m) {
            uint8_t cid = code_i[m];
            score += lut[m * index.Ks + static_cast<size_t>(cid)];
        }

        if (coarse_q.size() < rerank_p) {
            coarse_q.push({score, static_cast<uint32_t>(i)});
        } else if (score > coarse_q.top().first) {
            coarse_q.pop();
            coarse_q.push({score, static_cast<uint32_t>(i)});
        }
    }

    // ======================================================
    // 3. 对 top-p 候选用原始 float 向量精排
    // 精排仍然使用 v4 的 dot_product_simd_prefetch
    // ======================================================
    std::priority_queue<std::pair<float, uint32_t>> final_q;

    while (!coarse_q.empty()) {
        uint32_t id = coarse_q.top().second;
        coarse_q.pop();

        float dot = dot_product_simd_prefetch(
            base + static_cast<size_t>(id) * vecdim,
            query,
            vecdim
        );

        float dis = 1.0f - dot;

        if (final_q.size() < k) {
            final_q.push({dis, id});
        } else if (dis < final_q.top().first) {
            final_q.push({dis, id});
            final_q.pop();
        }
    }

    return final_q;
}