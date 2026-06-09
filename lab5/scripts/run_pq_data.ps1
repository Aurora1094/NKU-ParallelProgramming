param(
    [bool]$RunLight = $true,
    [bool]$RunFull = $false
)
$ErrorActionPreference = "Continue"
. "$PSScriptRoot\common.ps1"
Initialize-AnnResults

$RUN_PQ_LIGHT = $RunLight
$RUN_PQ_FULL = $RunFull

$csv = "results\pq.csv"
$batchCsv = "results\pq_batch_stats.csv"

if ($RUN_PQ_LIGHT) {
    Invoke-AnnExperiment -ScriptName "run_pq_data.ps1" -Mode "gpu_ivf" -Batch 128 -Queries 500 -RunId 1 -Csv $csv -BatchStatsCsv $batchCsv -Nprobe 64
    Invoke-AnnExperiment -ScriptName "run_pq_data.ps1" -Mode "gpu_ivf_pq" -Batch 128 -Queries 500 -RunId 1 -Csv $csv -BatchStatsCsv $batchCsv -Nprobe 64 -PqM 8 -PqKsub 64 -PqIters 5 -PqMetric "ip"
}

if ($RUN_PQ_FULL) {
    $modes = @("gpu_ivf", "gpu_ivf_pq")
    $batches = @(128, 512)
    $nprobes = @(64, 128, 256)
    $pqMs = @(8, 12)
    $metrics = @("ip", "l2")
    foreach ($rep in 1..3) {
        foreach ($b in $batches) {
            foreach ($np in $nprobes) {
                Invoke-AnnExperiment -ScriptName "run_pq_data.ps1" -Mode "gpu_ivf" -Batch $b -Queries 2000 -RunId $rep -Csv $csv -BatchStatsCsv $batchCsv -Nprobe $np
                foreach ($pqM in $pqMs) {
                    foreach ($metric in $metrics) {
                        Invoke-AnnExperiment -ScriptName "run_pq_data.ps1" -Mode "gpu_ivf_pq" -Batch $b -Queries 2000 -RunId $rep -Csv $csv -BatchStatsCsv $batchCsv -Nprobe $np -PqM $pqM -PqKsub 256 -PqIters 10 -PqMetric $metric
                    }
                }
            }
        }
    }
}
