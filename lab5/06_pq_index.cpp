#include "06_pq_index.h"

#include <algorithm>
#include <cstdlib>
#include <iostream>
#include <limits>
#include <vector>

namespace {

float l2_distance(const float* a, const float* b, int dim)
{
    float sum = 0.0f;
    for (int i = 0; i < dim; ++i) {
        const float diff = a[i] - b[i];
        sum += diff * diff;
    }
    return sum;
}

} // namespace

void PQIndex::build(
    const IVFIndex& ivf,
    int requested_pq_m,
    int requested_pq_ksub,
    int pq_iters,
    const std::string& requested_metric
)
{
    if (ivf.dim <= 0 || ivf.list_vectors.empty()) {
        std::cerr << "Invalid IVF index for PQ build" << std::endl;
        std::exit(1);
    }
    if (requested_pq_m <= 0 || requested_pq_ksub <= 0) {
        std::cerr << "Invalid PQ parameters" << std::endl;
        std::exit(1);
    }
    if (requested_pq_ksub > 256) {
        std::cerr << "pq_ksub must be <= 256 because PQ codes use uint8_t" << std::endl;
        std::exit(1);
    }
    if (requested_metric != "ip" && requested_metric != "l2") {
        std::cerr << "pq_metric must be ip or l2" << std::endl;
        std::exit(1);
    }
    if (ivf.dim % requested_pq_m != 0) {
        std::cerr << "D must be divisible by pq_m: D=" << ivf.dim
                  << " pq_m=" << requested_pq_m << std::endl;
        std::exit(1);
    }

    dim = ivf.dim;
    pq_m = requested_pq_m;
    pq_ksub = requested_pq_ksub;
    subdim = dim / pq_m;
    metric = requested_metric;

    const int total_vectors = static_cast<int>(ivf.list_ids.size());
    const int sample_count = std::min(total_vectors, 20000);
    std::vector<int> samples(sample_count);
    for (int i = 0; i < sample_count; ++i) {
        samples[i] = (sample_count == 1)
            ? 0
            : static_cast<int>((static_cast<long long>(i) * (total_vectors - 1)) / (sample_count - 1));
    }

    codebooks.assign(static_cast<size_t>(pq_m) * pq_ksub * subdim, 0.0f);
    std::vector<int> assignment(sample_count, 0);

    for (int m = 0; m < pq_m; ++m) {
        float* sub_codebook = codebooks.data() + static_cast<size_t>(m) * pq_ksub * subdim;

        for (int k = 0; k < pq_ksub; ++k) {
            const int sample_idx = samples[static_cast<size_t>(k) * sample_count / pq_ksub];
            const float* src = ivf.list_vectors.data() + static_cast<size_t>(sample_idx) * dim + m * subdim;
            std::copy(src, src + subdim, sub_codebook + static_cast<size_t>(k) * subdim);
        }

        for (int iter = 0; iter < pq_iters; ++iter) {
            std::vector<float> sums(static_cast<size_t>(pq_ksub) * subdim, 0.0f);
            std::vector<int> counts(pq_ksub, 0);

            for (int si = 0; si < sample_count; ++si) {
                const int vec_idx = samples[si];
                const float* vec = ivf.list_vectors.data() + static_cast<size_t>(vec_idx) * dim + m * subdim;
                int best = 0;
                float best_dist = std::numeric_limits<float>::infinity();
                for (int k = 0; k < pq_ksub; ++k) {
                    const float dist = l2_distance(vec, sub_codebook + static_cast<size_t>(k) * subdim, subdim);
                    if (dist < best_dist) {
                        best_dist = dist;
                        best = k;
                    }
                }
                assignment[si] = best;
                ++counts[best];
                float* sum = sums.data() + static_cast<size_t>(best) * subdim;
                for (int d = 0; d < subdim; ++d) {
                    sum[d] += vec[d];
                }
            }

            for (int k = 0; k < pq_ksub; ++k) {
                if (counts[k] == 0) {
                    continue;
                }
                float* centroid = sub_codebook + static_cast<size_t>(k) * subdim;
                const float* sum = sums.data() + static_cast<size_t>(k) * subdim;
                const float inv = 1.0f / static_cast<float>(counts[k]);
                for (int d = 0; d < subdim; ++d) {
                    centroid[d] = sum[d] * inv;
                }
            }
        }
    }

    codes.assign(static_cast<size_t>(total_vectors) * pq_m, 0);
    for (int i = 0; i < total_vectors; ++i) {
        const float* vec = ivf.list_vectors.data() + static_cast<size_t>(i) * dim;
        for (int m = 0; m < pq_m; ++m) {
            const float* sub_vec = vec + m * subdim;
            const float* sub_codebook = codebooks.data() + static_cast<size_t>(m) * pq_ksub * subdim;
            int best = 0;
            float best_dist = std::numeric_limits<float>::infinity();
            for (int k = 0; k < pq_ksub; ++k) {
                const float dist = l2_distance(sub_vec, sub_codebook + static_cast<size_t>(k) * subdim, subdim);
                if (dist < best_dist) {
                    best_dist = dist;
                    best = k;
                }
            }
            codes[static_cast<size_t>(i) * pq_m + m] = static_cast<uint8_t>(best);
        }
    }

    std::cerr << "PQ index built: pq_m=" << pq_m
              << " pq_ksub=" << pq_ksub
              << " pq_iters=" << pq_iters
              << " metric=" << metric
              << " train_samples=" << sample_count << std::endl;
}
