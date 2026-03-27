import csv
import sys
import math
from pathlib import Path

import matplotlib.pyplot as plt
from matplotlib.ticker import LogLocator

plt.rcParams.update({
    'figure.dpi': 160,
    'savefig.dpi': 320,
    'font.size': 11,
    'axes.titlesize': 14,
    'axes.labelsize': 12,
    'legend.fontsize': 10,
    'xtick.labelsize': 10,
    'ytick.labelsize': 10,
    'axes.spines.top': False,
    'axes.spines.right': False,
})


def ensure_dir(path: Path):
    path.mkdir(parents=True, exist_ok=True)


def read_sum_csv(path: Path):
    rows = []
    with open(path, 'r', encoding='utf-8') as f:
        reader = csv.DictReader(f)
        for row in reader:
            rows.append({
                'n': int(row['n']),
                'data_mib': float(row['data_mib']),
                'repeats': int(row['repeats']),
                'chain_ms': float(row['chain_ms']),
                'two_way_ms': float(row['two_way_ms']),
                'four_way_ms': float(row['four_way_ms']),
                'pairwise_ms': float(row['pairwise_ms']),
                'speedup_two_way': float(row['speedup_two_way']),
                'speedup_four_way': float(row['speedup_four_way']),
                'speedup_pairwise': float(row['speedup_pairwise']),
                'abs_diff_two_way': float(row['abs_diff_two_way']),
                'abs_diff_four_way': float(row['abs_diff_four_way']),
                'abs_diff_pairwise': float(row['abs_diff_pairwise']),
            })
    rows.sort(key=lambda r: r['n'])
    return rows


def style_axes(ax):
    ax.grid(True, which='major', linestyle='--', linewidth=0.7, alpha=0.35)
    ax.grid(True, which='minor', linestyle=':', linewidth=0.5, alpha=0.18)


def apply_log2_ticks(ax, xs):
    kmin = int(math.log2(min(xs)))
    kmax = int(math.log2(max(xs)))

    # 每隔 2 个幂显示一个刻度，避免拥挤
    tick_powers = list(range(kmin, kmax + 1, 2))
    ticks = [2 ** k for k in tick_powers]
    labels = [fr'$2^{{{k}}}$' for k in tick_powers]

    ax.set_xscale('log', base=2)
    ax.set_xticks(ticks)
    ax.set_xticklabels(labels)

    # 保留较淡的次刻度网格，但不显示文字
    ax.xaxis.set_minor_locator(LogLocator(base=2, subs=(1.0,)))


def plot_time(rows, outdir: Path):
    x = [r['n'] for r in rows]
    chain = [r['chain_ms'] for r in rows]
    two = [r['two_way_ms'] for r in rows]
    four = [r['four_way_ms'] for r in rows]
    pair = [r['pairwise_ms'] for r in rows]

    fig, ax = plt.subplots(figsize=(9, 5.6), constrained_layout=True)
    ax.plot(x, chain, marker='o', linewidth=2.0, markersize=5.5, label='Chain')
    ax.plot(x, two, marker='s', linewidth=2.0, markersize=5.5, label='2-way')
    ax.plot(x, four, marker='^', linewidth=2.0, markersize=5.5, label='4-way')
    ax.plot(x, pair, marker='d', linewidth=2.0, markersize=5.5, label='Pairwise')

    apply_log2_ticks(ax, x)
    ax.set_xlabel('Element count n')
    ax.set_ylabel('Average time per call (ms)')
    ax.set_title('Array reduction runtime')
    style_axes(ax)
    ax.legend(frameon=False, ncol=2)

    fig.savefig(outdir / 'sum_time.png')
    plt.close(fig)


def plot_speedup(rows, outdir: Path):
    x = [r['n'] for r in rows]
    two = [r['speedup_two_way'] for r in rows]
    four = [r['speedup_four_way'] for r in rows]
    pair = [r['speedup_pairwise'] for r in rows]

    fig, ax = plt.subplots(figsize=(9, 5.6), constrained_layout=True)
    ax.plot(x, two, marker='s', linewidth=2.0, markersize=5.5, label='2-way')
    ax.plot(x, four, marker='^', linewidth=2.0, markersize=5.5, label='4-way')
    ax.plot(x, pair, marker='d', linewidth=2.0, markersize=5.5, label='Pairwise')
    ax.axhline(1.0, linestyle='--', linewidth=1.2, alpha=0.6)

    apply_log2_ticks(ax, x)
    ax.set_xlabel('Element count n')
    ax.set_ylabel('Speedup vs chain')
    ax.set_title('Speedup of ILP-friendly reductions')
    style_axes(ax)
    ax.legend(frameon=False, ncol=3)

    fig.savefig(outdir / 'sum_speedup.png')
    plt.close(fig)


def plot_diff(rows, outdir: Path):
    x = [r['n'] for r in rows]
    two = [max(r['abs_diff_two_way'], 1e-18) for r in rows]
    four = [max(r['abs_diff_four_way'], 1e-18) for r in rows]
    pair = [max(r['abs_diff_pairwise'], 1e-18) for r in rows]

    fig, ax = plt.subplots(figsize=(9, 5.6), constrained_layout=True)
    ax.plot(x, two, marker='s', linewidth=2.0, markersize=5.5, label='2-way')
    ax.plot(x, four, marker='^', linewidth=2.0, markersize=5.5, label='4-way')
    ax.plot(x, pair, marker='d', linewidth=2.0, markersize=5.5, label='Pairwise')

    apply_log2_ticks(ax, x)
    ax.set_yscale('log')
    ax.set_xlabel('Element count n')
    ax.set_ylabel('Absolute difference vs chain')
    ax.set_title('Floating-point result difference')
    style_axes(ax)
    ax.legend(frameon=False, ncol=3)

    fig.savefig(outdir / 'sum_diff.png')
    plt.close(fig)


def main():
    if len(sys.argv) < 2:
        print('Usage: python plot_lab1_2.py <sum.csv> [output_dir]')
        sys.exit(1)

    csv_path = Path(sys.argv[1])
    outdir = Path(sys.argv[2]) if len(sys.argv) >= 3 else Path('result/figures')
    ensure_dir(outdir)

    rows = read_sum_csv(csv_path)

    plot_time(rows, outdir)
    plot_speedup(rows, outdir)
    plot_diff(rows, outdir)

    print(f'Generated figures in: {outdir}')
    print(' - sum_time.png')
    print(' - sum_speedup.png')
    print(' - sum_diff.png')


if __name__ == '__main__':
    main()