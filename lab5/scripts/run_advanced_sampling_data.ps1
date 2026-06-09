$ErrorActionPreference = "Continue"
. "$PSScriptRoot\common.ps1"
Initialize-AnnResults

$groupCsv = "results\advanced_grouping_samples.csv"
$groupBatchCsv = "results\advanced_grouping_batch_stats.csv"
$topkCsv = "results\advanced_topk_samples.csv"
$topkBatchCsv = "results\advanced_topk_batch_stats.csv"

$groupModes = @("gpu_ivf", "gpu_ivf_main", "gpu_ivf_jaccard", "gpu_ivf_query", "gpu_ivf_hybrid", "gpu_ivf_adaptive", "gpu_ivf_load_balance", "gpu_ivf_locality", "gpu_ivf_hierarchical", "gpu_ivf_time")
$groupBatches = @(64, 128, 256, 512)
$groupNprobes = @(8, 16, 32, 64)

foreach ($rep in 1..3) {
    foreach ($b in $groupBatches) {
        foreach ($np in $groupNprobes) {
            foreach ($m in $groupModes) {
                Invoke-AnnExperiment -ScriptName "run_advanced_sampling_data.ps1" -Mode $m -Batch $b -Queries 2000 -RunId $rep -Csv $groupCsv -BatchStatsCsv $groupBatchCsv -Nprobe $np
            }
        }
    }
}

$topkModes = @("gpu_flat_cpu_topk", "gpu_flat_gpu_topk")
$topkBatches = @(32, 64, 128, 256, 512, 1024, 2048, 4096)
$topkQueries = @(500, 1000, 2000, 4000, 8000, 10000)

foreach ($rep in 1..3) {
    foreach ($q in $topkQueries) {
        foreach ($b in $topkBatches) {
            foreach ($m in $topkModes) {
                Invoke-AnnExperiment -ScriptName "run_advanced_sampling_data.ps1" -Mode $m -Batch $b -Queries $q -RunId $rep -Csv $topkCsv -BatchStatsCsv $topkBatchCsv
            }
        }
    }
}
