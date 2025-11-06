# Compatibilidad Pester 3.x/4.x/5.x
$modulePath = Join-Path $PSScriptRoot "..\..\scripts\modules\MergeEngine.psm1"
if (-not (Test-Path $modulePath)) {
    throw "Módulo no encontrado: $modulePath"
}
Import-Module $modulePath -Force -ErrorAction Stop
Import-Module (Join-Path $PSScriptRoot "..\..\scripts\modules\Logger.psm1") -Force -ErrorAction SilentlyContinue

Describe "MergeEngine - Compare-ObjectDiff" {
    It "Detecta cambio en propiedad" {
        $base = @{ a = 1; b = 2 }
        $modified = @{ a = 1; b = 3 }
        
        $diff = Compare-ObjectDiff -Base $base -Modified $modified
        
        $diff.Modified.Count | Should Be 1
        $diff.Modified.ContainsKey('b') | Should Be $true
        $diff.Modified['b'].Old | Should Be 2
        $diff.Modified['b'].New | Should Be 3
    }
    
    It "Detecta propiedad agregada" {
        $base = @{ a = 1 }
        $modified = @{ a = 1; b = 2 }
        
        $diff = Compare-ObjectDiff -Base $base -Modified $modified
        
        $diff.Added.Count | Should Be 1
        $diff.Added.ContainsKey('b') | Should Be $true
        $diff.Added['b'] | Should Be 2
    }
    
    It "Detecta propiedad eliminada" {
        $base = @{ a = 1; b = 2 }
        $modified = @{ a = 1 }
        
        $diff = Compare-ObjectDiff -Base $base -Modified $modified
        
        $diff.Removed.Count | Should Be 1
        $diff.Removed.ContainsKey('b') | Should Be $true
        $diff.Removed['b'] | Should Be 2
    }
    
    It "No detecta cambios si objetos son iguales" {
        $base = @{ a = 1; b = 2 }
        $modified = @{ a = 1; b = 2 }
        
        $diff = Compare-ObjectDiff -Base $base -Modified $modified
        
        $diff.Modified.Count | Should Be 0
        $diff.Added.Count | Should Be 0
        $diff.Removed.Count | Should Be 0
    }
}

Describe "MergeEngine - Merge-ThreeWay" {
    It "Merge sin conflictos - cambios en diferentes campos" {
        $base = @{ cantidad = 10; comentario = "test" }
        $source = @{ cantidad = 15; comentario = "test" }
        $current = @{ cantidad = 10; comentario = "nuevo" }
        
        $result = Merge-ThreeWay -Base $base -Source $source -Current $current
        
        $result.Conflicts.Count | Should Be 0
        $result.Merged.cantidad | Should Be 15
        $result.Merged.comentario | Should Be "nuevo"
    }
    
    It "Preserva campos contractuales desde SOURCE" {
        $base = @{ cantidad = 10 }
        $source = @{ cantidad = 15 }
        $current = @{ cantidad = 12 }
        
        $result = Merge-ThreeWay -Base $base -Source $source -Current $current
        
        # Campo contractual (cantidad) debe venir de SOURCE
        $result.Merged.cantidad | Should Be 15
    }
    
    It "Preserva campos UI desde CURRENT" {
        $base = @{ descripcion = "original" }
        $source = @{ descripcion = "original" }
        $current = @{ descripcion = "modificado manualmente" }
        
        $result = Merge-ThreeWay -Base $base -Source $source -Current $current
        
        # Campo UI (descripcion) debe venir de CURRENT
        $result.Merged.descripcion | Should Be "modificado manualmente"
    }
    
    It "Detecta conflicto cuando SOURCE y CURRENT difieren de BASE" {
        $base = @{ valor = 100 }
        $source = @{ valor = 150 }
        $current = @{ valor = 200 }
        
        $result = Merge-ThreeWay -Base $base -Source $source -Current $current
        
        $result.Conflicts.Count | Should BeGreaterThan 0
    }
}

Describe "MergeEngine - Resolve-Conflict" {
    It "Prioriza SOURCE para campos contractuales" {
        $resolution = Resolve-Conflict -Field "cantidad" -BaseValue 10 -SourceValue 15 -CurrentValue 12
        
        $resolution.Value | Should Be 15
        $resolution.Reason | Should Match "Contractual"
    }
    
    It "Prioriza CURRENT para campos UI" {
        $resolution = Resolve-Conflict -Field "descripcion" -BaseValue "original" -SourceValue "original" -CurrentValue "modificado"
        
        $resolution.Value | Should Be "modificado"
        $resolution.Reason | Should Match "UI"
    }
    
    It "Mantiene BASE si no hay cambios" {
        $resolution = Resolve-Conflict -Field "valor" -BaseValue 100 -SourceValue 100 -CurrentValue 100
        
        $resolution.Value | Should Be 100
        $resolution.Reason | Should Match "Sin cambios"
    }
}

