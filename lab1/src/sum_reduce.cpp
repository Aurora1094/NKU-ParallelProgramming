#include <algorithm>
#include <cmath>
#include <cstdint>
#include <cstring>
#include <filesystem>
#include <fstream>
#include <iomanip>
#include <iostream>
#include <string>
#include <vector>

#ifdef _WIN32
#ifndef NOMINMAX
#define NOMINMAX
#endif
#include <windows.h>
#endif

namespace fs = std::filesystem;

namespace {

volatile double g_sink = 0.0;

#ifdef _WIN32
static double now_seconds() {
    static LARGE_INTEGER freq = [] {
        LARGE_INTEGER v{};
        QueryPerformanceFrequency(&v);
        return v;
    }();
    LARGE_INTEGER counter{};
    QueryPerformanceCounter(&counter);
    return static_cast<double>(counter.QuadPart) / static_cast<double>(freq.QuadPart);
}
#else
#include <time.h>
static double now_seconds() {
    timespec ts{};
    clock_gettime(CLOCK_MONOTONIC, &ts);
    return static_cast<double>(ts.tv_sec) + static_cast<double>(ts.tv_nsec) * 1e-9;
}
#endif

static double deterministic_value(std::size_t i) {
    const std::uint64_t mix = (i + 1) * 1315423911ull + (i / 3 + 11) * 2654435761ull;
    return static_cast<double>(mix % 1024ull) / 257.0 - 1.5;
}

static void generate_sum_case(std::size_t n, std::vector<double>& data) {
    data.resize(n);
    for (std::size_t i = 0; i < n; ++i) {
        data[i] = deterministic_value(i);
    }
}

static void flush_cache(std::vector<double>& trash) {
    for (double& x : trash) x += 1.0;
    g_sink += trash.front();
}

static double sum_chain(const double* data, std::size_t n) {
    double sum = 0.0;
    for (std::size_t i = 0; i < n; ++i) {
        sum += data[i];
    }
    return sum;
}

static double sum_two_way(const double* data, std::size_t n) {
    double s0 = 0.0, s1 = 0.0;
    std::size_t i = 0;
    for (; i + 1 < n; i += 2) {
        s0 += data[i];
        s1 += data[i + 1];
    }
    for (; i < n; ++i) s0 += data[i];
    return s0 + s1;
}

static double sum_four_way_unroll(const double* data, std::size_t n) {
    double s0 = 0.0, s1 = 0.0, s2 = 0.0, s3 = 0.0;
    std::size_t i = 0;
    for (; i + 3 < n; i += 4) {
        s0 += data[i];
        s1 += data[i + 1];
        s2 += data[i + 2];
        s3 += data[i + 3];
    }
    double tail = 0.0;
    for (; i < n; ++i) tail += data[i];
    return (s0 + s1) + (s2 + s3) + tail;
}

static double sum_pairwise_iterative(const double* data, double* scratch, std::size_t n) {
    std::memcpy(scratch, data, n * sizeof(double));
    for (std::size_t m = n; m > 1; m >>= 1) {
        const std::size_t half = m >> 1;
        std::size_t i = 0;
        for (; i + 3 < half; i += 4) {
            scratch[i] = scratch[2 * i] + scratch[2 * i + 1];
            scratch[i + 1] = scratch[2 * i + 2] + scratch[2 * i + 3];
            scratch[i + 2] = scratch[2 * i + 4] + scratch[2 * i + 5];
            scratch[i + 3] = scratch[2 * i + 6] + scratch[2 * i + 7];
        }
        for (; i < half; ++i) {
            scratch[i] = scratch[2 * i] + scratch[2 * i + 1];
        }
    }
    return scratch[0];
}

template <typename Callable>
static double benchmark_callable(Callable&& callable, std::vector<double>& trash,
                                 double target_seconds = 0.12, int rounds = 5,
                                 int* repeats_out = nullptr) {
    int repeats = 1;
    while (true) {
        flush_cache(trash);
        const double t0 = now_seconds();
        for (int i = 0; i < repeats; ++i) callable();
        const double dt = now_seconds() - t0;
        if (dt >= target_seconds) break;
        repeats *= 2;
        if (repeats > (1 << 28)) break;
    }

    double best = 1e100;
    for (int r = 0; r < rounds; ++r) {
        flush_cache(trash);
        const double t0 = now_seconds();
        for (int i = 0; i < repeats; ++i) callable();
        const double dt = now_seconds() - t0;
        best = std::min(best, dt / repeats);
    }
    if (repeats_out) *repeats_out = repeats;
    return best * 1000.0;
}

struct SumBenchRow {
    std::size_t n{};
    double data_mib{};
    int repeats{};
    double chain_ms{};
    double two_way_ms{};
    double four_way_ms{};
    double pairwise_ms{};
    double speedup_two_way{};
    double speedup_four_way{};
    double speedup_pairwise{};
    double abs_diff_two_way{};
    double abs_diff_four_way{};
    double abs_diff_pairwise{};
};

static std::vector<SumBenchRow> run_sum_benchmarks(const std::vector<std::size_t>& sizes,
                                                   std::vector<double>& trash) {
    std::vector<SumBenchRow> rows;
    rows.reserve(sizes.size());

    for (std::size_t n : sizes) {
        std::vector<double> data;
        std::vector<double> scratch(n);
        generate_sum_case(n, data);

        const double ref = sum_chain(data.data(), n);
        const double two = sum_two_way(data.data(), n);
        const double four = sum_four_way_unroll(data.data(), n);
        const double pairwise = sum_pairwise_iterative(data.data(), scratch.data(), n);

        int repeats = 0;
        const double chain_ms = benchmark_callable([&] { g_sink += sum_chain(data.data(), n); }, trash, 0.12, 5, &repeats);
        const double two_way_ms = benchmark_callable([&] { g_sink += sum_two_way(data.data(), n); }, trash, 0.12, 5);
        const double four_way_ms = benchmark_callable([&] { g_sink += sum_four_way_unroll(data.data(), n); }, trash, 0.12, 5);
        const double pairwise_ms = benchmark_callable([&] { g_sink += sum_pairwise_iterative(data.data(), scratch.data(), n); }, trash, 0.12, 5);

        rows.push_back(SumBenchRow{
            n,
            static_cast<double>(n * sizeof(double)) / (1024.0 * 1024.0),
            repeats,
            chain_ms,
            two_way_ms,
            four_way_ms,
            pairwise_ms,
            chain_ms / two_way_ms,
            chain_ms / four_way_ms,
            chain_ms / pairwise_ms,
            std::abs(ref - two),
            std::abs(ref - four),
            std::abs(ref - pairwise)
        });
    }
    return rows;
}

static void write_sum_csv(const std::vector<SumBenchRow>& rows, const fs::path& path) {
    std::ofstream out(path);
    out << "n,data_mib,repeats,chain_ms,two_way_ms,four_way_ms,pairwise_ms," \
           "speedup_two_way,speedup_four_way,speedup_pairwise," \
           "abs_diff_two_way,abs_diff_four_way,abs_diff_pairwise\n";
    out << std::fixed << std::setprecision(6);
    for (const auto& row : rows) {
        out << row.n << ',' << row.data_mib << ',' << row.repeats << ','
            << row.chain_ms << ',' << row.two_way_ms << ',' << row.four_way_ms << ','
            << row.pairwise_ms << ',' << row.speedup_two_way << ','
            << row.speedup_four_way << ',' << row.speedup_pairwise << ','
            << row.abs_diff_two_way << ',' << row.abs_diff_four_way << ','
            << row.abs_diff_pairwise << '\n';
    }
}

static void print_sum_summary(const std::vector<SumBenchRow>& rows) {
    std::cout << "n\tdata(MiB)\trepeats\tchain(ms)\t2way(ms)\t4way(ms)\tpair(ms)\tspd(2way)\tspd(4way)\tspd(pair)\n";
    for (const auto& row : rows) {
        std::cout << row.n << '\t' << std::fixed << std::setprecision(2) << row.data_mib
                  << '\t' << row.repeats << '\t' << std::setprecision(4)
                  << row.chain_ms << '\t' << row.two_way_ms << '\t'
                  << row.four_way_ms << '\t' << row.pairwise_ms << '\t'
                  << std::setprecision(2) << row.speedup_two_way << '\t'
                  << row.speedup_four_way << '\t' << row.speedup_pairwise << '\n';
    }
}

static int run_single(const std::string& mode, std::size_t n, int repeats) {
    std::vector<double> data;
    std::vector<double> scratch(n);
    generate_sum_case(n, data);
    double ans = 0.0;
    const double t0 = now_seconds();
    for (int r = 0; r < repeats; ++r) {
        if (mode == "serial") ans += sum_chain(data.data(), n);
        else if (mode == "two") ans += sum_two_way(data.data(), n);
        else if (mode == "four") ans += sum_four_way_unroll(data.data(), n);
        else if (mode == "pair") ans += sum_pairwise_iterative(data.data(), scratch.data(), n);
        else {
            std::cerr << "unknown mode\n";
            return 1;
        }
    }
    const double dt = now_seconds() - t0;
    std::cout << std::fixed << std::setprecision(6)
              << "mode=" << mode << ",n=" << n << ",repeats=" << repeats
              << ",time_sec=" << dt << ",result=" << ans << "\n";
    g_sink += ans;
    return 0;
}

} // namespace

int main(int argc, char** argv) {
    if (argc == 4) {
        return run_single(argv[1], static_cast<std::size_t>(std::stoull(argv[2])), std::stoi(argv[3]));
    }

    fs::path out = (argc >= 2) ? fs::path(argv[1]) : fs::path("result/sum.csv");
    std::vector<std::size_t> sizes = {
        1ull << 10, 1ull << 12, 1ull << 14, 1ull << 16,
        1ull << 18, 1ull << 20, 1ull << 22, 1ull << 24
    };

    std::vector<double> trash(8ull * 1024ull * 1024ull, 1.0);
    auto rows = run_sum_benchmarks(sizes, trash);
    write_sum_csv(rows, out);
    print_sum_summary(rows);

    std::cerr << "Wrote CSV to: " << out << "\n";
    if (g_sink == 0.123456789) std::cerr << "";
    return 0;
}