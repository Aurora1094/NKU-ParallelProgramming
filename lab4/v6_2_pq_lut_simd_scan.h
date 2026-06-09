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
#include <pthread.h>
#include <iostream>
#include <omp.h>
#if defined(__aarch64__) || defined(__ARM_NEON)
#include <arm_neon.h>
#endif

#include "v4_simd_prefetch_flat_scan.h"

// ==========================================================
// v6_2: PQ-ADC + SIMD LUT 构建 + v4 SIMD 精排
// 任务距离：inner product
// 原始距离：dis = 1 - dot
// PQ 粗排：score 越大越好
// 相比 v6_1：只把 query LUT 构建中的子向量 dot 改成 SIMD
// ==========================================================

struct PQIndex {
    size_t M;
    size_t Ks;
    size_t subdim;
    size_t vecdim;
    size_t base_number;

    // centroids[(m * Ks + c) * subdim + d]
    std::vector<float> centroids;

    // codes[i * M + m]
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

// v6_2 新增：用于 LUT 构建的 SIMD 子向量内积
inline float dot_subvector_simd_v6_2(
    const float* a,
    const float* b,
    size_t dim
) {
#if defined(__aarch64__) || defined(__ARM_NEON)
    float32x4_t sum_vec = vdupq_n_f32(0.0f);

    size_t d = 0;
    for (; d + 4 <= dim; d += 4) {
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

    for (; d < dim; ++d) {
        sum += a[d] * b[d];
    }

    return sum;
#else
    return dot_subvector_scalar_v6_1(a, b, dim);
#endif
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

    if (Ks > 256) {
        Ks = 256;
        index.Ks = 256;
    }

    if (vecdim % M != 0) {
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

        // 初始化 centroid：从采样子向量中均匀选 Ks 个
        for (size_t c = 0; c < index.Ks; ++c) {
            size_t sample_id = c * train_samples / index.Ks;
            if (sample_id >= train_samples) sample_id = train_samples - 1;

            size_t base_id = sample_base_index_v6_1(
                sample_id,
                train_samples,
                base_number
            );

            const float* src = base + base_id * vecdim + m * subdim;
            float* dst = centroids_m + c * subdim;

            for (size_t d = 0; d < subdim; ++d) {
                dst[d] = src[d];
            }
        }

        std::vector<uint8_t> assign(train_samples, 0);
        std::vector<float> sums(index.Ks * subdim, 0.0f);
        std::vector<int> counts(index.Ks, 0);

        // 简单 KMeans，inner product 最大作为最近中心
        for (int iter = 0; iter < kmeans_iters; ++iter) {
            // 分配阶段
            for (size_t s = 0; s < train_samples; ++s) {
                size_t base_id = sample_base_index_v6_1(
                    s,
                    train_samples,
                    base_number
                );

                const float* x = base + base_id * vecdim + m * subdim;

                float best_score = -std::numeric_limits<float>::infinity();
                uint8_t best_c = 0;

                for (size_t c = 0; c < index.Ks; ++c) {
                    const float* centroid = centroids_m + c * subdim;

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

            std::fill(sums.begin(), sums.end(), 0.0f);
            std::fill(counts.begin(), counts.end(), 0);

            // 累加每个 cluster 的样本
            for (size_t s = 0; s < train_samples; ++s) {
                size_t base_id = sample_base_index_v6_1(
                    s,
                    train_samples,
                    base_number
                );

                const float* x = base + base_id * vecdim + m * subdim;

                size_t c = static_cast<size_t>(assign[s]);
                float* sum_c = sums.data() + c * subdim;

                for (size_t d = 0; d < subdim; ++d) {
                    sum_c[d] += x[d];
                }

                counts[c]++;
            }

            // 更新 centroid，空 cluster 保留原中心
            for (size_t c = 0; c < index.Ks; ++c) {
                if (counts[c] == 0) {
                    continue;
                }

                float* centroid = centroids_m + c * subdim;
                const float* sum_c = sums.data() + c * subdim;

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
            const float* x = base + i * vecdim + m * index.subdim;
            const float* centroids_m =
                index.centroids.data() + m * index.Ks * index.subdim;

            float best_score = -std::numeric_limits<float>::infinity();
            uint8_t best_c = 0;

            for (size_t c = 0; c < index.Ks; ++c) {
                const float* centroid = centroids_m + c * index.subdim;

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

// ==========================================================
// v6_2_pthread_build: PQ index build with Pthread
// 1) 子空间级并行训练 codebook
// 2) base 向量级并行编码 PQ codes
// ==========================================================

struct PQTrainThreadArgV6_2 {
    const float* base;
    PQIndex* index;

    size_t base_number;
    size_t vecdim;
    size_t train_samples;
    int kmeans_iters;

    int tid;
    int num_threads;
    int processed_subspaces;
};

inline void* pq_train_worker_v6_2(void* arg) {
    PQTrainThreadArgV6_2* a = static_cast<PQTrainThreadArgV6_2*>(arg);

    PQIndex& index = *(a->index);
    const size_t subdim = index.subdim;

    int cnt = 0;

    // 子空间级并行：线程 tid 处理 m = tid, tid + num_threads, ...
    for (size_t m = static_cast<size_t>(a->tid);
         m < index.M;
         m += static_cast<size_t>(a->num_threads)) {

        float* centroids_m =
            index.centroids.data() + m * index.Ks * subdim;

        // 初始化 centroid：从采样子向量中均匀选 Ks 个
        for (size_t c = 0; c < index.Ks; ++c) {
            size_t sample_id = c * a->train_samples / index.Ks;
            if (sample_id >= a->train_samples) {
                sample_id = a->train_samples - 1;
            }

            size_t base_id = sample_base_index_v6_1(
                sample_id,
                a->train_samples,
                a->base_number
            );

            const float* src = a->base + base_id * a->vecdim + m * subdim;
            float* dst = centroids_m + c * subdim;

            for (size_t d = 0; d < subdim; ++d) {
                dst[d] = src[d];
            }
        }

        std::vector<uint8_t> assign(a->train_samples, 0);
        std::vector<float> sums(index.Ks * subdim, 0.0f);
        std::vector<int> counts(index.Ks, 0);

        // 简单 KMeans，inner product 最大作为最近中心
        for (int iter = 0; iter < a->kmeans_iters; ++iter) {
            // 分配阶段
            for (size_t s = 0; s < a->train_samples; ++s) {
                size_t base_id = sample_base_index_v6_1(
                    s,
                    a->train_samples,
                    a->base_number
                );

                const float* x = a->base + base_id * a->vecdim + m * subdim;

                float best_score = -std::numeric_limits<float>::infinity();
                uint8_t best_c = 0;

                for (size_t c = 0; c < index.Ks; ++c) {
                    const float* centroid = centroids_m + c * subdim;

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

            std::fill(sums.begin(), sums.end(), 0.0f);
            std::fill(counts.begin(), counts.end(), 0);

            // 累加每个 cluster 的样本
            for (size_t s = 0; s < a->train_samples; ++s) {
                size_t base_id = sample_base_index_v6_1(
                    s,
                    a->train_samples,
                    a->base_number
                );

                const float* x = a->base + base_id * a->vecdim + m * subdim;

                size_t c = static_cast<size_t>(assign[s]);
                float* sum_c = sums.data() + c * subdim;

                for (size_t d = 0; d < subdim; ++d) {
                    sum_c[d] += x[d];
                }

                counts[c]++;
            }

            // 更新 centroid，空 cluster 保留原中心
            for (size_t c = 0; c < index.Ks; ++c) {
                if (counts[c] == 0) {
                    continue;
                }

                float* centroid = centroids_m + c * subdim;
                const float* sum_c = sums.data() + c * subdim;

                float inv_count = 1.0f / static_cast<float>(counts[c]);

                for (size_t d = 0; d < subdim; ++d) {
                    centroid[d] = sum_c[d] * inv_count;
                }
            }
        }

        ++cnt;
    }

    a->processed_subspaces = cnt;
    return nullptr;
}

struct PQEncodeThreadArgV6_2 {
    const float* base;
    PQIndex* index;

    size_t base_number;
    size_t vecdim;

    int tid;
    int num_threads;
    int processed_vectors;
};

inline void* pq_encode_worker_v6_2(void* arg) {
    PQEncodeThreadArgV6_2* a = static_cast<PQEncodeThreadArgV6_2*>(arg);

    PQIndex& index = *(a->index);

    int cnt = 0;

    // base 向量级并行：线程 tid 处理 i = tid, tid + num_threads, ...
    for (size_t i = static_cast<size_t>(a->tid);
         i < a->base_number;
         i += static_cast<size_t>(a->num_threads)) {

        for (size_t m = 0; m < index.M; ++m) {
            const float* x =
                a->base + i * a->vecdim + m * index.subdim;

            const float* centroids_m =
                index.centroids.data() + m * index.Ks * index.subdim;

            float best_score = -std::numeric_limits<float>::infinity();
            uint8_t best_c = 0;

            for (size_t c = 0; c < index.Ks; ++c) {
                const float* centroid = centroids_m + c * index.subdim;

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

        ++cnt;
    }

    a->processed_vectors = cnt;
    return nullptr;
}

inline PQIndex build_pq_index_pthread_v6_2(
    const float* base,
    size_t base_number,
    size_t vecdim,
    size_t M,
    size_t Ks,
    size_t train_samples,
    int kmeans_iters,
    int num_threads
) {
    PQIndex index;
    index.M = M;
    index.Ks = Ks;
    index.vecdim = vecdim;
    index.base_number = base_number;

    if (index.M == 0) {
        index.M = 1;
    }

    if (index.Ks == 0) {
        index.Ks = 1;
    }

    if (index.Ks > 256) {
        index.Ks = 256;
    }

    if (vecdim % index.M != 0) {
        index.M = 1;
    }

    index.subdim = vecdim / index.M;

    if (train_samples == 0 || train_samples > base_number) {
        train_samples = base_number;
    }

    if (kmeans_iters < 1) {
        kmeans_iters = 1;
    }

   int build_threads = num_threads;

    if (build_threads < 1) {
        build_threads = 1;
    }

    int train_threads_num = build_threads;
    if (train_threads_num > static_cast<int>(index.M)) {
        train_threads_num = static_cast<int>(index.M);
    }

    int encode_threads_num = build_threads;

    const size_t subdim = index.subdim;

    index.centroids.assign(index.M * index.Ks * subdim, 0.0f);
    index.codes.assign(base_number * index.M, 0);

    // ======================================================
    // 1. Pthread 子空间级并行训练 codebook
    // ======================================================
    std::vector<pthread_t> train_threads(train_threads_num);
    std::vector<PQTrainThreadArgV6_2> train_args(train_threads_num);

    for (int t = 0; t < train_threads_num; ++t) {    
    train_args[t].base = base;
    train_args[t].index = &index;
    train_args[t].base_number = base_number;
    train_args[t].vecdim = vecdim;
    train_args[t].train_samples = train_samples;
    train_args[t].kmeans_iters = kmeans_iters;
    train_args[t].tid = t;
    train_args[t].num_threads = train_threads_num;
    train_args[t].processed_subspaces = 0;

    pthread_create(
        &train_threads[t],
        nullptr,
        pq_train_worker_v6_2,
        &train_args[t]
    );
    }

    for (int t = 0; t < train_threads_num; ++t) {    
    pthread_join(train_threads[t], nullptr);
    }

    // std::cout << "pq build train threads: " << train_threads_num << "\n";
    //     for (int t = 0; t < train_threads_num; ++t) {
    //     std::cout << "pq train thread " << t
    //               << " processed subspaces: "
    //               << train_args[t].processed_subspaces << "\n";
    // }

    // ======================================================
    // 2. Pthread base 向量级并行编码
    // ======================================================
    // int encode_threads_num = num_threads;
    // if (encode_threads_num < 1) {
    //     encode_threads_num = 1;
    // }

    std::vector<pthread_t> encode_threads(encode_threads_num);
    std::vector<PQEncodeThreadArgV6_2> encode_args(encode_threads_num);

    for (int t = 0; t < encode_threads_num; ++t) {
        encode_args[t].base = base;
        encode_args[t].index = &index;
        encode_args[t].base_number = base_number;
        encode_args[t].vecdim = vecdim;
        encode_args[t].tid = t;
        encode_args[t].num_threads = encode_threads_num;
        encode_args[t].processed_vectors = 0;

        pthread_create(
            &encode_threads[t],
            nullptr,
            pq_encode_worker_v6_2,
            &encode_args[t]
        );
    }

    for (int t = 0; t < encode_threads_num; ++t) {
        pthread_join(encode_threads[t], nullptr);
    }

    // std::cout << "pq encode threads: " << encode_threads_num << "\n";
    // for (int t = 0; t < encode_threads_num; ++t) {
    //     std::cout << "pq encode thread " << t
    //               << " processed base vectors: "
    //               << encode_args[t].processed_vectors << "\n";
    // }

    return index;
}

inline PQIndex build_pq_index_openmp_v6_2(
    const float* base,
    size_t base_number,
    size_t vecdim,
    size_t M,
    size_t Ks,
    size_t train_samples,
    int kmeans_iters,
    int num_threads
) {
    PQIndex index;
    index.M = M;
    index.Ks = Ks;
    index.vecdim = vecdim;
    index.base_number = base_number;

    if (index.M == 0) {
        index.M = 1;
    }

    if (index.Ks == 0) {
        index.Ks = 1;
    }

    if (index.Ks > 256) {
        index.Ks = 256;
    }

    if (vecdim % index.M != 0) {
        index.M = 1;
    }

    index.subdim = vecdim / index.M;

    if (train_samples == 0 || train_samples > base_number) {
        train_samples = base_number;
    }

    if (kmeans_iters < 1) {
        kmeans_iters = 1;
    }

    int build_threads = num_threads;
    if (build_threads < 1) {
        build_threads = 1;
    }

    int train_threads_num = build_threads;
    if (train_threads_num > static_cast<int>(index.M)) {
        train_threads_num = static_cast<int>(index.M);
    }

    int encode_threads_num = build_threads;

    const size_t subdim = index.subdim;

    index.centroids.assign(index.M * index.Ks * subdim, 0.0f);
    index.codes.assign(base_number * index.M, 0);

    // ======================================================
    // 1. OpenMP 子空间级并行训练 codebook
    // ======================================================
    std::vector<PQTrainThreadArgV6_2> train_args(train_threads_num);

    for (int t = 0; t < train_threads_num; ++t) {
        train_args[t].base = base;
        train_args[t].index = &index;
        train_args[t].base_number = base_number;
        train_args[t].vecdim = vecdim;
        train_args[t].train_samples = train_samples;
        train_args[t].kmeans_iters = kmeans_iters;
        train_args[t].tid = t;
        train_args[t].num_threads = train_threads_num;
        train_args[t].processed_subspaces = 0;
    }

#pragma omp parallel num_threads(train_threads_num)
    {
        int t = omp_get_thread_num();
        pq_train_worker_v6_2(&train_args[t]);
    }

    // std::cout << "pq build train openmp threads: " << train_threads_num << "\n";
    // for (int t = 0; t < train_threads_num; ++t) {
    //     std::cout << "pq train omp thread " << t
    //               << " processed subspaces: "
    //               << train_args[t].processed_subspaces << "\n";
    // }

    // ======================================================
    // 2. OpenMP base 向量级并行编码
    // ======================================================
    std::vector<PQEncodeThreadArgV6_2> encode_args(encode_threads_num);

    for (int t = 0; t < encode_threads_num; ++t) {
        encode_args[t].base = base;
        encode_args[t].index = &index;
        encode_args[t].base_number = base_number;
        encode_args[t].vecdim = vecdim;
        encode_args[t].tid = t;
        encode_args[t].num_threads = encode_threads_num;
        encode_args[t].processed_vectors = 0;
    }

#pragma omp parallel num_threads(encode_threads_num)
    {
        int t = omp_get_thread_num();
        pq_encode_worker_v6_2(&encode_args[t]);
    }

    // std::cout << "pq encode openmp threads: " << encode_threads_num << "\n";
    // for (int t = 0; t < encode_threads_num; ++t) {
    //     std::cout << "pq encode omp thread " << t
    //               << " processed base vectors: "
    //               << encode_args[t].processed_vectors << "\n";
    // }

    return index;
}

// v6_2：LUT 构建使用 SIMD dot
inline void build_query_lut_v6_2(
    const PQIndex& index,
    const float* query,
    std::vector<float>& lut
) {
    lut.resize(index.M * index.Ks);

    for (size_t m = 0; m < index.M; ++m) {
        const float* query_sub = query + m * index.subdim;
        const float* centroids_m =
            index.centroids.data() + m * index.Ks * index.subdim;

        for (size_t c = 0; c < index.Ks; ++c) {
            const float* centroid = centroids_m + c * index.subdim;

            float score = dot_subvector_simd_v6_2(
                query_sub,
                centroid,
                index.subdim
            );

            lut[m * index.Ks + c] = score;
        }
    }
}

struct PQLutThreadArgV6_2 {
    const PQIndex* index;
    const float* query;
    float* lut_data;

    int tid;
    int num_threads;

    int processed_lut_entries;
};

inline void* pq_lut_worker_v6_2(void* arg) {
    PQLutThreadArgV6_2* a = static_cast<PQLutThreadArgV6_2*>(arg);

    const PQIndex& index = *(a->index);

    const size_t total_entries = index.M * index.Ks;

    int cnt = 0;

    for (size_t idx = static_cast<size_t>(a->tid);
         idx < total_entries;
         idx += static_cast<size_t>(a->num_threads)) {

        size_t m = idx / index.Ks;
        size_t c = idx % index.Ks;

        const float* query_sub = a->query + m * index.subdim;

        const float* centroid =
            index.centroids.data()
            + (m * index.Ks + c) * index.subdim;

        float score = dot_subvector_simd_v6_2(
            query_sub,
            centroid,
            index.subdim
        );

        a->lut_data[m * index.Ks + c] = score;

        ++cnt;
    }

    a->processed_lut_entries = cnt;

    return nullptr;
}

inline void build_query_lut_pthread_v6_2(
    const PQIndex& index,
    const float* query,
    std::vector<float>& lut,
    int lut_threads
) {
    lut.resize(index.M * index.Ks);

    if (lut_threads < 1) {
        lut_threads = 1;
    }

    const size_t total_entries = index.M * index.Ks;

    if (static_cast<size_t>(lut_threads) > total_entries) {
        lut_threads = static_cast<int>(total_entries);
    }

    std::vector<pthread_t> threads(lut_threads);
    std::vector<PQLutThreadArgV6_2> args(lut_threads);

    for (int t = 0; t < lut_threads; ++t) {
        args[t].index = &index;
        args[t].query = query;
        args[t].lut_data = lut.data();
        args[t].tid = t;
        args[t].num_threads = lut_threads;
        args[t].processed_lut_entries = 0;

        pthread_create(
            &threads[t],
            nullptr,
            pq_lut_worker_v6_2,
            &args[t]
        );
    }

    for (int t = 0; t < lut_threads; ++t) {
        pthread_join(threads[t], nullptr);
    }

    static bool printed_lut_thread_info = false;
    if (!printed_lut_thread_info) {
        // std::cout << "pq lut threads: " << lut_threads << "\n";
        // for (int t = 0; t < lut_threads; ++t) {
        //     std::cout << "pq lut thread " << t
        //               << " processed lut entries: "
        //               << args[t].processed_lut_entries << "\n";
        // }
        printed_lut_thread_info = true;
    }
}

inline std::priority_queue<std::pair<float, uint32_t>>
pq_search_rerank_v6_2(
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

    // 1. 构建 query 的 PQ LUT
    std::vector<float> lut;
    build_query_lut_v6_2(index, query, lut);

    // 2. ADC 粗排
    // score 越大越好，用小根堆维护 top-p 最大 score
    using ScorePair = std::pair<float, uint32_t>;

    std::priority_queue<
        ScorePair,
        std::vector<ScorePair>,
        std::greater<ScorePair>
    > coarse_q;

    for (size_t i = 0; i < base_number; ++i) {
        float score = 0.0f;

        const uint8_t* code_i = index.codes.data() + i * index.M;

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

    // 3. 对 top-p 候选用原始 float 向量精排
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

inline std::priority_queue<std::pair<float, uint32_t>>
pq_search_rerank_v6_2_lut_pthread(
    float* base,
    const PQIndex& index,
    float* query,
    size_t base_number,
    size_t vecdim,
    size_t k,
    size_t rerank_p,
    int lut_threads
) {
    if (rerank_p < k) rerank_p = k;
    if (rerank_p > base_number) rerank_p = base_number;

    // 1. Pthread 构建 query 的 PQ LUT
    std::vector<float> lut;
    build_query_lut_pthread_v6_2(index, query, lut, lut_threads);

    // 2. ADC 粗排
    using ScorePair = std::pair<float, uint32_t>;

    std::priority_queue<
        ScorePair,
        std::vector<ScorePair>,
        std::greater<ScorePair>
    > coarse_q;

    for (size_t i = 0; i < base_number; ++i) {
        float score = 0.0f;

        const uint8_t* code_i = index.codes.data() + i * index.M;

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

    // 3. 对 top-p 候选用原始 float 向量精排
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