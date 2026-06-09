function Initialize-AnnResults {
    if (!(Test-Path results)) {
        New-Item -ItemType Directory results | Out-Null
    }
}

function Write-FailedRun {
    param(
        [string]$ScriptName,
        [string]$Mode,
        [object]$Batch,
        [object]$Queries,
        [object]$Nlist,
        [object]$Nprobe,
        [object]$PqM,
        [object]$PqKsub,
        [object]$PqIters,
        [string]$ErrorText
    )

    Initialize-AnnResults
    $path = "results\failed_runs.txt"
    if (!(Test-Path $path) -or ((Get-Item $path).Length -eq 0)) {
        "timestamp,script,mode,batch,queries,nlist,nprobe,pq_m,pq_ksub,pq_iters,error" | Out-File -FilePath $path -Encoding utf8 -Append
    }
    $cleanError = ($ErrorText -replace "[`r`n,]", " ")
    $line = "$(Get-Date -Format o),$ScriptName,$Mode,$Batch,$Queries,$Nlist,$Nprobe,$PqM,$PqKsub,$PqIters,$cleanError"
    $line | Out-File -FilePath $path -Encoding utf8 -Append
}

function Invoke-AnnExperiment {
    param(
        [string]$ScriptName,
        [string]$Mode,
        [int]$Batch,
        [int]$Queries,
        [int]$RunId,
        [string]$Csv,
        [string]$BatchStatsCsv,
        [int]$Nlist = 512,
        [int]$Nprobe = 32,
        [int]$KmeansIters = 15,
        [Nullable[int]]$PqM = $null,
        [Nullable[int]]$PqKsub = $null,
        [Nullable[int]]$PqIters = $null,
        [string]$PqMetric = "ip"
    )

    Initialize-AnnResults
    $exe = ".\ann_gpu.exe"
    $args = @(
        "--mode", $Mode,
        "--batch", $Batch,
        "--queries", $Queries,
        "--run_id", $RunId,
        "--nlist", $Nlist,
        "--nprobe", $Nprobe,
        "--kmeans_iters", $KmeansIters,
        "--csv", $Csv
    )
    if ($BatchStatsCsv) {
        $args += @("--batch_stats_csv", $BatchStatsCsv)
    }
    if ($null -ne $PqM) {
        $args += @("--pq_m", $PqM, "--pq_ksub", $PqKsub, "--pq_iters", $PqIters, "--pq_metric", $PqMetric)
    }

    try {
        & $exe @args
        if ($LASTEXITCODE -ne 0) {
            throw "ann_gpu.exe exited with code $LASTEXITCODE"
        }
    } catch {
        Write-FailedRun -ScriptName $ScriptName -Mode $Mode -Batch $Batch -Queries $Queries -Nlist $Nlist -Nprobe $Nprobe -PqM $(if ($null -ne $PqM) { $PqM } else { "NA" }) -PqKsub $(if ($null -ne $PqKsub) { $PqKsub } else { "NA" }) -PqIters $(if ($null -ne $PqIters) { $PqIters } else { "NA" }) -ErrorText $_.Exception.Message
    }
}
