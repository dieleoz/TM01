# Módulo de logging estructurado para TM01

$script:LogDirectory = Join-Path $PSScriptRoot "..\..\logs"
$script:CurrentLogFile = $null

function Initialize-Logger {
    [CmdletBinding()]
    param(
        [string]$LogDirectory = $script:LogDirectory,
        [string]$LogPrefix = "tm01"
    )
    if (-not (Test-Path -LiteralPath $LogDirectory)) {
        New-Item -ItemType Directory -Path $LogDirectory -Force | Out-Null
    }
    $timestamp = Get-Date -Format "yyyyMMdd_HHmmss_ffff"
    $script:CurrentLogFile = Join-Path $LogDirectory ("{0}_{1}_{2}.jsonl" -f $LogPrefix, $timestamp, $PID)

    Write-LogEntry -Level "INFO" -Message "Logger initialized" -Context @{ LogFile = $script:CurrentLogFile; PSVersion = $PSVersionTable.PSVersion.ToString() }
}

function Write-LogEntry {
    [CmdletBinding()]
    param(
        [Parameter(Mandatory)]
        [ValidateSet('DEBUG','INFO','WARN','ERROR','CRITICAL')]
        [string]$Level,
        [Parameter(Mandatory)]
        [string]$Message,
        [hashtable]$Context = @{},
        [string]$Source
    )
    if (-not $script:CurrentLogFile) { Initialize-Logger }
    $entry = @{
        timestamp = (Get-Date).ToUniversalTime().ToString('o')
        level = $Level
        message = $Message
        source = if ($Source) { $Source } else { (Get-PSCallStack)[1].Command }
        context = $Context
        machine = $env:COMPUTERNAME
        user = $env:USERNAME
    }
    $jsonLine = $entry | ConvertTo-Json -Compress -Depth 10
    
    # Escritura con retry para evitar colisiones de acceso
    $maxAttempts = 5
    for($attempt=1; $attempt -le $maxAttempts; $attempt++){
        try{
            $sw = New-Object System.IO.StreamWriter($script:CurrentLogFile, $true, [System.Text.Encoding]::UTF8)
            $sw.WriteLine($jsonLine)
            $sw.Flush(); $sw.Close()
            break
        }catch{
            if ($attempt -eq $maxAttempts) { throw }
            Start-Sleep -Milliseconds (50 * $attempt)
        }
    }

    $color = switch ($Level) {
        'DEBUG' {'Gray'} 'INFO' {'Green'} 'WARN' {'Yellow'} 'ERROR' {'Red'} 'CRITICAL' {'Magenta'}
    }
    Write-Host ("[{0}] {1}" -f $Level, $Message) -ForegroundColor $color
}

function Get-LogSummary {
    [CmdletBinding()]
    param([string]$LogFile = $script:CurrentLogFile)
    if (-not (Test-Path -LiteralPath $LogFile)) { Write-Warning "Log file not found: $LogFile"; return }
    $entries = Get-Content -LiteralPath $LogFile | ForEach-Object { $_ | ConvertFrom-Json }
    @{
        TotalEntries = $entries.Count
        ByLevel = ($entries | Group-Object level | ForEach-Object { @{ ($_.Name) = $_.Count } })
        FirstEntry = $entries[0].timestamp
        LastEntry = $entries[-1].timestamp
        Errors = $entries | Where-Object { $_.level -in @('ERROR','CRITICAL') }
    }
}

Export-ModuleMember -Function Initialize-Logger, Write-LogEntry, Get-LogSummary

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
