$ErrorActionPreference = "Continue"
. "$PSScriptRoot\common.ps1"
Initialize-AnnResults

$csv = "results\fig3_grouping.csv"
$batchCsv = "results\fig3_grouping_batch_stats.csv"
$modes = @(
    "gpu_ivf",
    "gpu_ivf_main",
    "gpu_ivf_jaccard",
    "gpu_ivf_query",
    "gpu_ivf_hybrid",
    "gpu_ivf_adaptive",
    "gpu_ivf_load_balance",
    "gpu_ivf_locality",
    "gpu_ivf_hierarchical",
    "gpu_ivf_time"
)

foreach ($rep in 1..3) {
    foreach ($m in $modes) {
        Invoke-AnnExperiment -ScriptName "run_fig3_grouping_data.ps1" -Mode $m -Batch 128 -Queries 2000 -RunId $rep -Csv $csv -BatchStatsCsv $batchCsv -Nprobe 16
    }
}

$batches = @(64, 128, 256, 512, 1024)
foreach ($rep in 1..3) {
    foreach ($b in $batches) {
        foreach ($m in $modes) {
            Invoke-AnnExperiment -ScriptName "run_fig3_grouping_data.ps1" -Mode $m -Batch $b -Queries 2000 -RunId $rep -Csv $csv -BatchStatsCsv $batchCsv -Nprobe 16
        }
    }
}
