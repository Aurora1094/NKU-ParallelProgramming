#ifndef V7_IVF_SIMD_SCAN_H
#define V7_IVF_SIMD_SCAN_H

#include <vector>
#include <queue>
#include <utility>
#include <cstdint>
#include <cstddef>
#include <limits>
#include <algorithm>
#include <iostream>

#include "v4_simd_prefetch_flat_scan.h"

struct IVFIndex {
    size_t nlist;
    size_t vecdim;
    size_t base_number;

    // centroids[c * vecdim + d]
    std::vector<float> centroids;

    // inverted_lists[c] stores base vector ids assigned to centroid c
    std::vector<std::vector<uint32_t>> inverted_lists;
};

inline size_t sample_base_index_ivf(
    size_t sample_id,
    size_t train_samples,
    size_t base_number
) {
    if (train_samples <= 1) {
        return 0;
    }

    size_t idx = sample_id * base_number / train_samples;
    if (idx >= base_number) {
        idx = base_number - 1;
    }

    return idx;
}

inline IVFIndex build_ivf_index_basic(
    const float* base,
    size_t base_number,
    size_t vecdim,
    size_t nlist,
    size_t train_samples,
    int kmeans_iters
) {
    IVFIndex index;
    index.nlist = nlist;
    index.vecdim = vecdim;
    index.base_number = base_number;

    if (index.nlist < 1) {
        index.nlist = 1;
    }

    if (index.nlist > base_number) {
        index.nlist = base_number;
    }

    if (train_samples == 0 || train_samples > base_number) {
        train_samples = base_number;
    }

    if (kmeans_iters < 1) {
        kmeans_iters = 1;
    }

    index.centroids.assign(index.nlist * vecdim, 0.0f);
    index.inverted_lists.assign(index.nlist, std::vector<uint32_t>());

    // 初始化 centroid：从 base 中均匀采样 nlist 个点
    for (size_t c = 0; c < index.nlist; ++c) {
        size_t sample_id = c * train_samples / index.nlist;
        if (sample_id >= train_samples) {
            sample_id = train_samples - 1;
        }

        size_t base_id = sample_base_index_ivf(
            sample_id,
            train_samples,
            base_number
        );

        const float* src = base + base_id * vecdim;
        float* dst = index.centroids.data() + c * vecdim;

        for (size_t d = 0; d < vecdim; ++d) {
            dst[d] = src[d];
        }
    }

    std::vector<uint32_t> assign(train_samples, 0);
    std::vector<float> sums(index.nlist * vecdim, 0.0f);
    std::vector<int> counts(index.nlist, 0);

    // KMeans：inner product 最大作为最近中心
    for (int iter = 0; iter < kmeans_iters; ++iter) {
        for (size_t s = 0; s < train_samples; ++s) {
            size_t base_id = sample_base_index_ivf(
                s,
                train_samples,
                base_number
            );

            const float* x = base + base_id * vecdim;

            float best_score = -std::numeric_limits<float>::infinity();
            uint32_t best_c = 0;

            for (size_t c = 0; c < index.nlist; ++c) {
                const float* centroid = index.centroids.data() + c * vecdim;

                float score = dot_product_simd_prefetch(
                    x,
                    centroid,
                    vecdim
                );

                if (score > best_score) {
                    best_score = score;
                    best_c = static_cast<uint32_t>(c);
                }
            }

            assign[s] = best_c;
        }

        std::fill(sums.begin(), sums.end(), 0.0f);
        std::fill(counts.begin(), counts.end(), 0);

        for (size_t s = 0; s < train_samples; ++s) {
            size_t base_id = sample_base_index_ivf(
                s,
                train_samples,
                base_number
            );

            const float* x = base + base_id * vecdim;
            size_t c = static_cast<size_t>(assign[s]);

            float* sum_c = sums.data() + c * vecdim;

            for (size_t d = 0; d < vecdim; ++d) {
                sum_c[d] += x[d];
            }

            counts[c]++;
        }

        for (size_t c = 0; c < index.nlist; ++c) {
            if (counts[c] == 0) {
                continue;
            }

            float* centroid = index.centroids.data() + c * vecdim;
            const float* sum_c = sums.data() + c * vecdim;

            float inv_count = 1.0f / static_cast<float>(counts[c]);

            for (size_t d = 0; d < vecdim; ++d) {
                centroid[d] = sum_c[d] * inv_count;
            }
        }
    }

    // 建 inverted lists：每个 base 分配到最近 centroid
    for (size_t i = 0; i < base_number; ++i) {
        const float* x = base + i * vecdim;

        float best_score = -std::numeric_limits<float>::infinity();
        uint32_t best_c = 0;

        for (size_t c = 0; c < index.nlist; ++c) {
            const float* centroid = index.centroids.data() + c * vecdim;

            float score = dot_product_simd_prefetch(
                x,
                centroid,
                vecdim
            );

            if (score > best_score) {
                best_score = score;
                best_c = static_cast<uint32_t>(c);
            }
        }

        index.inverted_lists[best_c].push_back(static_cast<uint32_t>(i));
    }

    return index;
}

inline std::priority_queue<std::pair<float, uint32_t>>
ivf_search_simd_rerank(
    float* base,
    const IVFIndex& index,
    float* query,
    size_t base_number,
    size_t vecdim,
    size_t k,
    size_t nprobe
) {
    if (nprobe < 1) {
        nprobe = 1;
    }

    if (nprobe > index.nlist) {
        nprobe = index.nlist;
    }

    using ScorePair = std::pair<float, uint32_t>;

    // 1. 粗排：计算 query 到所有 centroid 的 inner product
    // score 越大越好，用小根堆维护 top-nprobe centroid
    std::priority_queue<
        ScorePair,
        std::vector<ScorePair>,
        std::greater<ScorePair>
    > centroid_q;

    for (size_t c = 0; c < index.nlist; ++c) {
        const float* centroid = index.centroids.data() + c * vecdim;

        float score = dot_product_simd_prefetch(
            query,
            centroid,
            vecdim
        );

        if (centroid_q.size() < nprobe) {
            centroid_q.push({score, static_cast<uint32_t>(c)});
        } else if (score > centroid_q.top().first) {
            centroid_q.pop();
            centroid_q.push({score, static_cast<uint32_t>(c)});
        }
    }

    std::vector<uint32_t> probe_lists;
    probe_lists.reserve(nprobe);

    while (!centroid_q.empty()) {
        probe_lists.push_back(centroid_q.top().second);
        centroid_q.pop();
    }

    // 2. 精排：扫描 nprobe 个 inverted list 中的 base 向量
    std::priority_queue<std::pair<float, uint32_t>> final_q;

    for (uint32_t cid : probe_lists) {
        const std::vector<uint32_t>& ids = index.inverted_lists[cid];

        for (uint32_t id : ids) {
            if (static_cast<size_t>(id) >= base_number) {
                continue;
            }

            const float* base_vec =
                base + static_cast<size_t>(id) * vecdim;

            float dot = dot_product_simd_prefetch(
                base_vec,
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
    }

    return final_q;
}

inline void print_ivf_list_stats(const IVFIndex& index) {
    size_t min_len = std::numeric_limits<size_t>::max();
    size_t max_len = 0;
    size_t total = 0;

    for (size_t c = 0; c < index.nlist; ++c) {
        size_t len = index.inverted_lists[c].size();
        min_len = std::min(min_len, len);
        max_len = std::max(max_len, len);
        total += len;
    }

    double avg_len =
        static_cast<double>(total) / static_cast<double>(index.nlist);

    std::cout << "ivf list min length: " << min_len << "\n";
    std::cout << "ivf list max length: " << max_len << "\n";
    std::cout << "ivf list avg length: " << avg_len << "\n";
}

#endif