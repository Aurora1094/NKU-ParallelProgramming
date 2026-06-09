#include "01_common.cuh"
#include "01_search_config.h"
#include "02_gpu_flat_searcher.h"
#include "04_ivf_index.h"
#include "05_gpu_ivf_searcher.h"
#include "06_pq_index.h"
#include "07_gpu_ivf_pq_searcher.h"

#include <algorithm>
#include <chrono>
#include <cstdint>
#include <cstdlib>
#include <fstream>
#include <iostream>
#include <memory>
#include <limits>
#include <queue>
#include <set>
#include <sstream>
#include <string>
#include <utility>
#include <vector>

template <typename T>
T* LoadData(const std::string& data_path, size_t& n, size_t& d)
{
    std::ifstream fin(data_path, std::ios::binary);
    if (!fin) {
        std::cerr << "failed to open data file: " << data_path << std::endl;
        std::exit(1);
    }

    uint32_t n32 = 0;
    uint32_t d32 = 0;
    fin.read(reinterpret_cast<char*>(&n32), sizeof(uint32_t));
    fin.read(reinterpret_cast<char*>(&d32), sizeof(uint32_t));
    if (!fin) {
        std::cerr << "failed to read file header: " << data_path << std::endl;
        std::exit(1);
    }

    n = n32;
    d = d32;
    T* data = new T[n * d];
    fin.read(reinterpret_cast<char*>(data), static_cast<std::streamsize>(n * d * sizeof(T)));
    if (!fin) {
        std::cerr << "failed to read file payload: " << data_path << std::endl;
        delete[] data;
        std::exit(1);
    }

    std::cerr << "load data " << data_path << "\n";
    std::cerr << "dimension: " << d
              << "  number: " << n
              << "  size_per_element: " << sizeof(T) << "\n";

    return data;
}

std::string JoinPath(const std::string& dir, const std::string& name)
{
    if (dir.empty()) {
        return name;
    }
    const char last = dir[dir.size() - 1];
    if (last == '/' || last == '\\') {
        return dir + name;
    }
    return dir + "/" + name;
}

struct SearchResult {
    float recall;
    double latency_us;
};

SearchConfig parse_args(int argc, char* argv[])
{
    SearchConfig cfg;
    cfg.k = 10;

    for (int i = 1; i < argc; ++i) {
        const std::string arg = argv[i];
        auto need_value = [&](const char* name) -> std::string {
            if (i + 1 >= argc) {
                std::cerr << "missing value for " << name << std::endl;
                std::exit(1);
            }
            return argv[++i];
        };

        if (arg == "--mode") {
            const std::string value = need_value("--mode");
            if (!parse_search_mode(value, cfg.mode)) {
                std::cerr << "unknown mode: " << value << std::endl;
                std::exit(1);
            }
        } else if (arg == "--batch") {
            cfg.batch_size = std::stoi(need_value("--batch"));
        } else if (arg == "--nlist") {
            cfg.nlist = std::stoi(need_value("--nlist"));
        } else if (arg == "--nprobe") {
            cfg.nprobe = std::stoi(need_value("--nprobe"));
        } else if (arg == "--kmeans_iters") {
            cfg.kmeans_iters = std::stoi(need_value("--kmeans_iters"));
        } else if (arg == "--queries") {
            cfg.query_count = std::stoi(need_value("--queries"));
        } else if (arg == "--run_id") {
            cfg.run_id = std::stoi(need_value("--run_id"));
        } else if (arg == "--csv") {
            cfg.csv_path = need_value("--csv");
            cfg.save_debug_csv = true;
        } else if (arg == "--batch_stats_csv") {
            cfg.batch_stats_csv_path = need_value("--batch_stats_csv");
            cfg.save_batch_stats_csv = true;
        } else if (arg == "--pq_m") {
            cfg.pq_m = std::stoi(need_value("--pq_m"));
        } else if (arg == "--pq_ksub") {
            cfg.pq_ksub = std::stoi(need_value("--pq_ksub"));
        } else if (arg == "--pq_iters") {
            cfg.pq_iters = std::stoi(need_value("--pq_iters"));
        } else if (arg == "--pq_metric") {
            cfg.pq_metric = need_value("--pq_metric");
        } else {
            std::cerr << "unknown argument: " << arg << std::endl;
            std::exit(1);
        }
    }

    if (cfg.batch_size <= 0 || cfg.nlist <= 0 || cfg.nprobe <= 0 ||
        cfg.kmeans_iters < 0 || cfg.query_count <= 0 || cfg.run_id <= 0 ||
        cfg.pq_m <= 0 || cfg.pq_ksub <= 0 || cfg.pq_iters < 0) {
        std::cerr << "invalid numeric argument" << std::endl;
        std::exit(1);
    }
    if (cfg.pq_ksub > 256) {
        std::cerr << "pq_ksub must be <= 256 because PQ codes use uint8_t" << std::endl;
        std::exit(1);
    }
    if (cfg.pq_metric != "ip" && cfg.pq_metric != "l2") {
        std::cerr << "pq_metric must be ip or l2" << std::endl;
        std::exit(1);
    }

    return cfg;
}

std::priority_queue<std::pair<float, uint32_t>> cpu_flat_search(
    const float* base,
    const float* query,
    size_t base_number,
    size_t dim,
    size_t k
)
{
    std::priority_queue<std::pair<float, uint32_t>> heap;
    const size_t effective_k = std::min(k, base_number);

    for (size_t id = 0; id < base_number; ++id) {
        const float* vec = base + id * dim;
        float score = 0.0f;
        for (size_t j = 0; j < dim; ++j) {
            score += query[j] * vec[j];
        }
        const float dist = 1.0f - score;
        const auto item = std::make_pair(dist, static_cast<uint32_t>(id));
        if (heap.size() < effective_k) {
            heap.push(item);
        } else if (dist < heap.top().first) {
            heap.pop();
            heap.push(item);
        }
    }

    return heap;
}

std::string extra_for_config(const SearchConfig& cfg, size_t dim)
{
    if (cfg.mode == SearchMode::GPU_FLAT_CPU_TOPK) {
        return "topk=cpu";
    }
    if (cfg.mode == SearchMode::GPU_FLAT_GPU_TOPK) {
        return "topk=gpu";
    }
    if (is_pq_mode(cfg.mode)) {
        const double float_bytes = static_cast<double>(dim * sizeof(float));
        const double pq_code_bytes = static_cast<double>(cfg.pq_m);
        std::ostringstream oss;
        oss << "pq_m=" << cfg.pq_m
            << ";pq_ksub=" << cfg.pq_ksub
            << ";pq_iters=" << cfg.pq_iters
            << ";pq_metric=" << cfg.pq_metric
            << ";pq_code_bytes=" << cfg.pq_m
            << ";float_bytes=" << static_cast<size_t>(float_bytes)
            << ";compression_ratio=" << (float_bytes / pq_code_bytes);
        return oss.str();
    }
    if (is_plain_ivf_mode(cfg.mode)) {
        return std::string("grouping=") + mode_to_string(cfg.mode);
    }
    return "baseline=cpu_flat";
}

BatchStatsConfig make_batch_stats_config(
    const SearchConfig& cfg,
    size_t total_queries,
    size_t dim,
    const std::string& extra
)
{
    BatchStatsConfig stats;
    stats.enabled = cfg.save_batch_stats_csv;
    stats.path = cfg.batch_stats_csv_path;
    stats.run_id = cfg.run_id;
    stats.mode = mode_to_string(cfg.mode);
    stats.batch_size = cfg.batch_size;
    stats.query_count = cfg.query_count;
    stats.nlist = cfg.nlist;
    stats.nprobe = cfg.nprobe;
    stats.kmeans_iters = cfg.kmeans_iters;
    stats.total_queries = total_queries;
    stats.extra = extra.empty() ? extra_for_config(cfg, dim) : extra;
    return stats;
}

void append_csv_row(
    const SearchConfig& cfg,
    double avg_recall,
    double avg_latency,
    size_t total_queries,
    const std::string& avg_overlap,
    const std::string& avg_unique,
    const std::string& extra
)
{
    if (!cfg.save_debug_csv) {
        return;
    }

    const bool write_header = csv_file_empty_or_missing(cfg.csv_path);

    std::ofstream fout(cfg.csv_path, std::ios::app);
    if (!fout) {
        std::cerr << "failed to open csv file: " << cfg.csv_path << std::endl;
        return;
    }

    if (write_header) {
        fout << "run_id,mode,batch_size,query_count,nlist,nprobe,kmeans_iters,recall,latency_us,"
             << "total_queries,avg_overlap_ratio,avg_unique_probe_lists,extra\n";
    }
    fout << cfg.run_id << ','
         << mode_to_string(cfg.mode) << ','
         << cfg.batch_size << ','
         << cfg.query_count << ','
         << cfg.nlist << ','
         << cfg.nprobe << ','
         << cfg.kmeans_iters << ','
         << avg_recall << ','
         << avg_latency << ','
         << total_queries << ','
         << avg_overlap << ','
         << avg_unique << ','
         << extra << '\n';
}

int main(int argc, char* argv[])
{
    const std::string data_dir = "data";
    SearchConfig cfg = parse_args(argc, argv);
    cfg.k = 10;

    size_t query_number = 0;
    size_t gt_number = 0;
    size_t base_number = 0;
    size_t test_gt_d = 0;
    size_t vecdim_query = 0;
    size_t vecdim_base = 0;
    const size_t k = static_cast<size_t>(cfg.k);

    float* test_query = LoadData<float>(
        JoinPath(data_dir, "DEEP100K.query.fbin"),
        query_number,
        vecdim_query
    );
    int* test_gt = LoadData<int>(
        JoinPath(data_dir, "DEEP100K.gt.query.100k.top100.bin"),
        gt_number,
        test_gt_d
    );
    float* base = LoadData<float>(
        JoinPath(data_dir, "DEEP100K.base.100k.fbin"),
        base_number,
        vecdim_base
    );

    if (vecdim_query != vecdim_base) {
        std::cerr << "query dim does not match base dim: "
                  << vecdim_query << " vs " << vecdim_base << std::endl;
        delete[] test_query;
        delete[] test_gt;
        delete[] base;
        return 1;
    }
    if (gt_number < query_number || test_gt_d < k) {
        std::cerr << "ground truth dimensions are not enough for evaluation" << std::endl;
        delete[] test_query;
        delete[] test_gt;
        delete[] base;
        return 1;
    }

    const size_t test_number = std::min<size_t>(query_number, static_cast<size_t>(cfg.query_count));
    const std::string extra = extra_for_config(cfg, vecdim_query);

    std::unique_ptr<GPUFlatSearcher> flat_searcher;
    std::unique_ptr<IVFIndex> ivf_index;
    std::unique_ptr<GPUIVFSearcher> ivf_searcher;
    std::unique_ptr<PQIndex> pq_index;
    std::unique_ptr<GPUIVFPQSearcher> pq_searcher;

    if (cfg.mode == SearchMode::GPU_FLAT_CPU_TOPK ||
        cfg.mode == SearchMode::GPU_FLAT_GPU_TOPK) {
        const bool use_gpu_topk = (cfg.mode == SearchMode::GPU_FLAT_GPU_TOPK);
        flat_searcher.reset(new GPUFlatSearcher(
            base,
            test_query,
            base_number,
            test_number,
            vecdim_query,
            k,
            static_cast<size_t>(cfg.batch_size),
            use_gpu_topk
        ));
        flat_searcher->set_batch_stats_config(make_batch_stats_config(cfg, test_number, vecdim_query, extra));
    } else if (is_plain_ivf_mode(cfg.mode)) {
        ivf_index.reset(new IVFIndex());
        ivf_index->build(
            base,
            checked_int(base_number, "base_number"),
            checked_int(vecdim_query, "dim"),
            cfg.nlist,
            cfg.kmeans_iters
        );

        ivf_searcher.reset(new GPUIVFSearcher(
            *ivf_index,
            test_query,
            test_number,
            vecdim_query,
            k,
            static_cast<size_t>(cfg.batch_size),
            static_cast<size_t>(cfg.nprobe),
            cfg.mode
        ));
        ivf_searcher->set_batch_stats_config(make_batch_stats_config(cfg, test_number, vecdim_query, extra));
    } else if (is_pq_mode(cfg.mode)) {
        ivf_index.reset(new IVFIndex());
        ivf_index->build(
            base,
            checked_int(base_number, "base_number"),
            checked_int(vecdim_query, "dim"),
            cfg.nlist,
            cfg.kmeans_iters
        );

        pq_index.reset(new PQIndex());
        pq_index->build(*ivf_index, cfg.pq_m, cfg.pq_ksub, cfg.pq_iters, cfg.pq_metric);

        pq_searcher.reset(new GPUIVFPQSearcher(
            *ivf_index,
            *pq_index,
            test_query,
            test_number,
            vecdim_query,
            k,
            static_cast<size_t>(cfg.batch_size),
            static_cast<size_t>(cfg.nprobe),
            cfg.mode
        ));
        pq_searcher->set_batch_stats_config(make_batch_stats_config(cfg, test_number, vecdim_query, extra));
    }

    std::vector<SearchResult> results(test_number);

    for (size_t i = 0; i < test_number; ++i) {
        const auto begin = std::chrono::high_resolution_clock::now();
        std::priority_queue<std::pair<float, uint32_t>> res;

        if (cfg.mode == SearchMode::CPU_FLAT_BASELINE) {
            res = cpu_flat_search(base, test_query + i * vecdim_query, base_number, vecdim_query, k);
        } else if (flat_searcher) {
            res = flat_searcher->search(i);
        } else if (pq_searcher) {
            res = pq_searcher->search(i);
        } else {
            res = ivf_searcher->search(i);
        }

        const auto end = std::chrono::high_resolution_clock::now();
        const double latency_us =
            static_cast<double>(std::chrono::duration_cast<std::chrono::microseconds>(end - begin).count());

        std::set<uint32_t> gtset;
        for (size_t j = 0; j < k; ++j) {
            gtset.insert(static_cast<uint32_t>(test_gt[j + i * test_gt_d]));
        }

        size_t acc = 0;
        while (!res.empty()) {
            const uint32_t id = res.top().second;
            if (gtset.find(id) != gtset.end()) {
                ++acc;
            }
            res.pop();
        }

        results[i] = {
            static_cast<float>(acc) / static_cast<float>(k),
            latency_us
        };
    }

    if (cfg.mode == SearchMode::CPU_FLAT_BASELINE && cfg.save_batch_stats_csv) {
        const BatchStatsConfig cpu_stats = make_batch_stats_config(cfg, test_number, vecdim_query, extra);
        const size_t num_batches = (test_number + static_cast<size_t>(cfg.batch_size) - 1) /
                                   static_cast<size_t>(cfg.batch_size);
        for (size_t batch_id = 0; batch_id < num_batches; ++batch_id) {
            const size_t begin = batch_id * static_cast<size_t>(cfg.batch_size);
            const size_t end = std::min(begin + static_cast<size_t>(cfg.batch_size), test_number);
            double latency_sum = 0.0;
            for (size_t i = begin; i < end; ++i) {
                latency_sum += results[i].latency_us;
            }
            BatchStatsRow row;
            row.batch_id = batch_id;
            row.real_batch = end - begin;
            row.latency_batch_us = latency_sum;
            row.estimated_scanned_vectors = std::to_string(base_number * row.real_batch);
            append_batch_stats_row(cpu_stats, row);
        }
    }

    double avg_recall = 0.0;
    double avg_latency = 0.0;
    for (size_t i = 0; i < test_number; ++i) {
        avg_recall += results[i].recall;
        avg_latency += results[i].latency_us;
    }
    avg_recall /= static_cast<double>(test_number);
    avg_latency /= static_cast<double>(test_number);

    if (ivf_searcher) {
        ivf_searcher->print_stats();
    }
    if (pq_searcher) {
        pq_searcher->print_stats();
    }

    std::string avg_overlap = "NA";
    std::string avg_unique = "NA";
    if (ivf_searcher) {
        avg_overlap = double_to_csv(ivf_searcher->average_overlap_ratio());
        avg_unique = double_to_csv(ivf_searcher->average_unique_probe_lists());
    } else if (pq_searcher) {
        avg_overlap = double_to_csv(pq_searcher->average_overlap_ratio());
        avg_unique = double_to_csv(pq_searcher->average_unique_probe_lists());
    }
    append_csv_row(cfg, avg_recall, avg_latency, test_number, avg_overlap, avg_unique, extra);

    std::cout << "average recall: " << avg_recall << "\n";
    std::cout << "average latency (us): " << avg_latency << "\n";

    delete[] test_query;
    delete[] test_gt;
    delete[] base;
    return 0;
}
