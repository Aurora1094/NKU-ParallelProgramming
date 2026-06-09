#pragma once

#include <cublas_v2.h>
#include <cuda_runtime.h>

#include <cstdlib>
#include <iostream>
#include <limits>

#define CUDA_CHECK(call)                                                        \
    do {                                                                        \
        cudaError_t err__ = (call);                                             \
        if (err__ != cudaSuccess) {                                             \
            std::cerr << "CUDA error: " << cudaGetErrorString(err__)            \
                      << " at " << __FILE__ << ":" << __LINE__ << std::endl;   \
            std::exit(1);                                                       \
        }                                                                       \
    } while (0)

#define CUBLAS_CHECK(call)                                                      \
    do {                                                                        \
        cublasStatus_t stat__ = (call);                                         \
        if (stat__ != CUBLAS_STATUS_SUCCESS) {                                  \
            std::cerr << "cuBLAS error: " << stat__                             \
                      << " at " << __FILE__ << ":" << __LINE__ << std::endl;   \
            std::exit(1);                                                       \
        }                                                                       \
    } while (0)

inline int checked_int(size_t value, const char* name)
{
    if (value > static_cast<size_t>(std::numeric_limits<int>::max())) {
        std::cerr << name << " is too large for int API: " << value << std::endl;
        std::exit(1);
    }
    return static_cast<int>(value);
}
