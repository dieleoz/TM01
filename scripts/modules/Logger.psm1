function Write-JsonLog {
    param(
        [string]$Path,
        [string]$Message,
        [string]$Level = 'INFO',
        [hashtable]$Data
    )
    $entry = [ordered]@{
        '@timestamp' = (Get-Date).ToString('yyyy-MM-dd HH:mm:ss')
        level        = $Level
        message      = $Message
    }
    if ($Data) { $Data.GetEnumerator() | ForEach-Object { $entry[$_.Key] = $_.Value } }
    $line = ($entry | ConvertTo-Json -Depth 6 -Compress)
    Add-Content -LiteralPath $Path -Value $line -Encoding UTF8
}

Export-ModuleMember -Function Write-JsonLog
