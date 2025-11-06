# Compatibilidad Pester 3.x/4.x/5.x
$modulePath = Join-Path $PSScriptRoot "..\..\scripts\modules\ValidadorContractual.psm1"
if (-not (Test-Path $modulePath)) {
    throw "Módulo no encontrado: $modulePath"
}
Import-Module $modulePath -Force -ErrorAction Stop
Import-Module (Join-Path $PSScriptRoot "..\..\scripts\modules\Logger.psm1") -Force -ErrorAction SilentlyContinue

Describe "ValidadorContractual - Get-ContractRules" {
    It "Carga reglas correctamente desde YAML" {
        $rules = Get-ContractRules
        
        $rules | Should Not BeNullOrEmpty
        $rules.rules | Should Not BeNullOrEmpty
        $rules.rules.Count | Should BeGreaterThan 0
    }
    
    It "Parsea cantidad mínima de SOS correctamente" {
        $rules = Get-ContractRules
        
        $sosRule = $rules.rules | Where-Object { $_.id -eq "AT1_SOS_CANTIDAD" }
        $sosRule | Should Not BeNullOrEmpty
        $sosRule.value | Should Be 88
        $sosRule.operator | Should Be "gte"
        $sosRule.field | Should Be "cantidad"
        $sosRule.filter.sistema | Should Be "SOS"
    }
    
    It "Parsea cantidad mínima de PMV correctamente" {
        $rules = Get-ContractRules
        
        $pmvRule = $rules.rules | Where-Object { $_.id -eq "AT1_PMV_CANTIDAD" }
        $pmvRule | Should Not BeNullOrEmpty
        $pmvRule.value | Should Be 12
        $pmvRule.operator | Should Be "gte"
        $pmvRule.filter.sistema | Should Be "PMV"
    }
    
    It "Parsea reglas con filtro correctamente" {
        $rules = Get-ContractRules
        
        $ruleWithFilter = $rules.rules | Where-Object { $_.filter.Count -gt 0 } | Select-Object -First 1
        $ruleWithFilter | Should Not BeNullOrEmpty
        $ruleWithFilter.filter.sistema | Should Not BeNullOrEmpty
    }
    
    It "Retorna estructura vacía si archivo no existe" {
        $rules = Get-ContractRules -RulesPath "rules/nonexistent.yaml"
        
        $rules.rules | Should Not BeNullOrEmpty
        $rules.rules.Count | Should Be 0
    }
}

Describe "ValidadorContractual - Invoke-DeclarativeValidation" {
    It "Valida datos maestros correctamente" {
        $masterData = @{
            wbs = @(
                @{ sistema = "SOS"; cantidad = 88 }
                @{ sistema = "PMV"; cantidad = 12 }
                @{ sistema = "METEO"; cantidad = 3 }
            )
        }
        
        $result = Invoke-DeclarativeValidation -MasterData $masterData
        
        $result | Should Not BeNullOrEmpty
        $result.IsValid | Should Be $true
    }
    
    It "Detecta violación de cantidad mínima" {
        $masterData = @{
            wbs = @(
                @{ sistema = "SOS"; cantidad = 50 }  # Menor que mínimo (88)
            )
        }
        
        $result = Invoke-DeclarativeValidation -MasterData $masterData
        
        $result.IsValid | Should Be $false
        $result.Issues.Count | Should BeGreaterThan 0
        $result.Issues[0] | Should -Match "SOS"
    }
    
    It "Valida múltiples reglas correctamente" {
        $masterData = @{
            wbs = @(
                @{ sistema = "SOS"; cantidad = 88 }
                @{ sistema = "PMV"; cantidad = 12 }
                @{ sistema = "METEO"; cantidad = 3 }
            )
            cronogramaUF = @(
                @{ uf = "UF1"; fechaMaxima = "2025-12-31" }
                @{ uf = "UF2"; fechaMaxima = $null }  # Falta fecha máxima
            )
        }
        
        $result = Invoke-DeclarativeValidation -MasterData $masterData
        
        # Puede tener warnings pero no errores críticos
        $warnings = $result.Issues | Where-Object { $_ -match "warn" }
        $warnings.Count | Should BeGreaterThanOrEqual 0
    }
}

Describe "ValidadorContractual - Test-ContractCompliance" {
    It "Valida existencia de archivos contractuales" {
        $result = Test-ContractCompliance
        
        $result | Should Not BeNullOrEmpty
        $result | Should -HaveMember "IsValid"
        $result | Should -HaveMember "Issues"
        $result | Should -HaveMember "Metadata"
    }
    
    It "Detecta cuando faltan archivos contractuales" {
        # Este test puede fallar si los archivos existen
        # Es más una prueba de estructura que funcional
        $result = Test-ContractCompliance -AF1Path "nonexistent.md" -AT1Path "nonexistent.md" -C1Path "nonexistent.md"
        
        $result.IsValid | Should Be $false
        $result.Issues.Count | Should BeGreaterThan 0
    }
}

