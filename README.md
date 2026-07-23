# NKU Parallel Programming

2026 南开大学《并行程序设计》课程实验代码。

本仓库记录了从串行程序优化到 SIMD、多线程和 CUDA 并行的实验过程。Lab 2 之后主要以 DEEP100K 向量近邻检索为测试任务，对比不同算法和并行方式下的查询延迟与召回率。

## 实验内容

### Lab 1：串行程序优化

- 对数组求和实现串行累加、双路累加、四路累加和成对归约，并比较运行时间与数值误差。
- 调整矩阵向量计算的访存顺序，分析缓存和工作集大小对性能的影响。
- 将实验结果输出为 CSV，并使用 Python 生成时间、加速比和误差图表。
- 保留了部分 VTune 分析记录。

### Lab 2：SIMD 优化

- 以 DEEP100K 向量检索为基础，实现和比较不同的 Flat Scan 版本。
- 使用 ARM NEON、循环展开、多累加器和预取优化向量点积。
- 尝试 SQ、PQ、粗排与精排等方法，在查询延迟和召回率之间进行权衡。
- 对比编译器自动向量化和手写 SIMD 的实现效果。

### Lab 3：多线程并行

- 使用 Pthread 和 OpenMP 对查询任务进行并行化。
- 实验内容包括 Flat、PQ、IVF、IVF-PQ 和 HNSW 等检索方案。
- 保留不同算法及线程模型的独立版本，便于进行性能对比。

### Lab 4：多线程实验整理

- 延续 Lab 3 的向量检索实验，保留阶段性实现和对照版本。
- 包含 Pthread、OpenMP 版本以及课程集群使用的 PBS 提交脚本。

### Lab 5：CUDA 并行

- 使用 CUDA 实现批量向量检索。
- 实现 GPU Flat Search，并对比 CPU Top-K 和 GPU Top-K。
- 实现 IVF、PQ 和 IVF-PQ，并尝试不同的查询分组、负载均衡和数据局部性策略。
- 提供批量运行、结果汇总、表格导出和绘图脚本。

## 项目结构

```text
lab1/   串行优化、实验数据和图表
lab2/   ARM NEON 与 SIMD 向量检索
lab3/   Pthread / OpenMP 多线程实验
lab4/   多线程实验的阶段性版本
lab5/   CUDA、IVF、PQ 与 IVF-PQ 实验
```

## 数据与运行说明

Lab 2 至 Lab 5 使用 DEEP100K 数据集，仓库中未包含数据文件。需要准备：

```text
DEEP100K.base.100k.fbin
DEEP100K.query.fbin
DEEP100K.gt.query.100k.top100.bin
```

- Lab 2 至 Lab 4 默认从 `/anndata/` 读取数据。
- Lab 5 默认从 `lab5/data/` 读取数据，并要求先编译生成 `ann_gpu.exe`。
- Lab 5 的批量实验可以通过 `lab5/scripts/run_all.ps1` 启动。
- 实际运行前需要根据本机或课程集群环境调整编译参数、数据路径和提交脚本。

部分实验使用了 [hnswlib](https://github.com/nmslib/hnswlib)。
