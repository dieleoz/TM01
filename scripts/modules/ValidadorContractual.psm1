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
function ConvertFrom-SimpleYamlFallback {
    <#
    .SYNOPSIS
    Parser YAML mínimo como fallback cuando powershell-yaml no está disponible.
    
    .DESCRIPTION
    Parsea estructuras YAML básicas (key-value, arrays, objetos anidados simples).
    Soporta la estructura de contract_rules.yaml (version, metadata, rules).
    #>
    [CmdletBinding()]
    param(
        [Parameter(Mandatory)][string]$YamlContent
    )
    
    $result = @{
        version = $null
        updated = $null
        metadata = @{}
        rules = @()
    }
    
    $lines = $YamlContent -split "`n"
    $currentRule = $null
    $inMetadata = $false
    $inRule = $false
    $inFilter = $false
    
    foreach ($line in $lines) {
        $trimmed = $line.Trim()
        if ([string]::IsNullOrWhiteSpace($trimmed)) { 
            $inFilter = $false
            continue 
        }
        
        # Detectar secciones principales
        if ($trimmed -match '^version:\s*(.+)$') {
            $result.version = $matches[1].Trim()
            continue
        }
        
        if ($trimmed -match '^updated:\s*"?(.+?)"?$') {
            $result.updated = $matches[1].Trim().Trim('"')
            continue
        }
        
        if ($trimmed -eq 'metadata:') {
            $inMetadata = $true
            $inRule = $false
            $inFilter = $false
            continue
        }
        
        if ($trimmed -eq 'rules:') {
            $inMetadata = $false
            $inRule = $false
            $inFilter = $false
            continue
        }
        
        # Parsear metadata
        if ($inMetadata -and $trimmed -match '^\s+(\w+):\s*(.+)$') {
            $key = $matches[1]
            $value = $matches[2].Trim().Trim('"')
            if ($key -eq 'description') {
                $result.metadata[$key] = $value
            } elseif ($key -eq 'sources') {
                if (-not $result.metadata[$key]) { $result.metadata[$key] = @() }
            }
            continue
        }
        
        if ($inMetadata -and $trimmed -match '^\s+-\s*(.+)$') {
            if (-not $result.metadata['sources']) { $result.metadata['sources'] = @() }
            $result.metadata['sources'] += $matches[1].Trim().Trim('"')
            continue
        }
        
        # Detectar inicio de regla
        if ($trimmed -match '^\s*-\s*id:\s*(.+)$') {
            if ($currentRule) { $result.rules += $currentRule }
            $currentRule = @{
                id = $matches[1].Trim()
                scope = $null
                field = $null
                operator = $null
                value = $null
                severity = $null
                message = $null
                filter = @{}
            }
            $inRule = $true
            $inFilter = $false
            continue
        }
        
        # Parsear propiedades de regla
        if ($inRule -and $currentRule) {
            # Detectar inicio de filter (línea con 4 espacios que dice "filter:")
            if ($line -match '^\s{4}filter:\s*$') {
                $inFilter = $true
                continue
            }
            
            # Propiedad dentro de filter (6+ espacios de indentación)
            if ($inFilter -and $line -match '^\s{6}(\w+):\s*(.+)$') {
                $key = $matches[1]
                $rawValue = $matches[2].Trim()
                $value = $rawValue.Trim('"')
                if ($value -match '^\d+$') { $value = [int]$value }
                $currentRule.filter[$key] = $value
                continue
            }
            
            # Detectar fin de filter (línea con 4 espacios que no es parte de filter)
            if ($inFilter -and $line -match '^\s{4}(\w+):' -and $trimmed -ne 'filter:') {
                $inFilter = $false
            }
            
            # Propiedades normales de regla (4 espacios, fuera de filter)
            if (-not $inFilter -and $line -match '^\s{4}(\w+):\s*(.+)$') {
                $key = $matches[1]
                $rawValue = $matches[2].Trim()
                
                # Remover comillas si existen
                if ($rawValue.StartsWith('"') -and $rawValue.EndsWith('"')) {
                    $value = $rawValue.Substring(1, $rawValue.Length - 2)
                } else {
                    $value = $rawValue
                }
                
                # Convertir tipos
                if ($value -match '^\d+$') { 
                    $value = [int]$value 
                }
                elseif ($value -match '^\d+\.\d+$') { 
                    $value = [double]$value 
                }
                elseif ($value -eq 'true') { 
                    $value = $true 
                }
                elseif ($value -eq 'false') { 
                    $value = $false 
                }
                
                $currentRule[$key] = $value
                continue
            }
        }
    }
    
    # Agregar última regla
    if ($currentRule) { $result.rules += $currentRule }
    
    return $result
}

function Get-ContractRules {
    <#
    .SYNOPSIS
    Carga reglas contractuales desde archivo YAML.
    
    .DESCRIPTION
    Intenta usar módulo powershell-yaml si está disponible, de lo contrario usa parser mínimo.
    
    .PARAMETER RulesPath
    Ruta al archivo YAML de reglas (default: rules/contract_rules.yaml)
    
    .EXAMPLE
    $rules = Get-ContractRules
    $rules.rules.Count  # Número de reglas cargadas
    #>
    [CmdletBinding()]
    param(
        [Parameter(Mandatory=$false)]
        [string]$RulesPath = 'rules/contract_rules.yaml'
    )
    
    if (-not (Test-Path -LiteralPath $RulesPath)) {
        if (Get-Command Write-LogEntry -ErrorAction SilentlyContinue) {
            Write-LogEntry -Level 'WARN' -Message 'Archivo de reglas no encontrado' -Context @{ File = $RulesPath }
        }
        return @{ rules = @() }
    }
    
    $raw = Get-Content -LiteralPath $RulesPath -Raw -Encoding UTF8
    
    try {
        # Intentar usar módulo powershell-yaml (si está instalado)
        $yamlModule = Get-Module -ListAvailable -Name powershell-yaml | Select-Object -First 1
        if ($yamlModule) {
            try {
                Import-Module powershell-yaml -ErrorAction Stop
                $rules = ConvertFrom-Yaml $raw
                if (Get-Command Write-LogEntry -ErrorAction SilentlyContinue) {
                    Write-LogEntry -Level 'INFO' -Message 'Reglas contractuales cargadas (powershell-yaml)' -Context @{ File = $RulesPath; RuleCount = $rules.rules.Count }
                }
                return $rules
            } catch {
                if (Get-Command Write-LogEntry -ErrorAction SilentlyContinue) {
                    Write-LogEntry -Level 'WARN' -Message 'Módulo powershell-yaml no disponible, usando parser fallback' -Context @{ Error = $_.Exception.Message }
                }
            }
        }
        
        # Fallback: parser simple
        $rules = ConvertFrom-SimpleYamlFallback -YamlContent $raw
        if (Get-Command Write-LogEntry -ErrorAction SilentlyContinue) {
            Write-LogEntry -Level 'INFO' -Message 'Reglas contractuales cargadas (parser fallback)' -Context @{ File = $RulesPath; RuleCount = $rules.rules.Count }
        }
        return $rules
        
    } catch {
        if (Get-Command Write-LogEntry -ErrorAction SilentlyContinue) {
            Write-LogEntry -Level 'ERROR' -Message 'Error cargando reglas contractuales' -Context @{ File = $RulesPath; Error = $_.Exception.Message }
        }
        return @{ rules = @() }
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
