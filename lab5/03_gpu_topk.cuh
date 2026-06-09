#pragma once

void launch_gpu_topk(
    const float* d_scores,
    int B,
    int N,
    int K,
    int* d_topk_ids,
    float* d_topk_dists
);
