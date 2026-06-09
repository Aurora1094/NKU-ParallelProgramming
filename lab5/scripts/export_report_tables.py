import csv
import sys
from pathlib import Path


ROOT = Path(__file__).resolve().parents[1]
RESULTS_DIR = ROOT / "results"
SUMMARY_MAIN = RESULTS_DIR / "summary_main.csv"


def read_summary():
    if not SUMMARY_MAIN.exists():
        raise FileNotFoundError(
            f"{SUMMARY_MAIN} not found. Run scripts/summarize_results.py first."
        )
    with SUMMARY_MAIN.open("r", encoding="utf-8", newline="") as f:
        return list(csv.DictReader(f))


def write_csv(path, rows, fields):
    path.parent.mkdir(parents=True, exist_ok=True)
    with path.open("w", encoding="utf-8", newline="") as f:
        writer = csv.DictWriter(f, fieldnames=fields)
        writer.writeheader()
        writer.writerows(rows)
    print(f"wrote {path.relative_to(ROOT)} rows={len(rows)}")


def number(value):
    if value is None:
        return None
    text = str(value).strip()
    if not text or text.upper() == "NA":
        return None
    try:
        return float(text)
    except ValueError:
        return None


def text_int(value):
    parsed = number(value)
    if parsed is None:
        return ""
    return str(int(parsed))


def fmt(value):
    if value is None:
        return "NA"
    return f"{value:.10g}"


def percent_change(numerator, denominator):
    num = number(numerator)
    den = number(denominator)
    if num is None or den is None or den == 0:
        return "NA"
    return fmt(100.0 * num / den)


def improvement_percent(baseline, current):
    base = number(baseline)
    cur = number(current)
    if base is None or cur is None or base == 0:
        return "NA"
    return fmt(100.0 * (base - cur) / base)


def parse_extra(extra):
    parsed = {}
    for part in (extra or "").split(";"):
        if "=" not in part:
            continue
        key, value = part.split("=", 1)
        parsed[key.strip()] = value.strip()
    return parsed


def sort_key(row, fields):
    key = []
    for field in fields:
        value = row.get(field, "")
        parsed = number(value)
        key.append(parsed if parsed is not None else value)
    return tuple(key)


def prefer_flat_rows(rows):
    candidates = [
        row
        for row in rows
        if row.get("mode") in {"gpu_flat_cpu_topk", "gpu_flat_gpu_topk"}
        and row.get("query_count") == "2000"
        and row.get("nlist") == "512"
        and row.get("nprobe") in {"32", "64"}
    ]

    # Flat ignores nprobe, so keep one row per mode/batch/query. Prefer nprobe=32
    # from the dedicated top-k sweep, then fall back to nprobe=64 from fig1.
    best = {}
    for row in candidates:
        key = (row["mode"], row["batch_size"], row["query_count"])
        priority = 0 if row.get("nprobe") == "32" else 1
        current = best.get(key)
        if current is None or priority < current[0]:
            best[key] = (priority, row)
    return [item[1] for item in best.values()]


def export_flat_topk(rows):
    selected = prefer_flat_rows(rows)
    latencies = {
        (row["mode"], row["batch_size"], row["query_count"]): number(
            row.get("latency_us_mean")
        )
        for row in selected
    }

    output = []
    for row in selected:
        key_tail = (row["batch_size"], row["query_count"])
        cpu_latency = latencies.get(("gpu_flat_cpu_topk",) + key_tail)
        gpu_latency = latencies.get(("gpu_flat_gpu_topk",) + key_tail)
        speedup = None
        if cpu_latency is not None and gpu_latency not in (None, 0):
            speedup = cpu_latency / gpu_latency
        output.append(
            {
                "mode": row["mode"],
                "batch_size": row["batch_size"],
                "query_count": row["query_count"],
                "recall_mean": row["recall_mean"],
                "latency_us_mean": row["latency_us_mean"],
                "count": row["count"],
                "topk_speedup": fmt(speedup),
            }
        )

    output.sort(key=lambda r: sort_key(r, ["batch_size", "query_count", "mode"]))
    write_csv(
        RESULTS_DIR / "report_table_flat_topk.csv",
        output,
        [
            "mode",
            "batch_size",
            "query_count",
            "recall_mean",
            "latency_us_mean",
            "count",
            "topk_speedup",
        ],
    )


def export_ivf_nprobe(rows):
    output = [
        {
            "nprobe": row["nprobe"],
            "recall_mean": row["recall_mean"],
            "latency_us_mean": row["latency_us_mean"],
            "avg_overlap_ratio_mean": row["avg_overlap_ratio_mean"],
            "avg_unique_probe_lists_mean": row["avg_unique_probe_lists_mean"],
            "count": row["count"],
        }
        for row in rows
        if row.get("mode") == "gpu_ivf"
        and row.get("batch_size") == "128"
        and row.get("query_count") == "2000"
    ]
    output.sort(key=lambda r: sort_key(r, ["nprobe"]))
    write_csv(
        RESULTS_DIR / "report_table_ivf_nprobe.csv",
        output,
        [
            "nprobe",
            "recall_mean",
            "latency_us_mean",
            "avg_overlap_ratio_mean",
            "avg_unique_probe_lists_mean",
            "count",
        ],
    )


def export_grouping(rows):
    selected = [
        row
        for row in rows
        if row.get("mode", "").startswith("gpu_ivf")
        and not row.get("mode", "").startswith("gpu_ivf_pq")
        and row.get("query_count") == "2000"
        and row.get("batch_size") == "128"
        and row.get("nprobe") == "16"
    ]
    baseline = next((row for row in selected if row.get("mode") == "gpu_ivf"), None)

    output = []
    for row in selected:
        output.append(
            {
                "mode": row["mode"],
                "recall_mean": row["recall_mean"],
                "latency_us_mean": row["latency_us_mean"],
                "avg_overlap_ratio_mean": row["avg_overlap_ratio_mean"],
                "avg_unique_probe_lists_mean": row["avg_unique_probe_lists_mean"],
                "count": row["count"],
                "latency_improvement_percent": improvement_percent(
                    baseline.get("latency_us_mean") if baseline else None,
                    row.get("latency_us_mean"),
                ),
                "unique_lists_reduction_percent": improvement_percent(
                    baseline.get("avg_unique_probe_lists_mean") if baseline else None,
                    row.get("avg_unique_probe_lists_mean"),
                ),
                "overlap_gain_percent": percent_change(
                    (
                        number(row.get("avg_overlap_ratio_mean"))
                        - number(baseline.get("avg_overlap_ratio_mean"))
                    )
                    if baseline
                    and number(row.get("avg_overlap_ratio_mean")) is not None
                    and number(baseline.get("avg_overlap_ratio_mean")) is not None
                    else None,
                    baseline.get("avg_overlap_ratio_mean") if baseline else None,
                ),
            }
        )

    output.sort(key=lambda r: (0 if r["mode"] == "gpu_ivf" else 1, r["mode"]))
    write_csv(
        RESULTS_DIR / "report_table_grouping_128_16.csv",
        output,
        [
            "mode",
            "recall_mean",
            "latency_us_mean",
            "avg_overlap_ratio_mean",
            "avg_unique_probe_lists_mean",
            "count",
            "latency_improvement_percent",
            "unique_lists_reduction_percent",
            "overlap_gain_percent",
        ],
    )


def export_batch_overlap(rows):
    batch_sizes = {"64", "128", "256", "512", "1024"}
    output = [
        {
            "batch_size": row["batch_size"],
            "recall_mean": row["recall_mean"],
            "latency_us_mean": row["latency_us_mean"],
            "avg_overlap_ratio_mean": row["avg_overlap_ratio_mean"],
            "avg_unique_probe_lists_mean": row["avg_unique_probe_lists_mean"],
        }
        for row in rows
        if row.get("mode") == "gpu_ivf"
        and row.get("batch_size") in batch_sizes
        and row.get("nprobe") == "16"
        and row.get("query_count") == "2000"
    ]
    output.sort(key=lambda r: sort_key(r, ["batch_size"]))
    write_csv(
        RESULTS_DIR / "report_table_batch_overlap.csv",
        output,
        [
            "batch_size",
            "recall_mean",
            "latency_us_mean",
            "avg_overlap_ratio_mean",
            "avg_unique_probe_lists_mean",
        ],
    )


def export_pq(rows):
    output = []
    for row in rows:
        if not row.get("mode", "").startswith("gpu_ivf_pq"):
            continue
        extra = parse_extra(row.get("extra", ""))
        output.append(
            {
                "mode": row["mode"],
                "nprobe": row["nprobe"],
                "recall_mean": row["recall_mean"],
                "latency_us_mean": row["latency_us_mean"],
                "extra": row["extra"],
                "count": row["count"],
                "pq_m": extra.get("pq_m", ""),
                "pq_ksub": extra.get("pq_ksub", ""),
                "pq_iters": extra.get("pq_iters", ""),
                "pq_metric": extra.get("pq_metric", ""),
                "compression_ratio": extra.get("compression_ratio", ""),
            }
        )

    output.sort(key=lambda r: sort_key(r, ["mode", "nprobe", "pq_m", "pq_ksub"]))
    write_csv(
        RESULTS_DIR / "report_table_pq.csv",
        output,
        [
            "mode",
            "nprobe",
            "recall_mean",
            "latency_us_mean",
            "extra",
            "count",
            "pq_m",
            "pq_ksub",
            "pq_iters",
            "pq_metric",
            "compression_ratio",
        ],
    )


def main():
    try:
        rows = read_summary()
    except FileNotFoundError as exc:
        print(str(exc), file=sys.stderr)
        return 1

    export_flat_topk(rows)
    export_ivf_nprobe(rows)
    export_grouping(rows)
    export_batch_overlap(rows)
    export_pq(rows)
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
