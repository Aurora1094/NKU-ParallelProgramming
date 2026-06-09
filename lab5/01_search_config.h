#pragma once

#include <cstddef>
#include <fstream>
#include <sstream>
#include <string>

enum class SearchMode {
    CPU_FLAT_BASELINE,
    GPU_FLAT_CPU_TOPK,
    GPU_FLAT_GPU_TOPK,
    GPU_IVF_BASELINE,
    GPU_IVF_MAIN_CLUSTER_GROUP,
    GPU_IVF_JACCARD_GROUP,
    GPU_IVF_QUERY_GROUP,
    GPU_IVF_HYBRID_GROUP,
    GPU_IVF_ADAPTIVE_GROUP,
    GPU_IVF_LOAD_BALANCE_GROUP,
    GPU_IVF_LOCALITY_GROUP,
    GPU_IVF_HIERARCHICAL_GROUP,
    GPU_IVF_TIME_GROUP,
    GPU_IVF_PQ,
    GPU_IVF_PQ_MAIN,
    GPU_IVF_PQ_JACCARD
};

struct SearchConfig {
    SearchMode mode = SearchMode::GPU_FLAT_CPU_TOPK;
    int batch_size = 512;
    int k = 10;
    int nlist = 512;
    int nprobe = 32;
    int kmeans_iters = 15;
    int query_count = 2000;
    int run_id = 1;
    bool save_debug_csv = false;
    std::string csv_path;
    bool save_batch_stats_csv = false;
    std::string batch_stats_csv_path;

    int pq_m = 8;
    int pq_ksub = 256;
    int pq_iters = 10;
    std::string pq_metric = "ip";
};

struct BatchStatsConfig {
    bool enabled = false;
    std::string path;
    int run_id = 1;
    std::string mode;
    int batch_size = 0;
    int query_count = 0;
    int nlist = 0;
    int nprobe = 0;
    int kmeans_iters = 0;
    size_t total_queries = 0;
    std::string extra;
};

struct BatchStatsRow {
    size_t batch_id = 0;
    size_t real_batch = 0;
    double latency_batch_us = 0.0;
    std::string avg_overlap_ratio = "NA";
    std::string unique_probe_lists = "NA";
    std::string total_probe_lists = "NA";
    std::string estimated_scanned_vectors = "NA";
    std::string avg_estimated_cost = "NA";
};

inline const char* mode_to_string(SearchMode mode)
{
    switch (mode) {
    case SearchMode::CPU_FLAT_BASELINE:
        return "cpu_flat";
    case SearchMode::GPU_FLAT_CPU_TOPK:
        return "gpu_flat_cpu_topk";
    case SearchMode::GPU_FLAT_GPU_TOPK:
        return "gpu_flat_gpu_topk";
    case SearchMode::GPU_IVF_BASELINE:
        return "gpu_ivf";
    case SearchMode::GPU_IVF_MAIN_CLUSTER_GROUP:
        return "gpu_ivf_main";
    case SearchMode::GPU_IVF_JACCARD_GROUP:
        return "gpu_ivf_jaccard";
    case SearchMode::GPU_IVF_QUERY_GROUP:
        return "gpu_ivf_query";
    case SearchMode::GPU_IVF_HYBRID_GROUP:
        return "gpu_ivf_hybrid";
    case SearchMode::GPU_IVF_ADAPTIVE_GROUP:
        return "gpu_ivf_adaptive";
    case SearchMode::GPU_IVF_LOAD_BALANCE_GROUP:
        return "gpu_ivf_load_balance";
    case SearchMode::GPU_IVF_LOCALITY_GROUP:
        return "gpu_ivf_locality";
    case SearchMode::GPU_IVF_HIERARCHICAL_GROUP:
        return "gpu_ivf_hierarchical";
    case SearchMode::GPU_IVF_TIME_GROUP:
        return "gpu_ivf_time";
    case SearchMode::GPU_IVF_PQ:
        return "gpu_ivf_pq";
    case SearchMode::GPU_IVF_PQ_MAIN:
        return "gpu_ivf_pq_main";
    case SearchMode::GPU_IVF_PQ_JACCARD:
        return "gpu_ivf_pq_jaccard";
    default:
        return "unknown";
    }
}

inline bool parse_search_mode(const std::string& text, SearchMode& mode)
{
    if (text == "cpu_flat") {
        mode = SearchMode::CPU_FLAT_BASELINE;
    } else if (text == "gpu_flat_cpu_topk") {
        mode = SearchMode::GPU_FLAT_CPU_TOPK;
    } else if (text == "gpu_flat_gpu_topk") {
        mode = SearchMode::GPU_FLAT_GPU_TOPK;
    } else if (text == "gpu_ivf") {
        mode = SearchMode::GPU_IVF_BASELINE;
    } else if (text == "gpu_ivf_main") {
        mode = SearchMode::GPU_IVF_MAIN_CLUSTER_GROUP;
    } else if (text == "gpu_ivf_jaccard") {
        mode = SearchMode::GPU_IVF_JACCARD_GROUP;
    } else if (text == "gpu_ivf_query") {
        mode = SearchMode::GPU_IVF_QUERY_GROUP;
    } else if (text == "gpu_ivf_hybrid") {
        mode = SearchMode::GPU_IVF_HYBRID_GROUP;
    } else if (text == "gpu_ivf_adaptive") {
        mode = SearchMode::GPU_IVF_ADAPTIVE_GROUP;
    } else if (text == "gpu_ivf_load_balance") {
        mode = SearchMode::GPU_IVF_LOAD_BALANCE_GROUP;
    } else if (text == "gpu_ivf_locality") {
        mode = SearchMode::GPU_IVF_LOCALITY_GROUP;
    } else if (text == "gpu_ivf_hierarchical") {
        mode = SearchMode::GPU_IVF_HIERARCHICAL_GROUP;
    } else if (text == "gpu_ivf_time") {
        mode = SearchMode::GPU_IVF_TIME_GROUP;
    } else if (text == "gpu_ivf_pq") {
        mode = SearchMode::GPU_IVF_PQ;
    } else if (text == "gpu_ivf_pq_main") {
        mode = SearchMode::GPU_IVF_PQ_MAIN;
    } else if (text == "gpu_ivf_pq_jaccard") {
        mode = SearchMode::GPU_IVF_PQ_JACCARD;
    } else {
        return false;
    }
    return true;
}

inline bool is_plain_ivf_mode(SearchMode mode)
{
    return mode == SearchMode::GPU_IVF_BASELINE ||
           mode == SearchMode::GPU_IVF_MAIN_CLUSTER_GROUP ||
           mode == SearchMode::GPU_IVF_JACCARD_GROUP ||
           mode == SearchMode::GPU_IVF_QUERY_GROUP ||
           mode == SearchMode::GPU_IVF_HYBRID_GROUP ||
           mode == SearchMode::GPU_IVF_ADAPTIVE_GROUP ||
           mode == SearchMode::GPU_IVF_LOAD_BALANCE_GROUP ||
           mode == SearchMode::GPU_IVF_LOCALITY_GROUP ||
           mode == SearchMode::GPU_IVF_HIERARCHICAL_GROUP ||
           mode == SearchMode::GPU_IVF_TIME_GROUP;
}

inline bool is_pq_mode(SearchMode mode)
{
    return mode == SearchMode::GPU_IVF_PQ ||
           mode == SearchMode::GPU_IVF_PQ_MAIN ||
           mode == SearchMode::GPU_IVF_PQ_JACCARD;
}

inline bool is_ivf_mode(SearchMode mode)
{
    return is_plain_ivf_mode(mode) || is_pq_mode(mode);
}

inline bool csv_file_empty_or_missing(const std::string& path)
{
    std::ifstream existing(path, std::ios::binary);
    return !existing || existing.peek() == std::ifstream::traits_type::eof();
}

inline std::string double_to_csv(double value)
{
    std::ostringstream oss;
    oss << value;
    return oss.str();
}

inline void append_batch_stats_row(const BatchStatsConfig& cfg, const BatchStatsRow& row)
{
    if (!cfg.enabled || cfg.path.empty()) {
        return;
    }

    const bool write_header = csv_file_empty_or_missing(cfg.path);
    std::ofstream fout(cfg.path, std::ios::app);
    if (!fout) {
        return;
    }

    if (write_header) {
        fout << "run_id,mode,batch_id,batch_size,query_count,nlist,nprobe,kmeans_iters,"
             << "real_batch,latency_batch_us,avg_overlap_ratio,unique_probe_lists,"
             << "total_probe_lists,estimated_scanned_vectors,avg_estimated_cost,total_queries,extra\n";
    }

    fout << cfg.run_id << ','
         << cfg.mode << ','
         << row.batch_id << ','
         << cfg.batch_size << ','
         << cfg.query_count << ','
         << cfg.nlist << ','
         << cfg.nprobe << ','
         << cfg.kmeans_iters << ','
         << row.real_batch << ','
         << row.latency_batch_us << ','
         << row.avg_overlap_ratio << ','
         << row.unique_probe_lists << ','
         << row.total_probe_lists << ','
         << row.estimated_scanned_vectors << ','
         << row.avg_estimated_cost << ','
         << cfg.total_queries << ','
         << cfg.extra << '\n';
}
