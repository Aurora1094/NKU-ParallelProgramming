$ErrorActionPreference = "Continue"

$RUN_FIG1 = $true
$RUN_FIG2 = $true
$RUN_FIG3 = $true
$RUN_PQ_LIGHT = $true
$RUN_PQ_FULL = $false
$RUN_ADVANCED = $false

if (!(Test-Path results)) {
    New-Item -ItemType Directory results | Out-Null
}

$log = "results\run_all_log.txt"
"run_all started $(Get-Date -Format o)" | Out-File -FilePath $log -Encoding utf8 -Append
"RUN_FIG1=$RUN_FIG1 RUN_FIG2=$RUN_FIG2 RUN_FIG3=$RUN_FIG3 RUN_PQ_LIGHT=$RUN_PQ_LIGHT RUN_PQ_FULL=$RUN_PQ_FULL RUN_ADVANCED=$RUN_ADVANCED" | Tee-Object -FilePath $log -Append

if ($RUN_FIG1) {
    powershell -ExecutionPolicy Bypass -File .\scripts\run_fig1_data.ps1 *>> $log
}
if ($RUN_FIG2) {
    powershell -ExecutionPolicy Bypass -File .\scripts\run_fig2_topk_data.ps1 *>> $log
}
if ($RUN_FIG3) {
    powershell -ExecutionPolicy Bypass -File .\scripts\run_fig3_grouping_data.ps1 *>> $log
}
if ($RUN_PQ_LIGHT -or $RUN_PQ_FULL) {
    powershell -ExecutionPolicy Bypass -File .\scripts\run_pq_data.ps1 -RunLight:$RUN_PQ_LIGHT -RunFull:$RUN_PQ_FULL *>> $log
}
if ($RUN_ADVANCED) {
    powershell -ExecutionPolicy Bypass -File .\scripts\run_advanced_sampling_data.ps1 *>> $log
}

"run_all finished $(Get-Date -Format o)" | Out-File -FilePath $log -Encoding utf8 -Append
