$ErrorActionPreference = "Continue"
. "$PSScriptRoot\common.ps1"
Initialize-AnnResults

$csv = "results\fig2_topk.csv"
$batchCsv = "results\fig2_topk_batch_stats.csv"
$modes = @("gpu_flat_cpu_topk", "gpu_flat_gpu_topk")
$batches = @(32, 64, 128, 256, 512, 1024, 2048, 4096)
$queries = @(500, 1000, 2000, 4000, 8000, 10000)

foreach ($rep in 1..3) {
    foreach ($q in $queries) {
        foreach ($b in $batches) {
            foreach ($m in $modes) {
                Invoke-AnnExperiment -ScriptName "run_fig2_topk_data.ps1" -Mode $m -Batch $b -Queries $q -RunId $rep -Csv $csv -BatchStatsCsv $batchCsv
            }
        }
    }
}
