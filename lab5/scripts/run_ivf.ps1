$ErrorActionPreference = "Continue"
. "$PSScriptRoot\common.ps1"
Initialize-AnnResults

$csv = "results\ivf.csv"
$batchCsv = "results\ivf_batch_stats.csv"
$nprobes = @(16, 32, 64, 128)
$groupModes = @("gpu_ivf", "gpu_ivf_main", "gpu_ivf_jaccard", "gpu_ivf_query", "gpu_ivf_hybrid", "gpu_ivf_adaptive", "gpu_ivf_load_balance", "gpu_ivf_locality", "gpu_ivf_hierarchical", "gpu_ivf_time")

foreach ($rep in 1..3) {
    foreach ($np in $nprobes) {
        Invoke-AnnExperiment -ScriptName "run_ivf.ps1" -Mode "gpu_ivf" -Batch 512 -Queries 2000 -RunId $rep -Csv $csv -BatchStatsCsv $batchCsv -Nprobe $np
    }
}

foreach ($rep in 1..3) {
    foreach ($m in $groupModes) {
        Invoke-AnnExperiment -ScriptName "run_ivf.ps1" -Mode $m -Batch 128 -Queries 2000 -RunId $rep -Csv "results\grouping.csv" -BatchStatsCsv "results\grouping_batch_stats.csv" -Nprobe 16
    }
}
