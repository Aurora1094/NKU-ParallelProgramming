import csv
import sys
from pathlib import Path

import matplotlib.pyplot as plt
from matplotlib.ticker import MaxNLocator, ScalarFormatter, FuncFormatter


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


def read_dot_csv(path: Path):
    rows = []
    with open(path, 'r', encoding='utf-8') as f:
        reader = csv.DictReader(f)
        for row in reader:
            rows.append({
                'n': int(row['n']),
                'working_set_mib': float(row['working_set_mib']),
                'repeats': int(row['repeats']),
                'naive_ms': float(row['naive_ms']),
                'optimized_ms': float(row['optimized_ms']),
                'speedup': float(row['speedup']),
                'max_diff': float(row['max_diff']),
            })
    rows.sort(key=lambda r: r['n'])
    return rows


def ensure_dir(path: Path):
    path.mkdir(parents=True, exist_ok=True)


def style_axes(ax, integer_x=False):
    ax.grid(True, which='major', linestyle='--', linewidth=0.7, alpha=0.35)
    ax.grid(True, which='minor', linestyle=':', linewidth=0.5, alpha=0.18)
    ax.minorticks_on()
    if integer_x:
        ax.xaxis.set_major_locator(MaxNLocator(integer=True))


def plot_time(rows, outdir: Path):
    x = [r['n'] for r in rows]
    naive = [r['naive_ms'] for r in rows]
    opt = [r['optimized_ms'] for r in rows]

    fig, ax = plt.subplots(figsize=(8.8, 5.4), constrained_layout=True)
    ax.plot(x, naive, marker='o', linewidth=2.2, markersize=5.8, label='Naive column-wise')
    ax.plot(x, opt, marker='s', linewidth=2.2, markersize=5.4, label='Optimized row-major')

    ax.set_xlabel('Matrix dimension n')
    ax.set_ylabel('Time per call (ms)')
    ax.set_title('Matrix-vector dot product runtime')

    style_axes(ax)
    ax.legend(frameon=False, ncol=2, loc='upper left')
    ax.yaxis.set_major_formatter(ScalarFormatter())

    fig.savefig(outdir / 'dot_time.png')
    plt.close(fig)


def plot_speedup(rows, outdir: Path):
    x = [r['n'] for r in rows]
    y = [r['speedup'] for r in rows]

    fig, ax = plt.subplots(figsize=(8.8, 5.4), constrained_layout=True)
    ax.plot(x, y, marker='o', linewidth=2.2, markersize=5.8)
    ax.axhline(1.0, linestyle='--', linewidth=1.2, alpha=0.6)

    best_idx = max(range(len(y)), key=lambda i: y[i])
    ax.annotate(
        f'max = {y[best_idx]:.2f}x',
        xy=(x[best_idx], y[best_idx]),
        xytext=(14, 12),
        textcoords='offset points',
        fontsize=10,
        bbox=dict(boxstyle='round,pad=0.25', fc='white', ec='0.7', alpha=0.9),
        arrowprops=dict(arrowstyle='->', lw=1.0, alpha=0.7),
    )

    ax.set_xlabel('Matrix dimension n')
    ax.set_ylabel('Speedup (naive / optimized)')
    ax.set_title('Speedup of row-major optimization')

    style_axes(ax)
    fig.savefig(outdir / 'dot_speedup.png')
    plt.close(fig)


def _format_mib_tick(x, pos):
    if x >= 1:
        if abs(x - round(x)) < 1e-9:
            return f'{int(round(x))}'
        return f'{x:.1f}'.rstrip('0').rstrip('.')
    return f'{x:.3g}'


def plot_working_set(rows, outdir: Path):
    x = [r['working_set_mib'] for r in rows]
    naive = [r['naive_ms'] for r in rows]
    opt = [r['optimized_ms'] for r in rows]

    fig, ax = plt.subplots(figsize=(8.8, 5.4), constrained_layout=True)
    ax.plot(x, naive, marker='o', linewidth=2.2, markersize=5.8, label='Naive column-wise')
    ax.plot(x, opt, marker='s', linewidth=2.2, markersize=5.4, label='Optimized row-major')

    # 关键修改：横轴改为对数坐标，拉开前面密集的点
    ax.set_xscale('log', base=2)

    # 选择一组更适合报告阅读的刻度
    min_x = min(x)
    max_x = max(x)
    candidate_ticks = [0.03, 0.125, 0.5, 2, 8, 32, 128]
    ticks = [t for t in candidate_ticks if min_x * 0.85 <= t <= max_x * 1.15]
    if len(ticks) >= 2:
        ax.set_xticks(ticks)
    ax.xaxis.set_major_formatter(FuncFormatter(_format_mib_tick))

    ax.set_xlabel('Working set size (MiB, log2 scale)')
    ax.set_ylabel('Time per call (ms)')
    ax.set_title('Runtime vs working set size')

    style_axes(ax)
    ax.legend(frameon=False, ncol=2, loc='upper left')

    fig.savefig(outdir / 'dot_time_vs_workingset.png')
    plt.close(fig)


def plot_max_diff(rows, outdir: Path):
    x = [r['n'] for r in rows]
    raw_diff = [r['max_diff'] for r in rows]

    all_zero = all(v == 0.0 for v in raw_diff)
    y = [1e-18 if v == 0.0 else v for v in raw_diff]

    fig, ax = plt.subplots(figsize=(8.8, 5.4), constrained_layout=True)
    ax.plot(x, y, marker='o', linewidth=1.8, markersize=5.5)

    ax.set_yscale('log')
    ax.set_xlabel('Matrix dimension n')
    ax.set_ylabel('Max absolute difference')
    ax.set_title('Correctness check: result difference')

    style_axes(ax)

    if all_zero:
        ax.text(
            0.5, 0.92,
            'All points are exactly 0 (shown at 1e-18 for visibility)',
            transform=ax.transAxes,
            ha='center',
            va='center',
            fontsize=10,
            bbox=dict(boxstyle='round,pad=0.25', fc='white', ec='0.75', alpha=0.9),
        )

    fig.savefig(outdir / 'dot_max_diff.png')
    plt.close(fig)


def main():
    if len(sys.argv) < 2:
        print('Usage: python plot_lab1_1.py <dot.csv> [output_dir]')
        sys.exit(1)

    csv_path = Path(sys.argv[1])
    outdir = Path(sys.argv[2]) if len(sys.argv) >= 3 else Path('result/figures')
    ensure_dir(outdir)

    rows = read_dot_csv(csv_path)

    plot_time(rows, outdir)
    plot_speedup(rows, outdir)
    plot_working_set(rows, outdir)
    plot_max_diff(rows, outdir)

    print(f'Generated figures in: {outdir}')
    print(' - dot_time.png')
    print(' - dot_speedup.png')
    print(' - dot_time_vs_workingset.png')
    print(' - dot_max_diff.png')


if __name__ == '__main__':
    main()