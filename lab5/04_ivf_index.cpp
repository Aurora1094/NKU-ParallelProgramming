#include "04_ivf_index.h"

#include <algorithm>
#include <cmath>
#include <cstdlib>
#include <iostream>
#include <limits>
#include <numeric>
#include <vector>

namespace {

float dot_product(const float* a, const float* b, int dim)
{
    float sum = 0.0f;
    for (int i = 0; i < dim; ++i) {
        sum += a[i] * b[i];
    }
    return sum;
}

void normalize_vector(float* v, int dim)
{
    double norm2 = 0.0;
    for (int i = 0; i < dim; ++i) {
        norm2 += static_cast<double>(v[i]) * static_cast<double>(v[i]);
    }
    const double norm = std::sqrt(norm2);
    if (norm <= 1e-12) {
        return;
    }
    const float inv_norm = static_cast<float>(1.0 / norm);
    for (int i = 0; i < dim; ++i) {
        v[i] *= inv_norm;
    }
}

void assign_to_centroids(
    const float* base,
    int N,
    int D,
    const std::vector<float>& centroids,
    int nlist,
    std::vector<int>& assignments
)
{
#pragma omp parallel for schedule(static)
    for (int i = 0; i < N; ++i) {
        const float* vec = base + static_cast<size_t>(i) * D;
        int best = 0;
        float best_score = -std::numeric_limits<float>::infinity();
        for (int c = 0; c < nlist; ++c) {
            const float score = dot_product(vec, centroids.data() + static_cast<size_t>(c) * D, D);
            if (score > best_score) {
                best_score = score;
                best = c;
            }
        }
        assignments[i] = best;
    }
}

} // namespace

void IVFIndex::build(
    const float* base,
    int N,
    int D,
    int requested_nlist,
    int kmeans_iters
)
{
    if (base == nullptr || N <= 0 || D <= 0 || requested_nlist <= 0) {
        std::cerr << "Invalid IVF build inputs" << std::endl;
        std::exit(1);
    }

    nlist = std::min(requested_nlist, N);
    dim = D;
    centroids.assign(static_cast<size_t>(nlist) * D, 0.0f);

    for (int c = 0; c < nlist; ++c) {
        const int src = static_cast<int>((static_cast<long long>(c) * N) / nlist);
        std::copy(
            base + static_cast<size_t>(src) * D,
            base + static_cast<size_t>(src + 1) * D,
            centroids.begin() + static_cast<size_t>(c) * D
        );
        normalize_vector(centroids.data() + static_cast<size_t>(c) * D, D);
    }

    std::vector<int> assignments(N, 0);
    for (int iter = 0; iter < kmeans_iters; ++iter) {
        assign_to_centroids(base, N, D, centroids, nlist, assignments);

        std::vector<float> sums(static_cast<size_t>(nlist) * D, 0.0f);
        std::vector<int> counts(nlist, 0);

        for (int i = 0; i < N; ++i) {
            const int c = assignments[i];
            ++counts[c];
            const float* vec = base + static_cast<size_t>(i) * D;
            float* sum = sums.data() + static_cast<size_t>(c) * D;
            for (int j = 0; j < D; ++j) {
                sum[j] += vec[j];
            }
        }

        for (int c = 0; c < nlist; ++c) {
            if (counts[c] == 0) {
                continue;
            }
            float* centroid = centroids.data() + static_cast<size_t>(c) * D;
            const float* sum = sums.data() + static_cast<size_t>(c) * D;
            const float inv_count = 1.0f / static_cast<float>(counts[c]);
            for (int j = 0; j < D; ++j) {
                centroid[j] = sum[j] * inv_count;
            }
            normalize_vector(centroid, D);
        }
    }

    assign_to_centroids(base, N, D, centroids, nlist, assignments);

    std::vector<int> counts(nlist, 0);
    for (int i = 0; i < N; ++i) {
        ++counts[assignments[i]];
    }

    list_offsets.assign(nlist + 1, 0);
    for (int c = 0; c < nlist; ++c) {
        list_offsets[c + 1] = list_offsets[c] + counts[c];
    }

    list_ids.assign(N, 0);
    list_vectors.assign(static_cast<size_t>(N) * D, 0.0f);
    std::vector<int> cursor = list_offsets;

    for (int i = 0; i < N; ++i) {
        const int c = assignments[i];
        const int pos = cursor[c]++;
        list_ids[pos] = i;
        std::copy(
            base + static_cast<size_t>(i) * D,
            base + static_cast<size_t>(i + 1) * D,
            list_vectors.begin() + static_cast<size_t>(pos) * D
        );
    }

    std::cerr << "IVF index built: nlist=" << nlist
              << " dim=" << dim
              << " vectors=" << N << std::endl;
}
