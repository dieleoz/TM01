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

# --- Declarative rules ---
function ConvertFrom-SimpleYaml {
    [CmdletBinding()] param([Parameter(Mandatory)][string]$YamlContent)
    # Fallback mínimo y seguro: no parsea YAML complejo, retorna objeto vacío
    return @{}
}

function Get-ContractRules {
    [CmdletBinding()] param([string]$RulesPath = 'rules/contract_rules.yaml')
    if (-not (Test-Path -LiteralPath $RulesPath)) { return @{} }
    $raw = Get-Content -LiteralPath $RulesPath -Raw -Encoding UTF8
    try{
        if (Get-Command ConvertFrom-Yaml -ErrorAction SilentlyContinue) {
            $rules = $raw | ConvertFrom-Yaml
        } else {
            $rules = ConvertFrom-SimpleYaml -YamlContent $raw
        }
        if (Get-Command Write-LogEntry -ErrorAction SilentlyContinue) { Write-LogEntry -Level 'INFO' -Message 'Reglas contractuales cargadas' -Context @{ File=$RulesPath } }
        return $rules
    } catch {
        if (Get-Command Write-LogEntry -ErrorAction SilentlyContinue) { Write-LogEntry -Level 'ERROR' -Message 'Error cargando reglas contractuales' -Context @{ File=$RulesPath; Error=$_.Exception.Message } }
        return @{}
    }
}

function Invoke-DeclarativeValidation {
    [CmdletBinding()] param(
        [Parameter(Mandatory)][hashtable]$MasterData,
        [string]$RulesPath = 'rules/contract_rules.yaml'
    )
    $issues = @()
    $rulesDoc = Get-ContractRules -RulesPath $RulesPath
    if (-not $rulesDoc -or -not $rulesDoc.rules) { return [PSCustomObject]@{ IsValid=$true; Issues=@() } }
    $rules = $rulesDoc.rules

    foreach($rule in $rules){
        $scope = $rule.scope
        $field = $rule.field
        $op    = $rule.operator
        $value = $rule.value
        $sev   = $rule.severity
        $msg   = $rule.message
        $filter= $rule.filter

        $items = @()
        switch -Regex ($scope) {
            '^wbs$' { if ($MasterData.wbs) { $items = $MasterData.wbs } }
            '^layout$' { if ($MasterData.layout) { $items = $MasterData.layout } }
            '^(presupuesto|budget)$' { if ($MasterData.presupuesto) { $items = $MasterData.presupuesto } }
            '^cronogramaUF$' { if ($MasterData.cronogramaUF) { $items = $MasterData.cronogramaUF } }
        }
        if (-not $items) { continue }

        # Aplicar filtro simple por igualdad de campos
        if ($filter) {
            $items = $items | Where-Object { $ok=$true; foreach($k in $filter.PSObject.Properties.Name){ if ($_.PSObject.Properties[$k] -and $_.$k -ne $filter.$k){ $ok=$false; break } }; $ok }
        }

        foreach($it in $items){
            $v = $null
            if ($field) { $v = $it.$field }
            $ok = $true
            switch ($op) {
                'gte' { if (-not ($v -ge $value)) { $ok=$false } }
                'lte' { if (-not ($v -le $value)) { $ok=$false } }
                'eq'  { if (-not ($v -eq $value)) { $ok=$false } }
                'neq' { if (-not ($v -ne $value)) { $ok=$false } }
                'notnull' { if ($null -eq $v -or ($v -is [string] -and [string]::IsNullOrWhiteSpace($v))) { $ok=$false } }
                default { $ok=$true }
            }
            if (-not $ok) {
                $issues += "[$sev] Regla $($rule.id): $msg"
            }
        }
    }

    [PSCustomObject]@{ IsValid = ($issues.Count -eq 0); Issues = $issues }
}

Export-ModuleMember -Function Test-ContractCompliance,Get-ContractRules,Invoke-DeclarativeValidation
