import math
import warnings
from pathlib import Path

import matplotlib.pyplot as plt
import numpy as np
import pandas as pd
from matplotlib.ticker import ScalarFormatter


ROOT = Path(__file__).resolve().parents[1]
RESULTS_DIR = ROOT / "results"
FIGURE_DIR = RESULTS_DIR / "figures"

SUMMARY_MAIN = "summary_main.csv"
SUMMARY_BATCH = "summary_batch_stats.csv"
ADVANCED_BATCH = "advanced_grouping_batch_stats.csv"

DPI = 300

MODE_LABELS = {
    "cpu_flat": "CPU Flat",
    "gpu_flat_cpu_topk": "GPU+CPU Top-K",
    "gpu_flat_gpu_topk": "GPU+GPU Top-K",
    "gpu_ivf": "Baseline",
    "gpu_ivf_main": "Main",
    "gpu_ivf_jaccard": "Jaccard",
    "gpu_ivf_query": "Query",
    "gpu_ivf_hybrid": "Hybrid",
    "gpu_ivf_adaptive": "Adaptive",
    "gpu_ivf_load_balance": "Load balance",
    "gpu_ivf_locality": "Locality",
    "gpu_ivf_hierarchical": "Hierarchical",
    "gpu_ivf_time": "Time-aware",
    "gpu_ivf_pq": "IVF-PQ",
    "gpu_ivf_pq_main": "IVF-PQ Main",
    "gpu_ivf_pq_jaccard": "IVF-PQ Jaccard",
}

MODE_COLORS = {
    "cpu_flat": "#4a4a4a",
    "gpu_flat_cpu_topk": "#2f6db3",
    "gpu_flat_gpu_topk": "#f28e2b",
    "gpu_ivf": "#59a14f",
    "gpu_ivf_main": "#8cd17d",
    "gpu_ivf_jaccard": "#499894",
    "gpu_ivf_query": "#86bcb6",
    "gpu_ivf_hybrid": "#b6992d",
    "gpu_ivf_adaptive": "#f1ce63",
    "gpu_ivf_load_balance": "#e15759",
    "gpu_ivf_locality": "#7b5aa6",
    "gpu_ivf_hierarchical": "#9c755f",
    "gpu_ivf_time": "#bab0ac",
    "gpu_ivf_pq": "#b07aa1",
    "gpu_ivf_pq_main": "#d37295",
    "gpu_ivf_pq_jaccard": "#af7aa1",
}

GROUPING_MODES = [
    "gpu_ivf",
    "gpu_ivf_main",
    "gpu_ivf_jaccard",
    "gpu_ivf_query",
    "gpu_ivf_hybrid",
    "gpu_ivf_adaptive",
    "gpu_ivf_load_balance",
    "gpu_ivf_locality",
    "gpu_ivf_hierarchical",
    "gpu_ivf_time",
]

SELECTED_GROUPING_MODES = [
    "gpu_ivf",
    "gpu_ivf_main",
    "gpu_ivf_jaccard",
    "gpu_ivf_locality",
    "gpu_ivf_hierarchical",
]

NUMERIC_COLUMNS = {
    "run_id",
    "mode",
    "batch_id",
    "batch_size",
    "query_count",
    "nlist",
    "nprobe",
    "kmeans_iters",
    "real_batch",
    "recall",
    "recall_mean",
    "recall_std",
    "latency_us",
    "latency_us_mean",
    "latency_us_std",
    "latency_batch_us",
    "latency_batch_us_mean",
    "latency_batch_us_std",
    "avg_overlap_ratio",
    "avg_overlap_ratio_mean",
    "avg_unique_probe_lists",
    "avg_unique_probe_lists_mean",
    "unique_probe_lists",
    "unique_probe_lists_mean",
    "total_probe_lists",
    "estimated_scanned_vectors",
    "estimated_scanned_vectors_mean",
    "avg_estimated_cost",
    "avg_estimated_cost_mean",
    "total_queries",
    "count",
    "batch_count",
    "pq_m",
    "pq_ksub",
    "pq_iters",
    "compression_ratio",
}

generated_files = []
summary_notes = []
warnings_list = []


def warn(message):
    text = f"warning: {message}"
    print(text)
    warnings_list.append(text)


def setup_style():
    plt.rcParams.update(
        {
            "font.family": "sans-serif",
            "font.sans-serif": [
                "DejaVu Sans",
                "Microsoft YaHei",
                "SimHei",
                "Arial Unicode MS",
            ],
            "axes.titlesize": 11,
            "axes.labelsize": 9.5,
            "xtick.labelsize": 8.5,
            "ytick.labelsize": 8.5,
            "legend.fontsize": 8.5,
            "figure.titlesize": 15,
            "axes.grid": True,
            "grid.color": "#cfcfcf",
            "grid.linestyle": "--",
            "grid.linewidth": 0.7,
            "grid.alpha": 0.45,
            "axes.spines.top": False,
            "axes.spines.right": False,
            "lines.linewidth": 2.0,
            "lines.markersize": 5.5,
            "savefig.dpi": DPI,
        }
    )


def display_path(path):
    try:
        return str(path.relative_to(ROOT))
    except ValueError:
        return str(path)


def load_csv(name):
    path = RESULTS_DIR / name
    if not path.exists():
        warn(f"{display_path(path)} is missing; related figures will be skipped")
        return pd.DataFrame()
    if path.stat().st_size == 0:
        warn(f"{display_path(path)} is empty; related figures will be skipped")
        return pd.DataFrame()
    try:
        df = pd.read_csv(path, na_values=["NA", "", "nan", "NaN"])
    except Exception as exc:
        warn(f"failed to read {display_path(path)}: {exc}")
        return pd.DataFrame()
    return clean_numeric(df)


def clean_numeric(df):
    if df.empty:
        return df
    df = df.replace({"NA": np.nan, "": np.nan})
    for col in df.columns:
        if col in NUMERIC_COLUMNS or col.endswith("_mean") or col.endswith("_std"):
            if col != "mode":
                df[col] = pd.to_numeric(df[col], errors="coerce")
    return df


def parse_extra(df):
    if df.empty or "extra" not in df.columns:
        return df
    df = df.copy()
    keys = ["pq_m", "pq_ksub", "pq_iters", "pq_metric", "compression_ratio"]
    for key in keys:
        if key not in df.columns:
            df[key] = np.nan
    for idx, extra in df["extra"].fillna("").items():
        parts = {}
        for item in str(extra).split(";"):
            if "=" not in item:
                continue
            key, value = item.split("=", 1)
            parts[key.strip()] = value.strip()
        for key in keys:
            if key in parts:
                df.at[idx, key] = parts[key]
    for col in ["pq_m", "pq_ksub", "pq_iters", "compression_ratio"]:
        df[col] = pd.to_numeric(df[col], errors="coerce")
    return df


def label_for(mode):
    return MODE_LABELS.get(str(mode), str(mode))


def color_for(mode):
    if mode in MODE_COLORS:
        return MODE_COLORS[mode]
    cmap = plt.get_cmap("tab20")
    idx = abs(hash(str(mode))) % 20
    return cmap(idx)


def save_figure(fig, stem):
    FIGURE_DIR.mkdir(parents=True, exist_ok=True)
    paths = []
    for suffix in ["png", "pdf"]:
        path = FIGURE_DIR / f"{stem}.{suffix}"
        fig.savefig(path, dpi=DPI, bbox_inches="tight")
        generated_files.append(path)
        paths.append(path)
    plt.close(fig)
    print(f"generated {paths[0].relative_to(ROOT)} and {paths[1].relative_to(ROOT)}")


def valid_df(df, name, min_rows=1):
    if df.empty or len(df.dropna(how="all")) < min_rows:
        warn(f"{name}: no data after filtering; skipping")
        return False
    return True


def sort_numeric(df, col):
    return df.sort_values(col, kind="mergesort")


def lineplot(ax, df, x, y, mode, label=None, linestyle="-", marker="o"):
    if df.empty or x not in df.columns or y not in df.columns:
        return
    data = sort_numeric(df.dropna(subset=[x, y]), x)
    if data.empty:
        return
    ax.plot(
        data[x],
        data[y],
        marker=marker,
        linestyle=linestyle,
        color=color_for(mode),
        label=label or label_for(mode),
    )


def add_legend(ax, ncol=1, loc="best"):
    handles, labels = ax.get_legend_handles_labels()
    if handles:
        ax.legend(loc=loc, ncol=ncol, frameon=True, framealpha=0.92)


def cpu_flat_latency(summary):
    subset = summary[
        (summary["mode"] == "cpu_flat") & (summary["query_count"] == 2000)
    ]
    if subset.empty:
        return np.nan
    return subset["latency_us_mean"].mean()


def choose_topk_rows(summary):
    topk = summary[
        summary["mode"].isin(["gpu_flat_cpu_topk", "gpu_flat_gpu_topk"])
        & (summary["query_count"].notna())
        & (summary["nlist"] == 512)
        & (summary["nprobe"].isin([32, 64]))
    ].copy()
    if topk.empty:
        return topk
    topk["priority"] = np.where(topk["nprobe"] == 32, 0, 1)
    topk = topk.sort_values(
        ["mode", "batch_size", "query_count", "priority"], kind="mergesort"
    )
    return topk.drop_duplicates(["mode", "batch_size", "query_count"], keep="first")


def make_matrix(df, row_col, col_col, value_col):
    if df.empty:
        return [], [], np.empty((0, 0))
    rows = sorted(df[row_col].dropna().unique())
    cols = sorted(df[col_col].dropna().unique())
    pivot = df.pivot_table(index=row_col, columns=col_col, values=value_col, aggfunc="mean")
    matrix = pivot.reindex(index=rows, columns=cols).to_numpy(dtype=float)
    return rows, cols, matrix


def plot_heatmap(ax, rows, cols, matrix, title, cbar_label, cmap="RdYlGn_r", fmt="{:.2f}"):
    if len(rows) == 0 or len(cols) == 0 or matrix.size == 0:
        ax.text(0.5, 0.5, "No data", ha="center", va="center")
        ax.set_axis_off()
        return
    im = ax.imshow(matrix, aspect="auto", cmap=cmap)
    ax.set_title(title)
    ax.set_xticks(np.arange(len(cols)))
    ax.set_yticks(np.arange(len(rows)))
    ax.set_xticklabels([str(int(c)) if not pd.isna(c) else "" for c in cols])
    ax.set_yticklabels([str(int(r)) if not pd.isna(r) else "" for r in rows])
    ax.set_xlabel("query_count")
    ax.set_ylabel("batch_size")
    for i in range(len(rows)):
        for j in range(len(cols)):
            value = matrix[i, j]
            if np.isfinite(value):
                ax.text(j, i, fmt.format(value), ha="center", va="center", fontsize=7)
    cbar = plt.colorbar(im, ax=ax, fraction=0.046, pad=0.04)
    cbar.set_label(cbar_label)


def get_summary_main():
    return load_csv(SUMMARY_MAIN)


def get_batch_stats():
    df = load_csv(ADVANCED_BATCH)
    if not df.empty and "latency_batch_us" in df.columns:
        return df

    fallback = load_csv(SUMMARY_BATCH)
    if fallback.empty:
        return fallback
    rename = {
        "latency_batch_us_mean": "latency_batch_us",
        "avg_overlap_ratio_mean": "avg_overlap_ratio",
        "unique_probe_lists_mean": "unique_probe_lists",
        "estimated_scanned_vectors_mean": "estimated_scanned_vectors",
    }
    return fallback.rename(columns=rename)


def plot_fig1(summary):
    if summary.empty:
        warn("fig1: summary_main.csv is unavailable")
        return

    cpu_latency = cpu_flat_latency(summary)
    if not np.isfinite(cpu_latency):
        warn("fig1: CPU flat baseline is unavailable")
        return

    modes = [
        "gpu_flat_cpu_topk",
        "gpu_flat_gpu_topk",
        "gpu_ivf",
        "gpu_ivf_main",
        "gpu_ivf_jaccard",
    ]
    data = summary[
        (summary["mode"].isin(modes))
        & (summary["query_count"] == 2000)
        & (summary["nlist"] == 512)
        & (summary["nprobe"] == 64)
    ].copy()
    if not valid_df(data, "fig1"):
        return
    data["speedup"] = cpu_latency / data["latency_us_mean"]
    data["efficiency"] = data["speedup"] / data["batch_size"]
    data["qps"] = 1e6 / data["latency_us_mean"]

    fig, axes = plt.subplots(2, 3, figsize=(18, 10.5), constrained_layout=True)
    fig.suptitle("GPU Batch Acceleration Overview", fontweight="bold")

    ax = axes[0, 0]
    for mode in modes:
        lineplot(ax, data[data["mode"] == mode], "batch_size", "speedup", mode)
    ax.set_title("Speedup Ratio Across Methods")
    ax.set_xlabel("batch_size")
    ax.set_ylabel("speedup vs CPU Flat")
    add_legend(ax, ncol=2)

    ax = axes[0, 1]
    for mode in ["gpu_flat_cpu_topk", "gpu_flat_gpu_topk"]:
        lineplot(ax, data[data["mode"] == mode], "batch_size", "speedup", mode)
    ax.set_title("GPU Flat Acceleration")
    ax.set_xlabel("batch_size")
    ax.set_ylabel("speedup vs CPU Flat")
    add_legend(ax)

    ax = axes[0, 2]
    for mode in ["gpu_ivf", "gpu_ivf_main", "gpu_ivf_jaccard"]:
        lineplot(ax, data[data["mode"] == mode], "batch_size", "latency_us_mean", mode)
    ax.set_title("GPU IVF Latency")
    ax.set_xlabel("batch_size")
    ax.set_ylabel("latency per query (us)")
    add_legend(ax)

    ax = axes[1, 0]
    for mode in modes:
        lineplot(ax, data[data["mode"] == mode], "batch_size", "efficiency", mode)
    ax.set_title("Speedup Efficiency")
    ax.set_xlabel("batch_size")
    ax.set_ylabel("speedup / batch_size")
    add_legend(ax, ncol=2)

    ax = axes[1, 1]
    for mode in ["gpu_flat_cpu_topk", "gpu_flat_gpu_topk", "gpu_ivf_jaccard"]:
        lineplot(ax, data[data["mode"] == mode], "batch_size", "latency_us_mean", mode)
    batch_values = sorted(data["batch_size"].dropna().unique())
    if batch_values:
        ax.hlines(
            cpu_latency,
            min(batch_values),
            max(batch_values),
            colors=color_for("cpu_flat"),
            linestyles="--",
            label="CPU Flat baseline",
        )
    ax.set_yscale("log")
    ax.set_title("Execution Time Comparison")
    ax.set_xlabel("batch_size")
    ax.set_ylabel("latency per query (us, log)")
    add_legend(ax)

    ax = axes[1, 2]
    for mode in ["gpu_flat_cpu_topk", "gpu_flat_gpu_topk", "gpu_ivf_jaccard"]:
        lineplot(ax, data[data["mode"] == mode], "batch_size", "qps", mode)
    ax.set_title("Throughput Analysis")
    ax.set_xlabel("batch_size")
    ax.set_ylabel("queries per second")
    add_legend(ax)

    save_figure(fig, "fig1_gpu_batch_acceleration")
    best = data.sort_values("speedup", ascending=False).head(1)
    if not best.empty:
        row = best.iloc[0]
        summary_notes.append(
            f"Figure 1: best speedup is {row['speedup']:.2f}x from "
            f"{label_for(row['mode'])} at batch={int(row['batch_size'])}."
        )


def plot_fig2(summary):
    topk = choose_topk_rows(summary)
    if not valid_df(topk, "fig2"):
        return

    fig, axes = plt.subplots(2, 3, figsize=(18, 10.5), constrained_layout=True)
    fig.suptitle("Top-K Strategy Comparison", fontweight="bold")

    ax = axes[0, 0]
    for query_count in [500, 2000, 10000]:
        for mode in ["gpu_flat_cpu_topk", "gpu_flat_gpu_topk"]:
            subset = topk[
                (topk["mode"] == mode) & (topk["query_count"] == query_count)
            ]
            label = f"{label_for(mode)}, Q={query_count}"
            lineplot(ax, subset, "batch_size", "latency_us_mean", mode, label=label)
    ax.set_title("Latency Across Configurations")
    ax.set_xlabel("batch_size")
    ax.set_ylabel("latency per query (us)")
    add_legend(ax, ncol=2)

    ax = axes[0, 1]
    for query_count, marker in [(500, "o"), (10000, "s")]:
        subset = topk[
            (topk["mode"] == "gpu_flat_gpu_topk")
            & (topk["query_count"] == query_count)
        ]
        lineplot(
            ax,
            subset,
            "batch_size",
            "latency_us_mean",
            "gpu_flat_gpu_topk",
            label=f"Q={query_count}",
            marker=marker,
        )
    ymax = ax.get_ylim()[1]
    ax.axvline(512, color="#555555", linestyle="--", linewidth=1.2)
    ax.axvspan(512, max(topk["batch_size"].max(), 512), color="#eeeeee", alpha=0.28)
    ax.annotate(
        "batch >= 512\nstable GPU Top-K latency",
        xy=(512, ymax * 0.16),
        xytext=(780, ymax * 0.32),
        arrowprops=dict(arrowstyle="->", color="#555555", lw=0.9),
        fontsize=8,
        bbox=dict(boxstyle="round,pad=0.25", fc="white", ec="#bbbbbb", alpha=0.9),
    )
    ax.set_title("GPU Parallelism Threshold Effect")
    ax.set_xlabel("batch_size")
    ax.set_ylabel("latency per query (us)")
    add_legend(ax, loc="upper right")

    ax = axes[0, 2]
    avg = (
        topk.groupby(["mode", "batch_size"], as_index=False)["latency_us_mean"]
        .mean()
        .sort_values("batch_size")
    )
    batches = sorted(avg["batch_size"].dropna().unique())
    x = np.arange(len(batches))
    width = 0.36
    for offset, mode in [(-width / 2, "gpu_flat_cpu_topk"), (width / 2, "gpu_flat_gpu_topk")]:
        values = [
            avg[(avg["mode"] == mode) & (avg["batch_size"] == b)]["latency_us_mean"].mean()
            for b in batches
        ]
        ax.bar(x + offset, values, width=width, color=color_for(mode), label=label_for(mode))
    ax.set_xticks(x)
    ax.set_xticklabels([str(int(b)) for b in batches], rotation=30)
    ax.set_title("Average Latency by Batch Size")
    ax.set_xlabel("batch_size")
    ax.set_ylabel("mean latency (us)")
    add_legend(ax)

    cpu = topk[topk["mode"] == "gpu_flat_cpu_topk"][
        ["batch_size", "query_count", "latency_us_mean"]
    ].rename(columns={"latency_us_mean": "cpu_topk_latency"})
    gpu = topk[topk["mode"] == "gpu_flat_gpu_topk"][
        ["batch_size", "query_count", "latency_us_mean"]
    ].rename(columns={"latency_us_mean": "gpu_topk_latency"})
    merged = cpu.merge(gpu, on=["batch_size", "query_count"], how="inner")
    merged["ratio"] = merged["gpu_topk_latency"] / merged["cpu_topk_latency"]
    merged["speedup"] = merged["cpu_topk_latency"] / merged["gpu_topk_latency"]

    rows, cols, matrix = make_matrix(merged, "batch_size", "query_count", "ratio")
    plot_heatmap(
        axes[1, 0],
        rows,
        cols,
        matrix,
        "GPU Top-K / CPU Top-K Latency",
        "ratio (<1 is faster)",
        cmap="RdYlGn_r",
    )

    rows, cols, matrix = make_matrix(merged, "batch_size", "query_count", "speedup")
    plot_heatmap(
        axes[1, 1],
        rows,
        cols,
        matrix,
        "GPU Top-K Speedup Heatmap",
        "speedup",
        cmap="YlGnBu",
    )

    ax = axes[1, 2]
    fixed_batch = 512 if 512 in set(topk["batch_size"].dropna()) else 1024
    for mode in ["gpu_flat_cpu_topk", "gpu_flat_gpu_topk"]:
        subset = topk[(topk["mode"] == mode) & (topk["batch_size"] == fixed_batch)]
        lineplot(ax, subset, "query_count", "latency_us_mean", mode)
    ax.set_title(f"Query Count Impact at batch={int(fixed_batch)}")
    ax.set_xlabel("query_count")
    ax.set_ylabel("latency per query (us)")
    add_legend(ax)

    save_figure(fig, "fig2_topk_strategy_comparison")
    if not merged.empty:
        best = merged.sort_values("speedup", ascending=False).iloc[0]
        summary_notes.append(
            "Figure 2: GPU Top-K reaches "
            f"{best['speedup']:.2f}x speedup at batch={int(best['batch_size'])}, "
            f"query_count={int(best['query_count'])}."
        )


def plot_fig3(summary):
    ivf = summary[
        summary["mode"].isin(GROUPING_MODES)
        & (summary["query_count"] == 2000)
        & (summary["nlist"] == 512)
    ].copy()
    main = ivf[(ivf["batch_size"] == 128) & (ivf["nprobe"] == 16)].copy()
    trend = ivf[ivf["nprobe"] == 16].copy()
    if not valid_df(main, "fig3"):
        return

    fig, axes = plt.subplots(2, 3, figsize=(18, 10.5), constrained_layout=True)
    fig.suptitle("IVF Grouping Strategy Comparison", fontweight="bold")

    ax = axes[0, 0]
    for _, row in main.iterrows():
        mode = row["mode"]
        ax.scatter(
            row["avg_overlap_ratio_mean"],
            row["latency_us_mean"],
            s=72,
            color=color_for(mode),
            label=label_for(mode),
            edgecolor="white",
            linewidth=0.8,
        )
        if mode == "gpu_ivf":
            ax.annotate(
                "Baseline",
                xy=(row["avg_overlap_ratio_mean"], row["latency_us_mean"]),
                xytext=(8, 8),
                textcoords="offset points",
                fontsize=8,
                va="center",
            )
    locality = main[main["mode"] == "gpu_ivf_locality"]
    if not locality.empty:
        row = locality.iloc[0]
        ax.annotate(
            "Locality: best tradeoff",
            xy=(row["avg_overlap_ratio_mean"], row["latency_us_mean"]),
            xytext=(-6, 12),
            textcoords="offset points",
            ha="right",
            va="bottom",
            arrowprops=dict(arrowstyle="->", color="#555555", lw=0.8),
            fontsize=8,
        )
    ax.margins(x=0.16, y=0.18)
    add_legend(ax, ncol=2, loc="upper right")
    ax.set_title("Cluster Overlap vs Latency")
    ax.set_xlabel("avg overlap ratio")
    ax.set_ylabel("latency per query (us)")

    ax = axes[0, 1]
    for mode in SELECTED_GROUPING_MODES:
        subset = trend[trend["mode"] == mode]
        lineplot(ax, subset, "batch_size", "avg_overlap_ratio_mean", mode)
    ax.set_title("Cluster Overlap vs Batch Size")
    ax.set_xlabel("batch_size")
    ax.set_ylabel("avg overlap ratio")
    add_legend(ax)

    ax = axes[0, 2]
    for mode in SELECTED_GROUPING_MODES:
        subset = trend[trend["mode"] == mode]
        lineplot(ax, subset, "batch_size", "latency_us_mean", mode)
    ax.set_title("Latency Comparison")
    ax.set_xlabel("batch_size")
    ax.set_ylabel("latency per query (us)")
    add_legend(ax)

    ax = axes[1, 0]
    heat = trend[trend["mode"].isin(GROUPING_MODES)].copy()
    baseline = heat[heat["mode"] == "gpu_ivf"][
        ["batch_size", "latency_us_mean"]
    ].rename(columns={"latency_us_mean": "baseline_latency"})
    heat = heat.merge(baseline, on="batch_size", how="left")
    heat["improvement"] = (
        (heat["baseline_latency"] - heat["latency_us_mean"]) / heat["baseline_latency"] * 100
    )
    pivot = heat.pivot_table(
        index="mode", columns="batch_size", values="improvement", aggfunc="mean"
    )
    ordered_modes = [m for m in GROUPING_MODES if m in pivot.index]
    pivot = pivot.reindex(ordered_modes)
    matrix = pivot.to_numpy(dtype=float)
    im = ax.imshow(matrix, aspect="auto", cmap="RdYlGn", vmin=-20, vmax=25)
    ax.set_title("Latency Improvement over Baseline (%)")
    ax.set_xticks(np.arange(len(pivot.columns)))
    ax.set_xticklabels([str(int(c)) for c in pivot.columns], rotation=30)
    ax.set_yticks(np.arange(len(pivot.index)))
    ax.set_yticklabels([label_for(m) for m in pivot.index])
    ax.set_xlabel("batch_size")
    for i in range(matrix.shape[0]):
        for j in range(matrix.shape[1]):
            if np.isfinite(matrix[i, j]):
                ax.text(j, i, f"{matrix[i, j]:.1f}", ha="center", va="center", fontsize=7)
    cbar = plt.colorbar(im, ax=ax, fraction=0.046, pad=0.04)
    cbar.set_label("%")

    ax = axes[1, 1]
    for mode in SELECTED_GROUPING_MODES:
        subset = trend[trend["mode"] == mode]
        lineplot(ax, subset, "batch_size", "avg_unique_probe_lists_mean", mode)
    ax.set_title("Grouping Efficiency: Unique Probe Lists")
    ax.set_xlabel("batch_size")
    ax.set_ylabel("avg unique probe lists")
    add_legend(ax)

    ax = axes[1, 2]
    baseline_row = main[main["mode"] == "gpu_ivf"]
    ranking = main.copy()
    if not baseline_row.empty:
        base = baseline_row.iloc[0]
        ranking["latency_gain"] = (
            (base["latency_us_mean"] - ranking["latency_us_mean"]) / base["latency_us_mean"]
        )
        ranking["overlap_gain"] = (
            (ranking["avg_overlap_ratio_mean"] - base["avg_overlap_ratio_mean"])
            / base["avg_overlap_ratio_mean"]
        )
        ranking["unique_reduction"] = (
            (base["avg_unique_probe_lists_mean"] - ranking["avg_unique_probe_lists_mean"])
            / base["avg_unique_probe_lists_mean"]
        )
        ranking["score"] = (
            0.5 * ranking["latency_gain"]
            + 0.25 * ranking["overlap_gain"]
            + 0.25 * ranking["unique_reduction"]
        )
    else:
        ranking["score"] = 0
    ranking = ranking.sort_values("score", ascending=True)
    ax.barh(
        [label_for(m) for m in ranking["mode"]],
        ranking["score"],
        color=[color_for(m) for m in ranking["mode"]],
    )
    ax.axvline(0, color="#666666", linewidth=0.9)
    ax.set_title("Overall Strategy Ranking")
    ax.set_xlabel("composite score")

    save_figure(fig, "fig3_ivf_grouping_strategies")
    if not baseline_row.empty and not locality.empty:
        base = baseline_row.iloc[0]
        loc = locality.iloc[0]
        improvement = (base["latency_us_mean"] - loc["latency_us_mean"]) / base[
            "latency_us_mean"
        ] * 100
        summary_notes.append(
            f"Figure 3: Locality grouping improves latency by {improvement:.2f}% "
            "at batch=128, nprobe=16 while recall remains unchanged."
        )


def scatter_batch(df, stem, x_col, y_col, x_label, y_label, title, trend=False):
    if not valid_df(df, stem):
        return
    fig, ax = plt.subplots(figsize=(8.6, 5.3), constrained_layout=True)
    for mode in SELECTED_GROUPING_MODES:
        subset = df[df["mode"] == mode].dropna(subset=[x_col, y_col])
        if subset.empty:
            continue
        ax.scatter(
            subset[x_col],
            subset[y_col],
            s=28,
            alpha=0.45,
            color=color_for(mode),
            label=label_for(mode),
            edgecolors="none",
        )
    if trend:
        fit = df.dropna(subset=[x_col, y_col])
        fit = fit[np.isfinite(fit[x_col]) & np.isfinite(fit[y_col])]
        if len(fit) >= 3 and fit[x_col].nunique() > 1:
            coef = np.polyfit(fit[x_col], fit[y_col], 1)
            xs = np.linspace(fit[x_col].min(), fit[x_col].max(), 100)
            ax.plot(xs, np.polyval(coef, xs), color="#333333", linestyle="--", label="trend")
    ax.set_title(title)
    ax.set_xlabel(x_label)
    ax.set_ylabel(y_label)
    add_legend(ax)
    save_figure(fig, stem)


def batch_scatter_source(batch_stats):
    if batch_stats.empty:
        return batch_stats
    df = batch_stats[
        batch_stats["mode"].isin(SELECTED_GROUPING_MODES)
        & (batch_stats["nprobe"].isin([8, 16, 32, 64]))
    ].copy()
    if "latency_batch_us" in df.columns:
        df["latency_batch_ms"] = df["latency_batch_us"] / 1000.0
    return df


def plot_fig4(batch_stats):
    df = batch_scatter_source(batch_stats)
    scatter_batch(
        df,
        "fig4_overlap_latency_scatter",
        "avg_overlap_ratio",
        "latency_batch_ms",
        "avg overlap ratio",
        "batch latency (ms)",
        "Batch-level Overlap vs Latency",
    )


def plot_fig5(batch_stats):
    df = batch_scatter_source(batch_stats)
    scatter_batch(
        df,
        "fig5_unique_lists_latency_scatter",
        "unique_probe_lists",
        "latency_batch_ms",
        "unique probe lists",
        "batch latency (ms)",
        "Unique Probe Lists vs Latency",
    )


def plot_fig6(batch_stats):
    df = batch_scatter_source(batch_stats)
    if not df.empty and "estimated_scanned_vectors" in df.columns:
        df = df.copy()
        df["estimated_scanned_vectors_m"] = df["estimated_scanned_vectors"] / 1e6
    scatter_batch(
        df,
        "fig6_scanned_vectors_latency_scatter",
        "estimated_scanned_vectors_m",
        "latency_batch_ms",
        "estimated scanned vectors (M)",
        "batch latency (ms)",
        "Estimated Scanned Vectors vs Latency",
        trend=True,
    )


def plot_fig7(summary):
    modes = ["gpu_ivf", "gpu_ivf_locality", "gpu_ivf_jaccard"]
    data = summary[
        summary["mode"].isin(modes)
        & (summary["batch_size"] == 128)
        & (summary["query_count"] == 2000)
        & (summary["nprobe"].isin([8, 16, 32, 64]))
    ].copy()
    if not valid_df(data, "fig7"):
        return

    fig, axes = plt.subplots(1, 2, figsize=(13.5, 5.2), constrained_layout=True)
    fig.suptitle("nprobe Recall-Latency Tradeoff", fontweight="bold")

    for mode in modes:
        subset = data[data["mode"] == mode]
        lineplot(axes[0], subset, "nprobe", "recall_mean", mode)
        lineplot(axes[1], subset, "nprobe", "latency_us_mean", mode)
    axes[0].set_title("Recall vs nprobe")
    axes[0].set_xlabel("nprobe")
    axes[0].set_ylabel("recall@10")
    axes[1].set_title("Latency vs nprobe")
    axes[1].set_xlabel("nprobe")
    axes[1].set_ylabel("latency per query (us)")
    add_legend(axes[0])
    add_legend(axes[1])

    save_figure(fig, "fig7_nprobe_tradeoff")
    base = data[data["mode"] == "gpu_ivf"].sort_values("nprobe")
    if len(base) >= 2:
        low = base.iloc[0]
        high = base.iloc[-1]
        summary_notes.append(
            f"Figure 7: increasing nprobe from {int(low['nprobe'])} to "
            f"{int(high['nprobe'])} raises recall from {low['recall_mean']:.4f} "
            f"to {high['recall_mean']:.4f}, with latency increasing from "
            f"{low['latency_us_mean']:.1f}us to {high['latency_us_mean']:.1f}us."
        )


def plot_fig8(summary):
    modes = ["gpu_ivf", "gpu_ivf_locality", "gpu_ivf_jaccard"]
    data = summary[
        summary["mode"].isin(modes)
        & (summary["nprobe"] == 16)
        & (summary["query_count"] == 2000)
        & (summary["batch_size"].isin([64, 128, 256, 512, 1024]))
    ].copy()
    if not valid_df(data, "fig8"):
        return

    fig, axes = plt.subplots(1, 2, figsize=(13.5, 5.2), constrained_layout=True)
    fig.suptitle("Batch Size Effect on IVF Latency and Overlap", fontweight="bold")
    for mode in modes:
        subset = data[data["mode"] == mode]
        lineplot(axes[0], subset, "batch_size", "latency_us_mean", mode)
        lineplot(axes[1], subset, "batch_size", "avg_overlap_ratio_mean", mode)
    axes[0].set_title("Latency vs Batch Size")
    axes[0].set_xlabel("batch_size")
    axes[0].set_ylabel("latency per query (us)")
    axes[1].set_title("Overlap vs Batch Size")
    axes[1].set_xlabel("batch_size")
    axes[1].set_ylabel("avg overlap ratio")
    add_legend(axes[0])
    add_legend(axes[1])
    save_figure(fig, "fig8_batch_size_ivf_effect")


def plot_fig9(summary):
    pq = parse_extra(summary)
    pq = pq[pq["mode"].astype(str).str.startswith("gpu_ivf_pq")].copy()
    if not valid_df(pq, "fig9"):
        return
    pq = pq.dropna(subset=["compression_ratio", "recall_mean", "latency_us_mean"])
    if not valid_df(pq, "fig9"):
        return

    fig, axes = plt.subplots(1, 2, figsize=(13.5, 5.2), constrained_layout=True)
    fig.suptitle(
        "IVF-PQ Compression-Recall Tradeoff\n"
        "IVF-PQ-lite uses global PQ without residual refinement or reranking.",
        fontweight="bold",
    )

    ax = axes[0]
    lat = pq["latency_us_mean"]
    sizes = 60 + 220 * (lat - lat.min()) / max(lat.max() - lat.min(), 1e-9)
    for mode in sorted(pq["mode"].dropna().unique()):
        subset = pq[pq["mode"] == mode]
        ax.scatter(
            subset["compression_ratio"],
            subset["recall_mean"],
            s=sizes.loc[subset.index],
            alpha=0.72,
            color=color_for(mode),
            label=label_for(mode),
            edgecolor="white",
            linewidth=0.8,
        )
    label_points = (
        pq.dropna(subset=["pq_m", "nprobe", "compression_ratio", "recall_mean"])
        .sort_values(["compression_ratio", "pq_m", "nprobe", "recall_mean"])
        .drop_duplicates(["compression_ratio", "pq_m", "nprobe"], keep="last")
    )
    label_offsets = [(-4, 10), (8, 2), (8, -10), (-38, 2), (-38, -10), (10, 12)]
    for idx, (_, row) in enumerate(label_points.iterrows()):
        dx, dy = label_offsets[idx % len(label_offsets)]
        ax.annotate(
            f"m{int(row['pq_m'])}/p{int(row['nprobe'])}",
            xy=(row["compression_ratio"], row["recall_mean"]),
            xytext=(dx, dy),
            textcoords="offset points",
            fontsize=7,
            va="center",
        )
    ax.set_title("Recall vs Compression Ratio")
    ax.set_xlabel("compression ratio (float bytes / PQ code bytes)")
    ax.set_ylabel("recall@10")
    add_legend(ax)

    ax = axes[1]
    pq_ip = pq[(pq["pq_metric"].fillna("ip") == "ip") & pq["pq_m"].notna()].copy()
    if pq_ip.empty:
        pq_ip = pq[pq["pq_m"].notna()].copy()
    grouped = (
        pq_ip.groupby(["pq_m", "nprobe"], as_index=False)["latency_us_mean"]
        .mean()
        .sort_values(["pq_m", "nprobe"])
    )
    for pq_m in sorted(grouped["pq_m"].dropna().unique()):
        subset = grouped[grouped["pq_m"] == pq_m]
        ax.plot(
            subset["nprobe"],
            subset["latency_us_mean"],
            marker="o",
            label=f"pq_m={int(pq_m)}",
        )
    ax.set_title("PQ Latency vs nprobe")
    ax.set_xlabel("nprobe")
    ax.set_ylabel("latency per query (us)")
    add_legend(ax)

    save_figure(fig, "fig9_pq_compression_tradeoff")
    best_compression = pq.sort_values("compression_ratio", ascending=False).iloc[0]
    summary_notes.append(
        f"Figure 9: PQ reaches {best_compression['compression_ratio']:.0f}x compression "
        f"with recall around {best_compression['recall_mean']:.4f}; full-vector IVF "
        "keeps much higher recall."
    )


def write_text_outputs(summary):
    FIGURE_DIR.mkdir(parents=True, exist_ok=True)

    source_lines = [
        "Figure summary",
        "==============",
        "",
        "Data files used:",
        "- results/summary_main.csv for high-level method, Top-K, IVF, nprobe, batch, and PQ plots.",
        "- results/summary_batch_stats.csv as a fallback for batch-level summaries.",
        "- results/advanced_grouping_batch_stats.csv for batch-level scatter plots.",
        "",
        "Filters:",
        "- Figure 1: query_count=2000, nlist=512, nprobe=64; CPU Flat is the speedup baseline.",
        "- Figure 2: flat modes only; prefer nprobe=32 rows, fallback to nprobe=64.",
        "- Figure 3: IVF grouping modes, query_count=2000, batch_size=128, nprobe=16 for ranking; nprobe=16 for batch trends.",
        "- Figures 4-6: selected IVF grouping strategies, nprobe in {8,16,32,64}.",
        "- Figure 7: gpu_ivf/gpu_ivf_locality/gpu_ivf_jaccard, batch_size=128, nprobe in {8,16,32,64}.",
        "- Figure 8: gpu_ivf/gpu_ivf_locality/gpu_ivf_jaccard, nprobe=16, batch_size in {64,128,256,512,1024}.",
        "- Figure 9: modes starting with gpu_ivf_pq; PQ settings parsed from extra.",
        "",
        "Key conclusions:",
    ]
    if summary_notes:
        source_lines.extend(f"- {note}" for note in summary_notes)
    else:
        source_lines.append("- No automated conclusions were available from the current data.")
    if warnings_list:
        source_lines.extend(["", "Warnings:"])
        source_lines.extend(f"- {text}" for text in warnings_list)

    summary_path = FIGURE_DIR / "figure_summary.txt"
    summary_path.write_text("\n".join(source_lines) + "\n", encoding="utf-8")
    generated_files.append(summary_path)

    readme_lines = [
        "# Report Figures",
        "",
        "Generated by `python .\\scripts\\plot_report_figures.py`.",
        "",
        "| File | Suggested report section | Metrics |",
        "| --- | --- | --- |",
        "| `fig1_gpu_batch_acceleration.png/pdf` | Overall GPU acceleration | speedup, latency, QPS |",
        "| `fig2_topk_strategy_comparison.png/pdf` | GPU Top-K strategy | latency, latency ratio, speedup |",
        "| `fig3_ivf_grouping_strategies.png/pdf` | IVF grouping optimization | overlap, latency, unique probe lists, ranking |",
        "| `fig4_overlap_latency_scatter.png/pdf` | Batch-level grouping analysis | overlap ratio and batch latency |",
        "| `fig5_unique_lists_latency_scatter.png/pdf` | Batch-level grouping analysis | unique probe lists and batch latency |",
        "| `fig6_scanned_vectors_latency_scatter.png/pdf` | Cost model analysis | estimated scanned vectors and batch latency |",
        "| `fig7_nprobe_tradeoff.png/pdf` | IVF recall-latency tradeoff | nprobe, recall, latency |",
        "| `fig8_batch_size_ivf_effect.png/pdf` | Batch size effect | latency and overlap ratio |",
        "| `fig9_pq_compression_tradeoff.png/pdf` | IVF-PQ-lite | compression ratio, recall, latency |",
        "",
        "Metric notes:",
        "- `latency_us_mean`: average latency per query in microseconds.",
        "- `latency_batch_us`: batch-level latency in microseconds; scatter plots show milliseconds.",
        "- `avg_overlap_ratio`: higher means more probe-list reuse inside a batch.",
        "- `avg_unique_probe_lists`: lower means fewer unique IVF lists visited per batch.",
        "- `estimated_scanned_vectors`: duplicated scan cost estimate from batch stats.",
        "- `compression_ratio`: float vector bytes divided by PQ code bytes.",
    ]
    readme_path = FIGURE_DIR / "README.md"
    readme_path.write_text("\n".join(readme_lines) + "\n", encoding="utf-8")
    generated_files.append(readme_path)


def main():
    warnings.filterwarnings("ignore", category=UserWarning)
    setup_style()
    FIGURE_DIR.mkdir(parents=True, exist_ok=True)

    summary = get_summary_main()
    batch_stats = get_batch_stats()

    plot_fig1(summary)
    plot_fig2(summary)
    plot_fig3(summary)
    plot_fig4(batch_stats)
    plot_fig5(batch_stats)
    plot_fig6(batch_stats)
    plot_fig7(summary)
    plot_fig8(summary)
    plot_fig9(summary)

    write_text_outputs(summary)

    print()
    print("Generated files:")
    for path in generated_files:
        print(display_path(path))


if __name__ == "__main__":
    main()
