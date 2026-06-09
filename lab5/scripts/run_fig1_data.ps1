$ErrorActionPreference = "Continue"
. "$PSScriptRoot\common.ps1"
Initialize-AnnResults

$csv = "results\fig1_gpu_batch.csv"
$batchCsv = "results\fig1_batch_stats.csv"
$batches = @(128, 256, 512, 1024, 2048)
$modes = @("gpu_flat_cpu_topk", "gpu_flat_gpu_topk", "gpu_ivf", "gpu_ivf_main", "gpu_ivf_jaccard")

foreach ($rep in 1..3) {
    Invoke-AnnExperiment -ScriptName "run_fig1_data.ps1" -Mode "cpu_flat" -Batch 512 -Queries 2000 -RunId $rep -Csv $csv -BatchStatsCsv $batchCsv -Nprobe 64
    foreach ($b in $batches) {
        foreach ($m in $modes) {
            Invoke-AnnExperiment -ScriptName "run_fig1_data.ps1" -Mode $m -Batch $b -Queries 2000 -RunId $rep -Csv $csv -BatchStatsCsv $batchCsv -Nprobe 64
        }
    }
}
