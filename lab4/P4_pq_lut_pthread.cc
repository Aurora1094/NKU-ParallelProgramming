#include <vector>
#include <cstring>
#include <string>
#include <iostream>
#include <fstream>
#include <set>
#include <chrono>
#include <iomanip>
#include <sstream>
#include <sys/time.h>
#include <omp.h>
// Pthread
#include <functional>
#include <pthread.h>
#include <cstdlib>
#ifndef LAB3_NUM_THREADS
#define LAB3_NUM_THREADS 1
#endif

// #include "hnswlib/hnswlib/hnswlib.h"
// #include "flat_scan.h"

// ===============================
// 不同实验版本头文件切换区
// ===============================

// V1: Flat-SIMD 基础版
// #include "v1_simd_flat_scan.h"

// V2: Flat-SIMD + 循环展开 + 多累加器
// #include "v2_simd_unroll_multiacc_flat_scan.h"

// V3: Flat-SIMD + 水平求和尝试
// #include "v3_simd_hsum_flat_scan.h"

// V4: Flat-SIMD + prefetch
// 注意：v5_3 的精排函数内部会 include / 复用 v4 的 dot_product_simd_prefetch
// main.cc 这里不需要直接 include v4，否则可能重复 include 或混乱。
// #include "v4_simd_prefetch_flat_scan.h"

// V5_2 / V5_3: SQ 修正评分 + 标量 uint8 dot 粗排 + v4 精排
// 当前启用该版本，用于复测 v5_3_p100
// #include "v5_2_sq_corrected_rerank_scan.h"

// V5_4: SQ 修正评分 + NEON SIMD uint8 dot 粗排 + v4 精排
// #include "v5_4_sq_simd_rerank_scan.h"

// V5_5: SQ 修正评分 + NEON SIMD uint8 dot 粗排 + nth_element top-p
// #include "v5_5_sq_simd_nth_scan.h"

// V6_1: PQ-ADC 基础版 + v4 SIMD 精排
// #include "v6_1_pq_basic_scan.h"

// V6_2
#include "v6_2_pq_lut_simd_scan.h"

// V:自动向量化 vs 手写 SIMD 对比
// #include "v_auto_flat_scan.h"


// using namespace hnswlib;

template<typename T>
T *LoadData(std::string data_path, size_t& n, size_t& d)
{
    std::ifstream fin;
    fin.open(data_path, std::ios::in | std::ios::binary);
    fin.read((char*)&n, 4);
    fin.read((char*)&d, 4);

    T* data = new T[n * d];
    int sz = sizeof(T);

    for (int i = 0; i < n; ++i) {
        fin.read(((char*)data + i * d * sz), d * sz);
    }

    fin.close();

    std::cerr << "load data " << data_path << "\n";
    std::cerr << "dimension: " << d
              << "  number:" << n
              << "  size_per_element:" << sizeof(T) << "\n";

    return data;
}

struct SearchResult
{
    float recall;
    int64_t latency; // 单位 us
};

// v4
// SearchResult search_one_query_flat_simd(
//     int i,
//     float* base,
//     float* test_query,
//     int* test_gt,
//     size_t base_number,
//     size_t vecdim,
//     size_t test_gt_d,
//     size_t k
// ) {
//     const unsigned long Converter = 1000 * 1000;

//     struct timeval val;
//     gettimeofday(&val, NULL);

//     auto res = flat_search_simd_prefetch(
//         base,
//         test_query + static_cast<size_t>(i) * vecdim,
//         base_number,
//         vecdim,
//         k
//     );

//     struct timeval newVal;
//     gettimeofday(&newVal, NULL);

//     int64_t diff =
//         (newVal.tv_sec * Converter + newVal.tv_usec)
//         - (val.tv_sec * Converter + val.tv_usec);

//     std::set<uint32_t> gtset;
//     for (size_t j = 0; j < k; ++j) {
//         int t = test_gt[j + static_cast<size_t>(i) * test_gt_d];
//         gtset.insert(static_cast<uint32_t>(t));
//     }

//     size_t acc = 0;
//     while (!res.empty()) {
//         uint32_t x = res.top().second;
//         if (gtset.find(x) != gtset.end()) {
//             ++acc;
//         }
//         res.pop();
//     }

//     float recall = static_cast<float>(acc) / static_cast<float>(k);
//     return {recall, diff};
// }

// v4使用的线程参数结构体
// struct ThreadArgFlat {
//     int tid;
//     int num_threads;
//     int test_number;

//     float* base;
//     float* test_query;
//     int* test_gt;

//     size_t base_number;
//     size_t vecdim;
//     size_t test_gt_d;
//     size_t k;

//     std::vector<SearchResult>* results;

//     int processed_count;
// };

// void* pthread_worker_flat_simd(void* arg) {
//     ThreadArgFlat* a = static_cast<ThreadArgFlat*>(arg);

//     int cnt = 0;

//     for (int i = a->tid; i < a->test_number; i += a->num_threads) {
//         (*a->results)[i] = search_one_query_flat_simd(
//             i,
//             a->base,
//             a->test_query,
//             a->test_gt,
//             a->base_number,
//             a->vecdim,
//             a->test_gt_d,
//             a->k
//         );

//         ++cnt;
//     }

//     a->processed_count = cnt;

//     return nullptr;
// }

// // v5_4
// SearchResult search_one_query_v5_4(
//     int i,
//     float* base,
//     const uint8_t* base_sq,
//     const int* base_sq_sum,
//     float* test_query,
//     int* test_gt,
//     const SQQuantizer& sq_quantizer,
//     size_t base_number,
//     size_t vecdim,
//     size_t test_gt_d,
//     size_t k,
//     size_t rerank_p
// ) {
//     const unsigned long Converter = 1000 * 1000;

//     struct timeval val;
//     gettimeofday(&val, NULL);

//     auto res = sq_search_simd_rerank_v5_4(
//         base,
//         base_sq,
//         base_sq_sum,
//         test_query + static_cast<size_t>(i) * vecdim,
//         sq_quantizer,
//         base_number,
//         vecdim,
//         k,
//         rerank_p
//     );

//     struct timeval newVal;
//     gettimeofday(&newVal, NULL);

//     int64_t diff =
//         (newVal.tv_sec * Converter + newVal.tv_usec)
//         - (val.tv_sec * Converter + val.tv_usec);

//     std::set<uint32_t> gtset;
//     for (size_t j = 0; j < k; ++j) {
//         int t = test_gt[j + static_cast<size_t>(i) * test_gt_d];
//         gtset.insert(static_cast<uint32_t>(t));
//     }

//     size_t acc = 0;
//     while (!res.empty()) {
//         uint32_t x = res.top().second;
//         if (gtset.find(x) != gtset.end()) {
//             ++acc;
//         }
//         res.pop();
//     }

//     float recall = static_cast<float>(acc) / static_cast<float>(k);
//     return {recall, diff};
// }



// // 线程参数结构体
// struct ThreadArg {
//     int tid;
//     int num_threads;
//     int test_number;

//     float* base;
//     const uint8_t* base_sq;
//     const int* base_sq_sum;
//     float* test_query;
//     int* test_gt;

//     const SQQuantizer* sq_quantizer;

//     size_t base_number;
//     size_t vecdim;
//     size_t test_gt_d;
//     size_t k;
//     size_t rerank_p;

//     // 所有线程共享 results 数组，但每个线程只写自己的 query 下标
//     std::vector<SearchResult>* results;

//     // 记录每个线程实际处理的 query 数量，用于证明线程确实参与计算
//     int processed_count;
// };

// void* pthread_worker_v5_4(void* arg) {
//     ThreadArg* a = static_cast<ThreadArg*>(arg);

//     int cnt = 0;

//     for (int i = a->tid; i < a->test_number; i += a->num_threads) {
//         (*a->results)[i] = search_one_query_v5_4(
//             i,
//             a->base,
//             a->base_sq,
//             a->base_sq_sum,
//             a->test_query,
//             a->test_gt,
//             *(a->sq_quantizer),
//             a->base_number,
//             a->vecdim,
//             a->test_gt_d,
//             a->k,
//             a->rerank_p
//         );

//         ++cnt;
//     }

//     a->processed_count = cnt;

//     return nullptr;
// }

// void build_index(float* base, size_t base_number, size_t vecdim)
// {
//     const int efConstruction = 150;
//     const int M = 16;

//     HierarchicalNSW<float> *appr_alg;
//     InnerProductSpace ipspace(vecdim);
//     appr_alg = new HierarchicalNSW<float>(&ipspace, base_number, M, efConstruction);

//     appr_alg->addPoint(base, 0);

//     #pragma omp parallel for
//     for (int i = 1; i < base_number; ++i) {
//         appr_alg->addPoint(base + 1ll * vecdim * i, i);
//     }

//     char path_index[1024] = "files/hnsw.index";
//     appr_alg->saveIndex(path_index);
// }

// v6_2
SearchResult search_one_query_pq_simd(
    int i,
    float* base,
    const PQIndex& pq_index,
    float* test_query,
    int* test_gt,
    size_t base_number,
    size_t vecdim,
    size_t test_gt_d,
    size_t k,
    size_t rerank_p,
    int lut_threads
) {
    const unsigned long Converter = 1000 * 1000;

    struct timeval val;
    gettimeofday(&val, NULL);

    auto res = pq_search_rerank_v6_2_lut_pthread(
        base,
        pq_index,
        test_query + static_cast<size_t>(i) * vecdim,
        base_number,
        vecdim,
        k,
        rerank_p,
        lut_threads
    );

    struct timeval newVal;
    gettimeofday(&newVal, NULL);

    int64_t diff =
        (newVal.tv_sec * Converter + newVal.tv_usec)
        - (val.tv_sec * Converter + val.tv_usec);

    std::set<uint32_t> gtset;
    for (size_t j = 0; j < k; ++j) {
        int t = test_gt[j + static_cast<size_t>(i) * test_gt_d];
        gtset.insert(static_cast<uint32_t>(t));
    }

    size_t acc = 0;
    while (!res.empty()) {
        uint32_t x = res.top().second;
        if (gtset.find(x) != gtset.end()) {
            ++acc;
        }
        res.pop();
    }

    float recall = static_cast<float>(acc) / static_cast<float>(k);
    return {recall, diff};
}

// v6_2的线程参数结构体
struct ThreadArgPQ {
    int tid;
    int num_threads;
    int test_number;

    float* base;
    const PQIndex* pq_index;
    float* test_query;
    int* test_gt;

    size_t base_number;
    size_t vecdim;
    size_t test_gt_d;
    size_t k;
    size_t rerank_p;
    int lut_threads;

    std::vector<SearchResult>* results;

    int processed_count;
};

void* pthread_worker_pq_simd(void* arg) {
    ThreadArgPQ* a = static_cast<ThreadArgPQ*>(arg);

    int cnt = 0;

    for (int i = a->tid; i < a->test_number; i += a->num_threads) {
        (*a->results)[i] = search_one_query_pq_simd(
            i,
            a->base,
            *(a->pq_index),
            a->test_query,
            a->test_gt,
            a->base_number,
            a->vecdim,
            a->test_gt_d,
            a->k,
            a->rerank_p,
            a->lut_threads
        );

        ++cnt;
    }

    a->processed_count = cnt;

    return nullptr;
}

int main(int argc, char *argv[])
{
    size_t test_number = 0, base_number = 0;
    size_t test_gt_d = 0, vecdim = 0;

    std::string data_path = "/anndata/";

    auto test_query = LoadData<float>(
        data_path + "DEEP100K.query.fbin",
        test_number,
        vecdim
    );

    auto test_gt = LoadData<int>(
        data_path + "DEEP100K.gt.query.100k.top100.bin",
        test_number,
        test_gt_d
    );

    auto base = LoadData<float>(
        data_path + "DEEP100K.base.100k.fbin",
        base_number,
        vecdim
    );

    // 只测试前 2000 条查询
    test_number = 2000;

    // 注意：这里必须保持 k = 10
    // 不能改成 100 或 200，否则 recall 统计会出错
    const size_t k = 10;

    std::vector<SearchResult> results;
    results.resize(test_number);

    // Pthread 查询阶段线程数：分别设为 1 / 2 / 4 / 8
    const int num_threads_for_search = 1;

    int num_threads = num_threads_for_search;

    if (num_threads < 1) num_threads = 1;
    if (num_threads > 64) num_threads = 64;

    std::cout << "num_threads_for_search: " << num_threads_for_search << "\n";
    std::cout << "pthread num_threads: " << num_threads << "\n";

    // 如果需要构建 HNSW 索引，可以启用 build_index。
    //  v5_3_p100 复测不需要构建索引。
    // build_index(base, base_number, vecdim);

    // ===============================
    // V5_3: SQ 离线预处理
    // ===============================
    // v5_3 = SQ 修正评分 + 标量 uint8 dot 粗排 + v4 Flat-SIMD 精排
    // rerank_p = 100
    // 注意：这部分是离线预处理，不计入单次 query latency
    // const size_t rerank_p = 100;

    // SQQuantizer sq_quantizer = build_sq_quantizer_global(
    //     base,
    //     base_number,
    //     vecdim
    // );

    // std::vector<uint8_t> base_sq;
    // std::vector<int> base_sq_sum;

    // quantize_base_uint8_with_sum(
    //     base,
    //     base_number,
    //     vecdim,
    //     sq_quantizer,
    //     base_sq,
    //     base_sq_sum
    // );

    // ===============================
    // V5_5: SQ 离线预处理
    // ===============================
    // v5_5 = SQ corrected score + uint8 dot NEON SIMD + nth_element top-p + v4 rerank
    // rerank_p = 100
    // 注意：这部分是离线预处理，不计入单次 query latency
    // const size_t rerank_p = 100;

    // SQQuantizer sq_quantizer = build_sq_quantizer_global(
    //     base,
    //     base_number,
    //     vecdim
    // );

    // std::vector<uint8_t> base_sq;
    // std::vector<int> base_sq_sum;

    // quantize_base_uint8_with_sum(
    //     base,
    //     base_number,
    //     vecdim,
    //     sq_quantizer,
    //     base_sq,
    //     base_sq_sum
    // );

    // ===============================
    // V6_1: PQ 离线预处理
    // ===============================
    // v6_1 = PQ-ADC coarse ranking + v4 Flat-SIMD rerank
    const size_t pq_M = 4;
    const size_t pq_Ks = 256;
    const size_t pq_train_samples = 10000;
    const int pq_kmeans_iters = 3;
    const size_t rerank_p = 2000;
    const int pq_lut_threads = 8;

    // PQIndex pq_index = build_pq_index_basic(
    //     base,
    //     base_number,
    //     vecdim,
    //     pq_M,
    //     pq_Ks,
    //     pq_train_samples,
    //     pq_kmeans_iters
    // );

    const int pq_build_threads = 4;

    auto pq_build_start = std::chrono::high_resolution_clock::now();

    PQIndex pq_index = build_pq_index_pthread_v6_2(
        base,
        base_number,
        vecdim,
        pq_M,
        pq_Ks,
        pq_train_samples,
        pq_kmeans_iters,
        pq_build_threads
    );

    auto pq_build_end = std::chrono::high_resolution_clock::now();

    double pq_build_us =
        std::chrono::duration<double, std::micro>(
            pq_build_end - pq_build_start
        ).count();

// 记得删
std::cout << "pq_build_threads: " << pq_build_threads << "\n";
std::cout << "pq index build time (us): " << pq_build_us << "\n";

// 记得删
std::cout << "method: PQ-SIMD v6_2 + Pthread LUT-build parallelism\n";
std::cout << "pq_M: " << pq_M
          << ", pq_Ks: " << pq_Ks
          << ", rerank_p: " << rerank_p
          << ", pq_lut_threads: " << pq_lut_threads << "\n";



    // ===============================
    // SIMD查询测试代码
    // ===============================
    // for (int i = 0; i < test_number; ++i) {
    //     const unsigned long Converter = 1000 * 1000;
    //     struct timeval val;
    //     int ret = gettimeofday(&val, NULL);

    //     // ==========================================================
    //     // 其他版本调用方式，保留用于后续切换，不启用
    //     // ==========================================================

    //     // V0: 原始 Flat 串行
    //     // auto res = flat_search(
    //     //     base,
    //     //     test_query + i * vecdim,
    //     //     base_number,
    //     //     vecdim,
    //     //     k
    //     // );

    //     // V1: Flat-SIMD 基础版
    //     // auto res = flat_search_simd(
    //     //     base,
    //     //     test_query + i * vecdim,
    //     //     base_number,
    //     //     vecdim,
    //     //     k
    //     // );

    //     // V2: Flat-SIMD + 循环展开 + 多累加器
    //     // auto res = flat_search_simd_unroll_multiacc(
    //     //     base,
    //     //     test_query + i * vecdim,
    //     //     base_number,
    //     //     vecdim,
    //     //     k
    //     // );

    //     // V3: Flat-SIMD + 水平求和尝试
    //     // auto res = flat_search_simd_hsum(
    //     //     base,
    //     //     test_query + i * vecdim,
    //     //     base_number,
    //     //     vecdim,
    //     //     k
    //     // );

    //     // V4: Flat-SIMD + prefetch
    //     // auto res = flat_search_simd_prefetch(
    //     //     base,
    //     //     test_query + i * vecdim,
    //     //     base_number,
    //     //     vecdim,
    //     //     k
    //     // );

    //     // V5_3:SQ corrected scalar coarse ranking + v4 SIMD rerank
    //     // auto res = sq_search_corrected_rerank_v5_2(
    //     //     base,
    //     //     base_sq.data(),
    //     //     base_sq_sum.data(),
    //     //     test_query + i * vecdim,
    //     //     sq_quantizer,
    //     //     base_number,
    //     //     vecdim,
    //     //     k,
    //     //     rerank_p
    //     // );

    //     // V5_4: SQ corrected + NEON SIMD uint8 dot coarse ranking + v4 rerank
    //     auto res = sq_search_simd_rerank_v5_4(
    //         base,
    //         base_sq.data(),
    //         base_sq_sum.data(),
    //         test_query + i * vecdim,
    //         sq_quantizer,
    //         base_number,
    //         vecdim,
    //         k,
    //         rerank_p
    //     );

    //     // V5_5: SQ 修正评分 + NEON SIMD uint8 dot 粗排 + nth_element top-p
    //     // auto res = sq_search_simd_nth_rerank_v5_5(
    //     //     base,
    //     //     base_sq.data(),
    //     //     base_sq_sum.data(),
    //     //     test_query + i * vecdim,
    //     //     sq_quantizer,
    //     //     base_number,
    //     //     vecdim,
    //     //     k,
    //     //     rerank_p
    //     // );

    //     // V6_1: PQ-ADC 基础版 + v4 SIMD 精排
    //     // auto res = pq_search_rerank_v6_1(
    //     //     base,
    //     //     pq_index,
    //     //     test_query + i * vecdim,
    //     //     base_number,
    //     //     vecdim,
    //     //     k,
    //     //     rerank_p
    //     // );

    //     // V6_2
    //     // auto res = pq_search_rerank_v6_2(
    //     //     base,
    //     //     pq_index,
    //     //     test_query + i * vecdim,
    //     //     base_number,
    //     //     vecdim,
    //     //     k,
    //     //     rerank_p
    //     // );

    //     // V:自动向量化 vs 手写 SIMD 对比
    //     // auto res = flat_search_auto_vectorized(
    //     //     base,
    //     //     test_query + i * vecdim,
    //     //     base_number,
    //     //     vecdim,
    //     //     k
    //     // );

    //     struct timeval newVal;
    //     ret = gettimeofday(&newVal, NULL);

    //     int64_t diff =
    //         (newVal.tv_sec * Converter + newVal.tv_usec)
    //         - (val.tv_sec * Converter + val.tv_usec);

    //     std::set<uint32_t> gtset;
    //     for (int j = 0; j < k; ++j) {
    //         int t = test_gt[j + i * test_gt_d];
    //         gtset.insert(t);
    //     }

    //     size_t acc = 0;
    //     while (res.size()) {
    //         int x = res.top().second;
    //         if (gtset.find(x) != gtset.end()) {
    //             ++acc;
    //         }
    //         res.pop();
    //     }

    //     float recall = (float)acc / k;
    //     results[i] = {recall, diff};
    // }

//     auto wall_start = std::chrono::high_resolution_clock::now();

//     for (int i = 0; i < static_cast<int>(test_number); ++i) {
//         results[i] = search_one_query_v5_4(
//             i,
//             base,
//             base_sq.data(),
//             base_sq_sum.data(),
//             test_query,
//             test_gt,
//             sq_quantizer,
//             base_number,
//             vecdim,
//             test_gt_d,
//             k,
//             rerank_p
//         );
//     }

// auto wall_end = std::chrono::high_resolution_clock::now();

auto wall_start = std::chrono::high_resolution_clock::now();

// v4
// std::vector<pthread_t> threads(num_threads);
// std::vector<ThreadArgFlat> args(num_threads);

// for (int t = 0; t < num_threads; ++t) {
//     args[t].tid = t;
//     args[t].num_threads = num_threads;
//     args[t].test_number = static_cast<int>(test_number);

//     args[t].base = base;
//     args[t].test_query = test_query;
//     args[t].test_gt = test_gt;

//     args[t].base_number = base_number;
//     args[t].vecdim = vecdim;
//     args[t].test_gt_d = test_gt_d;
//     args[t].k = k;

//     args[t].results = &results;
//     args[t].processed_count = 0;

//     pthread_create(&threads[t], nullptr, pthread_worker_flat_simd, &args[t]);
// }

// v5_4
// std::vector<pthread_t> threads(num_threads);
// std::vector<ThreadArg> args(num_threads);

// for (int t = 0; t < num_threads; ++t) {
//     args[t].tid = t;
//     args[t].num_threads = num_threads;
//     args[t].test_number = static_cast<int>(test_number);

//     args[t].base = base;
//     args[t].base_sq = base_sq.data();
//     args[t].base_sq_sum = base_sq_sum.data();
//     args[t].test_query = test_query;
//     args[t].test_gt = test_gt;

//     args[t].sq_quantizer = &sq_quantizer;

//     args[t].base_number = base_number;
//     args[t].vecdim = vecdim;
//     args[t].test_gt_d = test_gt_d;
//     args[t].k = k;
//     args[t].rerank_p = rerank_p;

//     args[t].results = &results;
//     args[t].processed_count = 0;

//     pthread_create(&threads[t], nullptr, pthread_worker_v5_4, &args[t]);
// }

// v6_2
std::vector<pthread_t> threads(num_threads);
std::vector<ThreadArgPQ> args(num_threads);

for (int t = 0; t < num_threads; ++t) {
    args[t].tid = t;
    args[t].num_threads = num_threads;
    args[t].test_number = static_cast<int>(test_number);

    args[t].base = base;
    args[t].pq_index = &pq_index;
    args[t].test_query = test_query;
    args[t].test_gt = test_gt;

    args[t].base_number = base_number;
    args[t].vecdim = vecdim;
    args[t].test_gt_d = test_gt_d;
    args[t].k = k;
    args[t].rerank_p = rerank_p;
    args[t].lut_threads = pq_lut_threads;

    args[t].results = &results;
    args[t].processed_count = 0;

    pthread_create(&threads[t], nullptr, pthread_worker_pq_simd, &args[t]);
}

for (int t = 0; t < num_threads; ++t) {
    pthread_join(threads[t], nullptr);
}

for (int t = 0; t < num_threads; ++t) {
    std::cout << "thread " << t
              << " processed queries: "
              << args[t].processed_count << "\n";
}

auto wall_end = std::chrono::high_resolution_clock::now();

double wall_us_total =
    std::chrono::duration<double, std::micro>(wall_end - wall_start).count();

double wall_latency_per_query =
    wall_us_total / static_cast<double>(test_number);

    float avg_recall = 0;
    float avg_latency = 0;

    for (int i = 0; i < test_number; ++i) {
        avg_recall += results[i].recall;
        avg_latency += results[i].latency;
    }

    // SIMD
    // std::cout << "average recall: " << avg_recall / test_number << "\n";
    // std::cout << "average latency (us): " << avg_latency / test_number << "\n";
    std::cout << "average recall: " << avg_recall / test_number << "\n";
    std::cout << "average latency (us): " << avg_latency / test_number << "\n";
    std::cout << "wall latency per query (us): " << wall_latency_per_query << "\n";
    std::cout << "total wall time (us): " << wall_us_total << "\n";

    return 0;
}