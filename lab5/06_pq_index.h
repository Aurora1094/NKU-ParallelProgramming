#pragma once

#include "04_ivf_index.h"

#include <cstdint>
#include <string>
#include <vector>

class PQIndex {
public:
    int dim = 0;
    int pq_m = 0;
    int pq_ksub = 0;
    int subdim = 0;
    std::string metric = "ip";

    std::vector<float> codebooks; // pq_m * pq_ksub * subdim
    std::vector<uint8_t> codes;   // list-order vector index * pq_m

    void build(
        const IVFIndex& ivf,
        int pq_m,
        int pq_ksub,
        int pq_iters,
        const std::string& metric
    );
};
