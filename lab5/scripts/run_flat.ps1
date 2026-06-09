$ErrorActionPreference = "Continue"
. "$PSScriptRoot\common.ps1"
Initialize-AnnResults

$csv = "results\batch.csv"
$batchCsv = "results\batch_stats.csv"
$batches = @(128, 256, 512, 1024, 2048)

foreach ($rep in 1..3) {
    Invoke-AnnExperiment -ScriptName "run_flat.ps1" -Mode "cpu_flat" -Batch 512 -Queries 2000 -RunId $rep -Csv $csv -BatchStatsCsv $batchCsv
    foreach ($b in $batches) {
        Invoke-AnnExperiment -ScriptName "run_flat.ps1" -Mode "gpu_flat_cpu_topk" -Batch $b -Queries 2000 -RunId $rep -Csv $csv -BatchStatsCsv $batchCsv
        Invoke-AnnExperiment -ScriptName "run_flat.ps1" -Mode "gpu_flat_gpu_topk" -Batch $b -Queries 2000 -RunId $rep -Csv $csv -BatchStatsCsv $batchCsv
    }
}
