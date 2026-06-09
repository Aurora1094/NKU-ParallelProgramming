#include "03_gpu_topk.cuh"

#include "01_common.cuh"

#include <iostream>

namespace {

constexpr int kTopKThreads = 256;
constexpr int kMaxK = 32;

__global__ void gpu_topk_naive_kernel(
    const float* scores,
    int B,
    int N,
    int K,
    int* out_ids,
    float* out_dists
)
{
    const int q = blockIdx.x;
    if (q >= B) {
        return;
    }

    __shared__ float s_val[kTopKThreads];
    __shared__ int s_idx[kTopKThreads];
    __shared__ int selected[kMaxK];

    if (threadIdx.x < kMaxK) {
        selected[threadIdx.x] = -1;
    }
    __syncthreads();

    const float* row = scores + static_cast<size_t>(q) * N;

    for (int round = 0; round < K; ++round) {
        float best_dist = 3.402823466e+38F;
        int best_idx = -1;

        for (int idx = threadIdx.x; idx < N; idx += blockDim.x) {
            bool used = false;
            for (int s = 0; s < round; ++s) {
                if (selected[s] == idx) {
                    used = true;
                    break;
                }
            }
            if (used) {
                continue;
            }

            const float dist = 1.0f - row[idx];
            if (dist < best_dist || (dist == best_dist && idx < best_idx)) {
                best_dist = dist;
                best_idx = idx;
            }
        }

        s_val[threadIdx.x] = best_dist;
        s_idx[threadIdx.x] = best_idx;
        __syncthreads();

        for (int stride = blockDim.x / 2; stride > 0; stride >>= 1) {
            if (threadIdx.x < stride) {
                const float other_val = s_val[threadIdx.x + stride];
                const int other_idx = s_idx[threadIdx.x + stride];
                const bool take_other =
                    other_idx >= 0 &&
                    (other_val < s_val[threadIdx.x] ||
                     (other_val == s_val[threadIdx.x] &&
                      (s_idx[threadIdx.x] < 0 || other_idx < s_idx[threadIdx.x])));
                if (take_other) {
                    s_val[threadIdx.x] = other_val;
                    s_idx[threadIdx.x] = other_idx;
                }
            }
            __syncthreads();
        }

        if (threadIdx.x == 0) {
            const int out_offset = q * K + round;
            selected[round] = s_idx[0];
            out_ids[out_offset] = s_idx[0];
            out_dists[out_offset] = s_val[0];
        }
        __syncthreads();
    }
}

} // namespace

void launch_gpu_topk(
    const float* d_scores,
    int B,
    int N,
    int K,
    int* d_topk_ids,
    float* d_topk_dists
)
{
    if (K > kMaxK) {
        std::cerr << "GPU Top-K supports K <= " << kMaxK << ", got " << K << std::endl;
        std::exit(1);
    }
    if (B <= 0 || N <= 0 || K <= 0) {
        std::cerr << "Invalid GPU Top-K dimensions" << std::endl;
        std::exit(1);
    }

    gpu_topk_naive_kernel<<<B, kTopKThreads>>>(d_scores, B, N, K, d_topk_ids, d_topk_dists);
    CUDA_CHECK(cudaGetLastError());
}
