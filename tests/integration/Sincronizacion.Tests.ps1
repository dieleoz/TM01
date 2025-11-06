# Compatibilidad Pester 3.x/4.x/5.x - Setup
$testDataDir = Join-Path $PSScriptRoot "..\fixtures"
if (-not (Test-Path $testDataDir)) {
    New-Item -ItemType Directory -Path $testDataDir -Force | Out-Null
}

# Backup del archivo maestro original
$projectRoot = Join-Path $PSScriptRoot ".."
$masterFile = Join-Path $projectRoot "Sistema_Validacion_Web/data/tm01_master_data.js"
if (Test-Path $masterFile) {
    Copy-Item $masterFile (Join-Path $testDataDir "tm01_master_data_backup.js") -Force -ErrorAction SilentlyContinue
}

Describe "Sincronización End-to-End" {
    # Resolver rutas desde la raíz del proyecto (no desde tests/)
    $projectRoot = Join-Path $PSScriptRoot ".."
    
    It "Valida que script maestro existe" {
        $scriptPath = Join-Path $projectRoot "scripts/sincronizar_SISTEMA_TM01_COMPLETO.ps1"
        Test-Path $scriptPath | Should Be $true
    }
    
    It "Valida que módulos requeridos existen" {
        $requiredModules = @(
            "scripts/modules/DataMapper.psm1",
            "scripts/modules/MergeEngine.psm1",
            "scripts/modules/Logger.psm1",
            "scripts/modules/ValidadorContractual.psm1"
        )
        
        foreach ($module in $requiredModules) {
            $fullPath = Join-Path $projectRoot $module
            Test-Path $fullPath | Should Be $true
        }
    }
    
    It "Valida estructura de directorios necesarios" {
        $requiredDirs = @(
            "Sistema_Validacion_Web/data",
            "logs",
            "rules"
        )
        
        foreach ($dir in $requiredDirs) {
            $fullPath = Join-Path $projectRoot $dir
            Test-Path $fullPath | Should Be $true
        }
    }
    
    It "Valida que archivo maestro existe" {
        $masterFile = Join-Path $projectRoot "Sistema_Validacion_Web/data/tm01_master_data.js"
        Test-Path $masterFile | Should Be $true
    }
    
    It "Valida que archivo de reglas YAML existe" {
        $rulesFile = Join-Path $projectRoot "rules/contract_rules.yaml"
        Test-Path $rulesFile | Should Be $true
    }
}

Describe "Integración - Módulos PowerShell" {
    $projectRoot = Join-Path $PSScriptRoot ".."
    
    It "Puede importar todos los módulos sin errores" {
        $modules = @(
            "scripts/modules/DataMapper.psm1",
            "scripts/modules/MergeEngine.psm1",
            "scripts/modules/Logger.psm1",
            "scripts/modules/ValidadorContractual.psm1"
        )
        
        foreach ($module in $modules) {
            $fullPath = Join-Path $projectRoot $module
            { Import-Module $fullPath -Force -ErrorAction Stop } | Should Not Throw
        }
    }
    
    It "Funciones exportadas están disponibles" {
        $mergeModule = Join-Path $projectRoot "scripts/modules/MergeEngine.psm1"
        $validatorModule = Join-Path $projectRoot "scripts/modules/ValidadorContractual.psm1"
        
        Import-Module $mergeModule -Force -ErrorAction SilentlyContinue
        Import-Module $validatorModule -Force -ErrorAction SilentlyContinue
        
        Get-Command "Compare-ObjectDiff" -ErrorAction SilentlyContinue | Should Not BeNullOrEmpty
        Get-Command "Merge-ThreeWay" -ErrorAction SilentlyContinue | Should Not BeNullOrEmpty
        Get-Command "Get-ContractRules" -ErrorAction SilentlyContinue | Should Not BeNullOrEmpty
    }
}

