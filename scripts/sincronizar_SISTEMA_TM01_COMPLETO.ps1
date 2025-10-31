#requires -Version 5.1
param(
    [switch]$Force
)

Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'

# Importar módulos
$modulesPath = Join-Path -Path (Split-Path -Parent $PSCommandPath) -ChildPath 'modules'
$logger     = Join-Path $modulesPath 'Logger.psm1'
$validator  = Join-Path $modulesPath 'ValidadorContractual.psm1'
$t05parser  = Join-Path $modulesPath 'T05Parser.psm1'
$rfqUpdater = Join-Path $modulesPath 'RFQUpdater.psm1'
if (Test-Path $logger)     { Import-Module $logger -Force }
if (Test-Path $validator)  { Import-Module $validator -Force }
if (Test-Path $t05parser)  { Import-Module $t05parser -Force }
if (Test-Path $rfqUpdater) { Import-Module $rfqUpdater -Force }

function Write-Log([string]$msg){
    $ts = (Get-Date).ToString('yyyy-MM-dd HH:mm:ss')
    Write-Host "[$ts] $msg"
}

# Validación contrato-first (bloqueante)
$incongruencias = @()
if (Get-Command Test-ContractCompliance -ErrorAction SilentlyContinue) {
    $val = Test-ContractCompliance
    if (-not $val.IsValid) {
        $incongruencias += $val.Issues
        $logJson = "logs/incongruencias_$(Get-Date -Format 'yyyyMMdd').jsonl"
        if (Get-Command Write-JsonLog -ErrorAction SilentlyContinue) {
            foreach($i in $val.Issues){ Write-JsonLog -Path $logJson -Message 'ValidacionContrato' -Level 'ERROR' -Data @{ issue=$i } }
        }
        Write-Error "Validación contractual falló. Ver logs en $logJson"
        exit 1
    }
}

function Get-FiberQuantities {
    param(
        [string]$CsvPath = "X. Entregables Consolidados/RFQ-001_ANEXO_J_CANTIDADES_PRESUPUESTO.csv"
    )
    if (Test-Path -LiteralPath $CsvPath) {
        Write-Log "Leyendo cantidades FO desde CSV: $CsvPath"
        $rows = Import-Csv -LiteralPath $CsvPath
        return $rows | ForEach-Object {
            [PSCustomObject]@{
                ID       = $_.ID
                Nombre   = $_.Nombre
                Und      = $_.Und
                Cantidad = [int64]$_.Cantidad
            }
        }
    }
    Write-Log "CSV no encontrado. Usando respaldo embebido."
    @(
        @{ID='1021';Nombre='Cable fibra óptica 48h';Und='m';Cantidad=314824}
        @{ID='1022';Nombre='Cable fibra óptica 12h';Und='m';Cantidad=10856}
        @{ID='1024';Nombre='Cajas empalme 80×80';Und='und';Cantidad=65}
        @{ID='1025';Nombre='Cajas empalme 60×60';Und='und';Cantidad=1192}
        @{ID='1026';Nombre='Cruces especiales puentes';Und='m';Cantidad=4132}
        @{ID='1027';Nombre='Cruces especiales muros';Und='m';Cantidad=236}
        @{ID='1028';Nombre='Cruces especiales box culvert';Und='m';Cantidad=6732}
        @{ID='1029';Nombre='Cruces especiales alcantarillas';Und='m';Cantidad=2006}
        @{ID='10210';Nombre='Empalmes y conectores globales';Und='glb';Cantidad=1}
        @{ID='1031';Nombre='Excavación asfalto + tritubo';Und='m';Cantidad=27140}
        @{ID='1032';Nombre='Excavación andén + tritubo';Und='m';Cantidad=13570}
        @{ID='1033';Nombre='Excavación blanda + tritubo';Und='m';Cantidad=238560}
        @{ID='1034';Nombre='Instalación cruces especiales';Und='m';Cantidad=13920}
        @{ID='1035';Nombre='Instalación cajas empalme';Und='und';Cantidad=1257}
        @{ID='1041';Nombre='Halado fibra óptica 48h';Und='m';Cantidad=293190}
        @{ID='1042';Nombre='Instalación fibra óptica 12h (altura/piso)';Und='m';Cantidad=9440}
        @{ID='1043';Nombre='Trabajos instalación especializada';Und='glb';Cantidad=1}
    ) | ForEach-Object { [PSCustomObject]$_ }
}

function Render-MarkdownTable {
    param([object[]]$Items)
    $header = "| ID   | Nombre                                       | Und | Cantidad | Precio Unit. USD | Precio Unit. COP | Total USD | Total COP |"
    $sep    = "|------|----------------------------------------------|-----|----------|------------------|------------------|-----------|-----------|"
    $lines = @($header, $sep)
    foreach($r in $Items){
        $lines += "| $($r.ID) | $($r.Nombre) | $($r.Und) | $($r.Cantidad) |  |  |  |  |"
    }
    return ($lines -join "`n")
}

function Update-RFQFiberTable_Inline {
    param([string]$RfqPath = "X. Entregables Consolidados/RFQ_001_FIBRA_OPTICA_v1.0.md", [object[]]$Items)
    if (-not (Test-Path -LiteralPath $RfqPath)) { throw "No existe RFQ: $RfqPath" }
    $content = Get-Content -LiteralPath $RfqPath -Raw -Encoding UTF8
    $startTag = '<!-- AUTOGEN:FO_TABLE_START -->'
    $endTag   = '<!-- AUTOGEN:FO_TABLE_END -->'
    $start = $content.IndexOf($startTag)
    $end   = $content.IndexOf($endTag)
    if ($start -lt 0 -or $end -lt 0 -or $end -le $start) { throw "Marcadores AUTOGEN no encontrados en $RfqPath" }
    $before = $content.Substring(0, $start + $startTag.Length)
    $after  = $content.Substring($end)
    $table  = Render-MarkdownTable -Items $Items
    $note   = "`n> Última sincronización: " + (Get-Date).ToString('yyyy-MM-dd HH:mm:ss') + "`n`n"
    $newContent = $before + "`n" + $note + $table + "`n" + $after
    Set-Content -LiteralPath $RfqPath -Value $newContent -Encoding UTF8
}

try{
    Write-Log "Sincronización TM01 iniciada"
    # Pre-sync: actualizar RFQ FO usando CSV (o respaldo) — puede ejecutarse también post-sync
    $foItems = if (Get-Command Get-T05FiberQuantitiesFromRFQCsv -ErrorAction SilentlyContinue) { Get-T05FiberQuantitiesFromRFQCsv } else { Get-FiberQuantities }
    if (Get-Command Update-RFQFiberTable -ErrorAction SilentlyContinue) {
        Update-RFQFiberTable -Items $foItems
    } else {
        Update-RFQFiberTable_Inline -Items $foItems
    }
    Write-Log "Sincronización TM01 finalizada OK"
}catch{
    Write-Error $_
    exit 1
}
# SCRIPT MAESTRO DE SINCRONIZACION TM01 - TRONCAL MAGDALENA
# Archivo: scripts/sincronizar_SISTEMA_TM01_COMPLETO.ps1
# Proposito: Ejecutar todos los scripts de sincronizacion en secuencia
# Fecha: 24 de octubre de 2025
# Version: 1.0

# (Sección antigua de ejecución por lotes conservada en backups; esta versión prioriza validaciones y RFQ AUTOGEN)