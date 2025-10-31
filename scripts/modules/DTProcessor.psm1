Import-Module (Join-Path $PSScriptRoot 'Logger.psm1') -Force
Import-Module (Join-Path $PSScriptRoot 'Snapshotter.psm1') -Force

$script:DTDirectory = "VII. Documentos Transversales/DTs"
$script:QueueFile = Join-Path $script:DTDirectory 'queue.json'

function Initialize-DTQueue {
    [CmdletBinding()] param()
    $dirs = 'pending','processing','applied','failed' | ForEach-Object { Join-Path $script:DTDirectory $_ }
    foreach($d in $dirs){ if (-not (Test-Path -LiteralPath $d)) { New-Item -ItemType Directory -Path $d -Force | Out-Null; Write-LogEntry -Level 'INFO' -Message 'Directorio DT creado' -Context @{ dir=$d } } }
    if (-not (Test-Path -LiteralPath $script:QueueFile)){
        $initial = @{ version='1.0'; lastProcessed=$null; queue=@(); processed=@() }
        $initial | ConvertTo-Json -Depth 10 | Set-Content -LiteralPath $script:QueueFile -Encoding UTF8
        Write-LogEntry -Level 'INFO' -Message 'Cola de DTs inicializada'
    }
}

function Get-DTQueue { if (-not (Test-Path -LiteralPath $script:QueueFile)) { Initialize-DTQueue } ; (Get-Content -LiteralPath $script:QueueFile -Raw) | ConvertFrom-Json }
function Save-DTQueue { param([Parameter(Mandatory)][pscustomobject]$Queue) ; $Queue | ConvertTo-Json -Depth 10 | Set-Content -LiteralPath $script:QueueFile -Encoding UTF8 }

function Add-DTToQueue {
    [CmdletBinding()] param([Parameter(Mandatory)][string]$DTFile, [int]$Priority=5)
    if (-not (Test-Path -LiteralPath $DTFile)) { Write-LogEntry -Level 'ERROR' -Message 'DT no encontrada' -Context @{ file=$DTFile }; return $false }
    $queue = Get-DTQueue
    $dtId = [IO.Path]::GetFileNameWithoutExtension($DTFile)
    if ($queue.queue | Where-Object { $_.id -eq $dtId }) { Write-LogEntry -Level 'WARN' -Message 'DT ya en cola' -Context @{ id=$dtId }; return $false }
    if ($queue.processed | Where-Object { $_.id -eq $dtId -and $_.status -eq 'applied' }) { Write-LogEntry -Level 'WARN' -Message 'DT ya aplicada' -Context @{ id=$dtId }; return $false }
    $pendingPath = Join-Path (Join-Path $script:DTDirectory 'pending') ([IO.Path]::GetFileName($DTFile))
    Copy-Item -LiteralPath $DTFile -Destination $pendingPath -Force
    $queue.queue += @{ id=$dtId; file=$pendingPath; priority=$Priority; addedAt=(Get-Date).ToUniversalTime().ToString('o'); status='pending' }
    $queue.queue = $queue.queue | Sort-Object priority -Descending
    Save-DTQueue $queue
    Write-LogEntry -Level 'INFO' -Message 'DT agregada a cola' -Context @{ id=$dtId; priority=$Priority }
    $true
}

function Get-NextDT { $q=Get-DTQueue; $q.queue | Where-Object status -eq 'pending' | Select-Object -First 1 }

function Invoke-DTProcessing {
    [CmdletBinding(SupportsShouldProcess)] param([Parameter(Mandatory)][pscustomobject]$DTItem)
    $dtId=$DTItem.id
    Write-LogEntry -Level 'INFO' -Message 'Procesando DT' -Context @{ id=$dtId }
    $processingPath = Join-Path (Join-Path $script:DTDirectory 'processing') ([IO.Path]::GetFileName($DTItem.file))
    Move-Item -LiteralPath $DTItem.file -Destination $processingPath -Force
    $snapshotFile = New-DataSnapshot -SourceFile 'Sistema_Validacion_Web/data/tm01_master_data.js' -Description "Pre-DT: $dtId"
    try{
        # Placeholder: aplicar cambios reales en TAREA-008
        Start-Sleep -Milliseconds 50
        $appliedPath = Join-Path (Join-Path $script:DTDirectory 'applied') ([IO.Path]::GetFileName($processingPath))
        Move-Item -LiteralPath $processingPath -Destination $appliedPath -Force
        $q=Get-DTQueue; $q.queue = $q.queue | Where-Object { $_.id -ne $dtId }; $q.processed += @{ id=$dtId; status='applied'; appliedAt=(Get-Date).ToUniversalTime().ToString('o'); snapshot=$snapshotFile }; $q.lastProcessed=(Get-Date).ToUniversalTime().ToString('o'); Save-DTQueue $q
        Write-LogEntry -Level 'INFO' -Message 'DT aplicada' -Context @{ id=$dtId; snapshot=$snapshotFile }
        $true
    }catch{
        $failedPath = Join-Path (Join-Path $script:DTDirectory 'failed') ([IO.Path]::GetFileName($processingPath))
        Move-Item -LiteralPath $processingPath -Destination $failedPath -Force
        $q=Get-DTQueue; $q.queue = $q.queue | Where-Object { $_.id -ne $dtId }; $q.processed += @{ id=$dtId; status='failed'; failedAt=(Get-Date).ToUniversalTime().ToString('o'); snapshot=$snapshotFile; error=($_ | Out-String) }; Save-DTQueue $q
        Write-LogEntry -Level 'ERROR' -Message 'DT fallida' -Context @{ id=$dtId; error=($_ | Out-String) }
        $false
    }
}

function Start-DTBatchProcessing {
    [CmdletBinding()] param([int]$MaxDTs=10, [switch]$ContinueOnError)
    Initialize-DTQueue
    Write-LogEntry -Level 'INFO' -Message 'Inicio batch DTs' -Context @{ MaxDTs=$MaxDTs; ContinueOnError=$ContinueOnError.IsPresent }
    $processed=0; $ok=0; $bad=0
    while($processed -lt $MaxDTs){ $next=Get-NextDT; if(-not $next){ break }
        $r=Invoke-DTProcessing -DTItem $next; $processed++; if($r){$ok++} else { $bad++; if(-not $ContinueOnError){ break } }
    }
    $sum=@{ Processed=$processed; Succeeded=$ok; Failed=$bad }
    Write-LogEntry -Level 'INFO' -Message 'Batch DTs completado' -Context $sum
    $sum
}

Export-ModuleMember -Function Initialize-DTQueue,Add-DTToQueue,Get-NextDT,Invoke-DTProcessing,Start-DTBatchProcessing,Get-DTQueue


