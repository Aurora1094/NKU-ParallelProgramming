#pragma once

#include <vector>

class IVFIndex {
public:
    int nlist = 0;
    int dim = 0;

    std::vector<float> centroids;
    std::vector<int> list_offsets;
    std::vector<int> list_ids;
    std::vector<float> list_vectors;

    void build(
        const float* base,
        int N,
        int D,
        int nlist,
        int kmeans_iters
    );
};
