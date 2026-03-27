#include <algorithm>
#include <chrono>
#include <cmath>
#include <filesystem>
#include <fstream>
#include <iomanip>
#include <iostream>
#include <limits>
#include <string>
#include <vector>
#if defined(_MSC_VER)
#define NOINLINE __declspec(noinline)
#else
#define NOINLINE __attribute__((noinline))
#endif

namespace fs = std::filesystem;
using Clock = std::chrono::steady_clock;

volatile double g_sink = 0.0;

struct BenchRow {
    std::size_t n = 0;
    double working_set_mib = 0.0;
    int repeats = 0;
    double naive_ms = 0.0;
    double optimized_ms = 0.0;
    double speedup = 0.0;
    double max_diff = 0.0;
};

double deterministic_value(std::size_t i, std::size_t j) {
    return static_cast<double>((i + j) % 1024) / 17.0 - 20.0;
}

void generate_case(std::size_t n, std::vector<double>& matrix, std::vector<double>& vec) {
    matrix.resize(n * n);
    vec.resize(n);
    for (std::size_t i = 0; i < n; ++i) {
        vec[i] = deterministic_value(i, i + 3);
    }
    for (std::size_t r = 0; r < n; ++r) {
        for (std::size_t c = 0; c < n; ++c) {
            matrix[r * n + c] = deterministic_value(r, c);
        }
    }
}

NOINLINE void dot_naive_col(const double* matrix, const double* vec, double* out, std::size_t n) {
    for (std::size_t i = 0; i < n; ++i) {
        double sum = 0.0;
        for (std::size_t j = 0; j < n; ++j) {
            sum += matrix[j * n + i] * vec[j];
        }
        out[i] = sum;
    }
}

NOINLINE void dot_row_major(const double* matrix, const double* vec, double* out, std::size_t n) {
    std::fill(out, out + n, 0.0);
    for (std::size_t j = 0; j < n; ++j) {
        const double a = vec[j];
        const double* row = matrix + j * n;
        for (std::size_t i = 0; i < n; ++i) {
            out[i] += row[i] * a;
        }
    }
}

double max_abs_diff(const std::vector<double>& a, const std::vector<double>& b) {
    double ans = 0.0;
    for (std::size_t i = 0; i < a.size(); ++i) {
        ans = std::max(ans, std::abs(a[i] - b[i]));
    }
    return ans;
}

template <class Func>
double measure_once(Func&& func, int repeats) {
    const auto begin = Clock::now();
    for (int r = 0; r < repeats; ++r) {
        func();
    }
    const auto end = Clock::now();
    std::chrono::duration<double, std::milli> elapsed = end - begin;
    return elapsed.count() / static_cast<double>(repeats);
}

template <class Func>
int choose_repeats(Func&& func, double target_ms = 220.0) {
    int repeats = 1;
    while (repeats < (1 << 20)) {
        const double total_ms = measure_once(func, repeats) * repeats;
        if (total_ms >= target_ms) {
            break;
        }
        repeats *= 2;
    }
    return repeats;
}

template <class Func>
double benchmark(Func&& func, int& repeats, int rounds = 5) {
    repeats = choose_repeats(func);
    double best = std::numeric_limits<double>::max();
    for (int k = 0; k < rounds; ++k) {
        const double ms = measure_once(func, repeats);
        best = std::min(best, ms);
    }
    return best;
}

std::vector<std::size_t> default_sizes() {
    return {
        64, 128, 192, 256, 320, 384, 448, 512,
        640, 768, 896, 1024, 1280, 1536, 1792, 2048
    };
}

std::vector<BenchRow> run_benchmark(const std::vector<std::size_t>& sizes) {
    std::vector<BenchRow> rows;

    for (std::size_t n : sizes) {
        std::vector<double> matrix;
        std::vector<double> vec;
        std::vector<double> out_naive(n), out_opt(n);
        generate_case(n, matrix, vec);

        dot_naive_col(matrix.data(), vec.data(), out_naive.data(), n);
        dot_row_major(matrix.data(), vec.data(), out_opt.data(), n);
        const double diff = max_abs_diff(out_naive, out_opt);

        int naive_repeats = 1;
        int opt_repeats = 1;

        const double naive_ms = benchmark([&] {
            dot_naive_col(matrix.data(), vec.data(), out_naive.data(), n);
            g_sink += out_naive[n / 2];
        }, naive_repeats);

        const double opt_ms = benchmark([&] {
            dot_row_major(matrix.data(), vec.data(), out_opt.data(), n);
            g_sink += out_opt[n / 2];
        }, opt_repeats);

        BenchRow row;
        row.n = n;
        row.working_set_mib = static_cast<double>((matrix.size() + vec.size() + out_naive.size()) * sizeof(double)) / 1024.0 / 1024.0;
        row.repeats = std::max(naive_repeats, opt_repeats);
        row.naive_ms = naive_ms;
        row.optimized_ms = opt_ms;
        row.speedup = naive_ms / opt_ms;
        row.max_diff = diff;
        rows.push_back(row);
    }

    return rows;
}

void write_csv(const std::vector<BenchRow>& rows, const fs::path& path) {
    std::ofstream out(path);
    out << "n,working_set_mib,repeats,naive_ms,optimized_ms,speedup,max_diff\n";
    out << std::fixed << std::setprecision(6);
    for (const auto& row : rows) {
        out << row.n << ','
            << row.working_set_mib << ','
            << row.repeats << ','
            << row.naive_ms << ','
            << row.optimized_ms << ','
            << row.speedup << ','
            << row.max_diff << '\n';
    }
}

void print_summary(const std::vector<BenchRow>& rows) {
    std::cout << "n\tset(MiB)\tnaive(ms)\topt(ms)\tspeedup\tmax_diff\n";
    for (const auto& row : rows) {
        std::cout << row.n << '\t'
                  << std::fixed << std::setprecision(2) << row.working_set_mib << '\t'
                  << std::setprecision(4) << row.naive_ms << '\t'
                  << row.optimized_ms << '\t'
                  << std::setprecision(2) << row.speedup << '\t'
                  << std::scientific << row.max_diff << '\n';
    }
}

int main(int argc, char** argv) {
    std::vector<std::size_t> sizes = default_sizes();
    std::string output = "../result/dot.csv";

    if (argc >= 2) {
        output = argv[1];
    }

    const auto rows = run_benchmark(sizes);
    write_csv(rows, output);
    print_summary(rows);

    std::cout << "\nCSV written to: " << output << '\n';
    std::cout << "sink = " << g_sink << '\n';
    return 0;
}