import csv
from collections import Counter, defaultdict
from pathlib import Path
from statistics import mean, stdev


ROOT = Path(__file__).resolve().parents[1]
RESULTS_DIR = ROOT / "results"

MAIN_INPUTS = [
    RESULTS_DIR / "fig1_gpu_batch.csv",
    RESULTS_DIR / "fig2_topk.csv",
    RESULTS_DIR / "fig3_grouping.csv",
    RESULTS_DIR / "advanced_grouping_samples.csv",
    RESULTS_DIR / "advanced_topk_samples.csv",
    RESULTS_DIR / "pq.csv",
    RESULTS_DIR / "pq_grouping.csv",
]

LEGACY_MAIN_INPUTS = [
    RESULTS_DIR / "all.csv",
    RESULTS_DIR / "batch.csv",
    RESULTS_DIR / "ivf.csv",
    RESULTS_DIR / "grouping.csv",
]

BATCH_INPUTS = [
    RESULTS_DIR / "fig1_batch_stats.csv",
    RESULTS_DIR / "fig2_topk_batch_stats.csv",
    RESULTS_DIR / "fig3_grouping_batch_stats.csv",
    RESULTS_DIR / "advanced_grouping_batch_stats.csv",
    RESULTS_DIR / "advanced_topk_batch_stats.csv",
    RESULTS_DIR / "pq_batch_stats.csv",
    RESULTS_DIR / "pq_grouping_batch_stats.csv",
]

GROUP_BY = [
    "mode",
    "batch_size",
    "query_count",
    "nlist",
    "nprobe",
    "kmeans_iters",
    "extra",
]

SUMMARY_MAIN = RESULTS_DIR / "summary_main.csv"
SUMMARY_BATCH = RESULTS_DIR / "summary_batch_stats.csv"


def display_path(path):
    try:
        return str(path.relative_to(ROOT))
    except ValueError:
        return str(path)


def line_count(path):
    if not path.exists():
        return 0
    with path.open("r", encoding="utf-8", newline="") as f:
        return sum(1 for _ in f)


def load_rows(path):
    total_lines = line_count(path)
    if not path.exists() or path.stat().st_size == 0:
        return [], total_lines

    with path.open("r", encoding="utf-8", newline="") as f:
        reader = csv.DictReader(f)
        rows = [
            row
            for row in reader
            if any((value or "").strip() for value in row.values())
        ]
    return rows, total_lines


def print_file_stats(path, rows, total_lines):
    label = display_path(path)
    if not path.exists() or total_lines <= 1 or not rows:
        print(f"{label}: total_lines={total_lines} data_rows=0 skipped empty/header-only")
        return

    print(f"{label}: total_lines={total_lines} data_rows={len(rows)}")
    modes = Counter(row.get("mode", "") for row in rows)
    for mode, count in sorted(modes.items()):
        print(f"  {mode}: {count}")


def parse_number(value):
    if value is None:
        return None
    text = str(value).strip()
    if not text or text.upper() == "NA":
        return None
    try:
        return float(text)
    except ValueError:
        return None


def format_number(value):
    if value is None:
        return "NA"
    return f"{value:.10g}"


def mean_value(rows, field):
    values = [parse_number(row.get(field)) for row in rows]
    values = [value for value in values if value is not None]
    if not values:
        return None
    return mean(values)


def std_value(rows, field):
    values = [parse_number(row.get(field)) for row in rows]
    values = [value for value in values if value is not None]
    if not values:
        return None
    if len(values) == 1:
        return 0.0
    return stdev(values)


def group_rows(rows):
    groups = defaultdict(list)
    for row in rows:
        key = tuple(row.get(field, "") for field in GROUP_BY)
        groups[key].append(row)
    return groups


def collect_rows(paths):
    all_rows = []
    for path in paths:
        rows, total_lines = load_rows(path)
        print_file_stats(path, rows, total_lines)
        all_rows.extend(rows)
    return all_rows


def write_main_summary(rows):
    fields = GROUP_BY + [
        "recall_mean",
        "recall_std",
        "latency_us_mean",
        "latency_us_std",
        "avg_overlap_ratio_mean",
        "avg_unique_probe_lists_mean",
        "count",
    ]

    groups = group_rows(rows)
    with SUMMARY_MAIN.open("w", encoding="utf-8", newline="") as f:
        writer = csv.DictWriter(f, fieldnames=fields)
        writer.writeheader()
        for key in sorted(groups):
            values = groups[key]
            row = dict(zip(GROUP_BY, key))
            row.update(
                {
                    "recall_mean": format_number(mean_value(values, "recall")),
                    "recall_std": format_number(std_value(values, "recall")),
                    "latency_us_mean": format_number(mean_value(values, "latency_us")),
                    "latency_us_std": format_number(std_value(values, "latency_us")),
                    "avg_overlap_ratio_mean": format_number(
                        mean_value(values, "avg_overlap_ratio")
                    ),
                    "avg_unique_probe_lists_mean": format_number(
                        mean_value(values, "avg_unique_probe_lists")
                    ),
                    "count": len(values),
                }
            )
            writer.writerow(row)


def write_batch_summary(rows):
    fields = GROUP_BY + [
        "latency_batch_us_mean",
        "latency_batch_us_std",
        "avg_overlap_ratio_mean",
        "unique_probe_lists_mean",
        "estimated_scanned_vectors_mean",
        "avg_estimated_cost_mean",
        "batch_count",
    ]

    groups = group_rows(rows)
    with SUMMARY_BATCH.open("w", encoding="utf-8", newline="") as f:
        writer = csv.DictWriter(f, fieldnames=fields)
        writer.writeheader()
        for key in sorted(groups):
            values = groups[key]
            row = dict(zip(GROUP_BY, key))
            row.update(
                {
                    "latency_batch_us_mean": format_number(
                        mean_value(values, "latency_batch_us")
                    ),
                    "latency_batch_us_std": format_number(
                        std_value(values, "latency_batch_us")
                    ),
                    "avg_overlap_ratio_mean": format_number(
                        mean_value(values, "avg_overlap_ratio")
                    ),
                    "unique_probe_lists_mean": format_number(
                        mean_value(values, "unique_probe_lists")
                    ),
                    "estimated_scanned_vectors_mean": format_number(
                        mean_value(values, "estimated_scanned_vectors")
                    ),
                    "avg_estimated_cost_mean": format_number(
                        mean_value(values, "avg_estimated_cost")
                    ),
                    "batch_count": len(values),
                }
            )
            writer.writerow(row)


def main():
    RESULTS_DIR.mkdir(parents=True, exist_ok=True)

    print("Main result inputs")
    main_rows = collect_rows(MAIN_INPUTS + LEGACY_MAIN_INPUTS)
    write_main_summary(main_rows)
    print(f"wrote {display_path(SUMMARY_MAIN)} rows={len(group_rows(main_rows))}")

    print()
    print("Batch stats inputs")
    batch_rows = collect_rows(BATCH_INPUTS)
    write_batch_summary(batch_rows)
    print(f"wrote {display_path(SUMMARY_BATCH)} rows={len(group_rows(batch_rows))}")


if __name__ == "__main__":
    main()
