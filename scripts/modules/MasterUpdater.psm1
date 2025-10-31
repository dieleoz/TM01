function Update-TM01MasterData {
    param(
        [string]$MasterPath = 'docs/data/tm01_master_data.js',
        [hashtable]$Updates,
        [switch]$DryRun
    )
    $log = "logs/master_updates_$(Get-Date -Format 'yyyyMMdd').jsonl"
    if (-not $Updates) { return }

    $plan = [ordered]@{
        '@timestamp' = (Get-Date).ToString('yyyy-MM-dd HH:mm:ss')
        action       = 'Update-TM01MasterData'
        masterPath   = $MasterPath
        updates      = $Updates
        applied      = $false
        note         = 'Solo log (aplicación diferida en próxima iteración)'
    }
    ($plan | ConvertTo-Json -Depth 6 -Compress) | Add-Content -LiteralPath $log -Encoding UTF8
    return
}

Export-ModuleMember -Function Update-TM01MasterData
