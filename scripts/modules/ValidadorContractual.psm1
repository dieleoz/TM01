function Test-ContractCompliance {
    param(
        [string]$AF1Path = 'II. Apendices Tecnicos/AF1_Informacion_Financiera_v1.0.md',
        [string]$AT1Path = 'II. Apendices Tecnicos/AT1_Alcance_Proyecto_v1.0.md',
        [string]$C1Path  = 'I. Contrato General/2_Parte_Especial_v1.0.md',
        [hashtable]$Options
    )
    $issues = @()
    if (-not (Test-Path -LiteralPath $AF1Path)) { $issues += "No existe AF1: $AF1Path" }
    if (-not (Test-Path -LiteralPath $AT1Path)) { $issues += "No existe AT1: $AT1Path" }
    if (-not (Test-Path -LiteralPath $C1Path))  { $issues += "No existe C1 Parte Especial: $C1Path" }

    $inicioObra = $null
    if (Test-Path -LiteralPath $C1Path) {
        $c1 = Get-Content -LiteralPath $C1Path -Raw -Encoding UTF8
        $hasIso = ($c1 -match '26\/(11)\/2024' -or $c1 -match '26-11-2024' -or $c1 -match '2024-11-26')
        $hasEs  = ($c1 -match '(?i)26\s*de\s*noviembre\s*de\s*2024')
        if ($hasIso -or $hasEs) {
            $inicioObra = '2024-11-26'
        } else {
            # Warning no bloqueante
            $logJson = "logs/incongruencias_$(Get-Date -Format 'yyyyMMdd').jsonl"
            if (Get-Command Write-JsonLog -ErrorAction SilentlyContinue) {
                Write-JsonLog -Path $logJson -Message 'ValidacionContrato' -Level 'WARNING' -Data @{ issue='C1 sin Acta de Inicio detectable'; path=$C1Path }
            }
        }
    }

    [PSCustomObject]@{
        IsValid = ($issues.Count -eq 0)
        Issues  = $issues
        Metadata = @{ InicioObra = $inicioObra }
    }
}

Export-ModuleMember -Function Test-ContractCompliance
