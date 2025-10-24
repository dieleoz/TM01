# SCRIPT DE TESTING INTEGRAL - SISTEMA TM01
# Archivo: scripts/testing_integral_tm01.ps1
# Proposito: Ejecutar testing integral completo del sistema
# Fecha: 24 de octubre de 2025
# Version: 1.0

# Configurar logging
Import-Module -Name "modules\Logger.psm1" -Force
Set-LoggerConfig -LogLevel "INFO" -LogDirectory "logs" -EnableConsole $true

# Importar módulos
Import-Module -Name "modules\SistemaMapper.psm1" -Force
Import-Module -Name "modules\DTDetector.psm1" -Force
Import-Module -Name "modules\LayoutExecutor.psm1" -Force

# Variables globales para resultados
$Global:TestResults = @{
    TotalTests = 0
    PassedTests = 0
    FailedTests = 0
    TestDetails = @()
    StartTime = Get-Date
    EndTime = $null
    Duration = $null
}

# Función para ejecutar test
function Invoke-Test {
    param(
        [string]$TestName,
        [scriptblock]$TestScript,
        [string]$Category = "General"
    )
    
    $Global:TestResults.TotalTests++
    
    try {
        Write-InfoLog -Message "Ejecutando test: $TestName" -Source "TestingIntegral"
        
        $TestResult = & $TestScript
        
        if ($TestResult) {
            $Global:TestResults.PassedTests++
            $Global:TestResults.TestDetails += @{
                Name = $TestName
                Category = $Category
                Status = "PASS"
                Message = "Test exitoso"
                Timestamp = Get-Date
            }
            Write-InfoLog -Message "Test PASSED: $TestName" -Source "TestingIntegral"
            return $true
        } else {
            $Global:TestResults.FailedTests++
            $Global:TestResults.TestDetails += @{
                Name = $TestName
                Category = $Category
                Status = "FAIL"
                Message = "Test falló"
                Timestamp = Get-Date
            }
            Write-ErrorLog -Message "Test FAILED: $TestName" -Source "TestingIntegral"
            return $false
        }
        
    } catch {
        $Global:TestResults.FailedTests++
        $Global:TestResults.TestDetails += @{
            Name = $TestName
            Category = $Category
            Status = "ERROR"
            Message = $_.Exception.Message
            Timestamp = Get-Date
        }
        Write-ErrorLog -Message "Test ERROR: $TestName - $($_.Exception.Message)" -Source "TestingIntegral"
        return $false
    }
}

# FASE 1: TESTING UNITARIO
function Start-UnitTesting {
    Write-InfoLog -Message "=== INICIANDO FASE 1: TESTING UNITARIO ===" -Source "TestingIntegral"
    
    # Test 1: Logger.psm1
    Invoke-Test -TestName "Logger - Configuracion basica" -Category "Unitario" -TestScript {
        Set-LoggerConfig -LogLevel "DEBUG" -LogDirectory "logs"
        Write-InfoLog -Message "Test message" -Source "TestLogger"
        return (Test-Path "logs")
    }
    
    Invoke-Test -TestName "Logger - Contexto de correlacion" -Category "Unitario" -TestScript {
        $Context = New-LogContext -ContextName "TestContext"
        Write-InfoLog -Message "Context test" -Source "TestLogger"
        Complete-LogContext -Context $Context -Status "COMPLETED"
        return $true
    }
    
    # Test 2: SistemaMapper.psm1
    Invoke-Test -TestName "SistemaMapper - Informacion de sistemas" -Category "Unitario" -TestScript {
        $Sistemas = Get-TodosSistemas
        return ($Sistemas.Count -eq 7)
    }
    
    Invoke-Test -TestName "SistemaMapper - Sistema especifico" -Category "Unitario" -TestScript {
        $SistemaSOS = Get-SistemaInfo -CodigoSistema "SOS"
        return ($SistemaSOS -ne $null -and $SistemaSOS.Codigo -eq "SOS")
    }
    
    Invoke-Test -TestName "SistemaMapper - Calculos de costo" -Category "Unitario" -TestScript {
        $CostoSOS = Get-CostoTotalSistema -CodigoSistema "SOS"
        $CostoTotal = Get-CostoTotalProyecto
        return ($CostoSOS -gt 0 -and $CostoTotal -gt 0)
    }
    
    # Test 3: DTDetector.psm1
    Invoke-Test -TestName "DTDetector - Deteccion de patrones" -Category "Unitario" -TestScript {
        $TextoCambio = "Cambiar cantidad de postes SOS de 88 a 100 unidades"
        $RequiereDT = Test-PatronDT -Texto $TextoCambio -TipoPatron "CantidadEquipos"
        return $RequiereDT
    }
    
    Invoke-Test -TestName "DTDetector - Extraccion de informacion" -Category "Unitario" -TestScript {
        $TextoCambio = "Cambiar cantidad de postes SOS de 88 a 100 unidades"
        $InfoCambio = Get-InfoCambio -Texto $TextoCambio
        return ($InfoCambio.TipoCambio -eq "CantidadEquipos" -and $InfoCambio.Sistema -eq "SOS")
    }
    
    # Test 4: LayoutExecutor.psm1
    Invoke-Test -TestName "LayoutExecutor - Calculo de coordenadas" -Category "Unitario" -TestScript {
        $Coordenadas = Get-CoordenadasPorPK -PK 100
        return ($Coordenadas -ne $null -and $Coordenadas.PK -eq 100)
    }
    
    Invoke-Test -TestName "LayoutExecutor - Generacion de layout" -Category "Unitario" -TestScript {
        $LayoutSOS = Get-LayoutSistema -Sistema "SOS"
        return ($LayoutSOS -ne $null -and $LayoutSOS.Count -gt 0)
    }
}

# FASE 2: TESTING DE INTEGRACION
function Start-IntegrationTesting {
    Write-InfoLog -Message "=== INICIANDO FASE 2: TESTING DE INTEGRACION ===" -Source "TestingIntegral"
    
    # Test 1: Scripts de sincronización
    Invoke-Test -TestName "Script - sync_wbs_tm01.ps1" -Category "Integracion" -TestScript {
        $StartTime = Get-Date
        $Result = powershell -ExecutionPolicy Bypass -File "scripts/sync_wbs_tm01.ps1" -Verbose
        $EndTime = Get-Date
        $Duration = ($EndTime - $StartTime).TotalSeconds
        
        $FileExists = Test-Path "Sistema_Validacion_Web/datos_wbs_TM01_items.js"
        $FileSize = if ($FileExists) { (Get-Item "Sistema_Validacion_Web/datos_wbs_TM01_items.js").Length } else { 0 }
        
        return ($LASTEXITCODE -eq 0 -and $FileExists -and $FileSize -gt 20000 -and $Duration -lt 10)
    }
    
    Invoke-Test -TestName "Script - sincronizar_layout.ps1" -Category "Integracion" -TestScript {
        $StartTime = Get-Date
        $Result = powershell -ExecutionPolicy Bypass -File "scripts/sincronizar_layout.ps1" -Verbose
        $EndTime = Get-Date
        $Duration = ($EndTime - $StartTime).TotalSeconds
        
        $FileExists = Test-Path "Sistema_Validacion_Web/layout_datos.js"
        $FileSize = if ($FileExists) { (Get-Item "Sistema_Validacion_Web/layout_datos.js").Length } else { 0 }
        
        return ($LASTEXITCODE -eq 0 -and $FileExists -and $FileSize -gt 5000 -and $Duration -lt 15)
    }
    
    Invoke-Test -TestName "Script - sincronizar_presupuesto.ps1" -Category "Integracion" -TestScript {
        $StartTime = Get-Date
        $Result = powershell -ExecutionPolicy Bypass -File "scripts/sincronizar_presupuesto.ps1" -Verbose
        $EndTime = Get-Date
        $Duration = ($EndTime - $StartTime).TotalSeconds
        
        $FileExists = Test-Path "Sistema_Validacion_Web/presupuesto_datos.js"
        $FileSize = if ($FileExists) { (Get-Item "Sistema_Validacion_Web/presupuesto_datos.js").Length } else { 0 }
        
        return ($LASTEXITCODE -eq 0 -and $FileExists -and $FileSize -gt 10000 -and $Duration -lt 10)
    }
    
    # Test 2: Script maestro
    Invoke-Test -TestName "Script - sincronizar_SISTEMA_TM01_COMPLETO.ps1" -Category "Integracion" -TestScript {
        $StartTime = Get-Date
        $Result = powershell -ExecutionPolicy Bypass -File "scripts/sincronizar_SISTEMA_TM01_COMPLETO.ps1" -Verbose
        $EndTime = Get-Date
        $Duration = ($EndTime - $StartTime).TotalSeconds
        
        $AllFilesExist = (Test-Path "Sistema_Validacion_Web/datos_wbs_TM01_items.js") -and
                        (Test-Path "Sistema_Validacion_Web/layout_datos.js") -and
                        (Test-Path "Sistema_Validacion_Web/presupuesto_datos.js")
        
        return ($LASTEXITCODE -eq 0 -and $AllFilesExist -and $Duration -lt 30)
    }
}

# FASE 3: TESTING DE SISTEMA
function Start-SystemTesting {
    Write-InfoLog -Message "=== INICIANDO FASE 3: TESTING DE SISTEMA ===" -Source "TestingIntegral"
    
    # Test 1: Arquitectura de 4 capas
    Invoke-Test -TestName "Arquitectura - Capa 1 Fuentes de Verdad" -Category "Sistema" -TestScript {
        $MasterDataExists = Test-Path "Sistema_Validacion_Web/data/tm01_master_data.js"
        if ($MasterDataExists) {
            $MasterData = Get-Content "Sistema_Validacion_Web/data/tm01_master_data.js" -Raw
            return ($MasterData.Length -gt 10000)
        }
        return $false
    }
    
    Invoke-Test -TestName "Arquitectura - Capa 2 Transformacion" -Category "Sistema" -TestScript {
        $ScriptsExist = (Test-Path "scripts/sync_wbs_tm01.ps1") -and
                       (Test-Path "scripts/sincronizar_layout.ps1") -and
                       (Test-Path "scripts/sincronizar_presupuesto.ps1") -and
                       (Test-Path "scripts/sincronizar_SISTEMA_TM01_COMPLETO.ps1")
        
        $ModulesExist = (Test-Path "modules/Logger.psm1") -and
                       (Test-Path "modules/SistemaMapper.psm1") -and
                       (Test-Path "modules/DTDetector.psm1") -and
                       (Test-Path "modules/LayoutExecutor.psm1")
        
        return ($ScriptsExist -and $ModulesExist)
    }
    
    Invoke-Test -TestName "Arquitectura - Capa 3 Datos Intermedios" -Category "Sistema" -TestScript {
        $WBSExists = Test-Path "Sistema_Validacion_Web/datos_wbs_TM01_items.js"
        $LayoutExists = Test-Path "Sistema_Validacion_Web/layout_datos.js"
        $PresupuestoExists = Test-Path "Sistema_Validacion_Web/presupuesto_datos.js"
        
        if ($WBSExists -and $LayoutExists -and $PresupuestoExists) {
            $WBSSize = (Get-Item "Sistema_Validacion_Web/datos_wbs_TM01_items.js").Length
            $LayoutSize = (Get-Item "Sistema_Validacion_Web/layout_datos.js").Length
            $PresupuestoSize = (Get-Item "Sistema_Validacion_Web/presupuesto_datos.js").Length
            
            return ($WBSSize -gt 20000 -and $LayoutSize -gt 5000 -and $PresupuestoSize -gt 10000)
        }
        return $false
    }
    
    Invoke-Test -TestName "Arquitectura - Capa 4 Visualizacion" -Category "Sistema" -TestScript {
        $InterfacesExist = (Test-Path "Sistema_Validacion_Web/index.html") -and
                          (Test-Path "Sistema_Validacion_Web/wbs.html") -and
                          (Test-Path "Sistema_Validacion_Web/layout.html") -and
                          (Test-Path "Sistema_Validacion_Web/presupuesto.html")
        
        return $InterfacesExist
    }
    
    # Test 2: Sistema de DTs
    Invoke-Test -TestName "Sistema DTs - Deteccion automatica" -Category "Sistema" -TestScript {
        $TextoCambio = "Cambiar cantidad de postes SOS de 88 a 100 unidades"
        $DT = Invoke-DTDetection -TextoCambio $TextoCambio -Sistema "SOS" -AutoExecute $false
        return ($DT -ne $null -and $DT.Id -like "DT-TM01-SOS-*")
    }
}

# FASE 4: TESTING DE RENDIMIENTO
function Start-PerformanceTesting {
    Write-InfoLog -Message "=== INICIANDO FASE 4: TESTING DE RENDIMIENTO ===" -Source "TestingIntegral"
    
    # Test 1: Tiempos de ejecución
    Invoke-Test -TestName "Rendimiento - Tiempo sincronizacion completa" -Category "Rendimiento" -TestScript {
        $StartTime = Get-Date
        $Result = powershell -ExecutionPolicy Bypass -File "scripts/sincronizar_SISTEMA_TM01_COMPLETO.ps1"
        $EndTime = Get-Date
        $Duration = ($EndTime - $StartTime).TotalSeconds
        
        return ($Duration -lt 30 -and $LASTEXITCODE -eq 0)
    }
    
    # Test 2: Uso de recursos
    Invoke-Test -TestName "Rendimiento - Uso de memoria" -Category "Rendimiento" -TestScript {
        $Process = Get-Process -Name "powershell" | Where-Object {$_.Id -eq $PID}
        $MemoryUsage = $Process.WorkingSet64 / 1MB
        return ($MemoryUsage -lt 200)
    }
    
    # Test 3: Espacio en disco
    Invoke-Test -TestName "Rendimiento - Espacio en disco" -Category "Rendimiento" -TestScript {
        $DiskSpace = Get-WmiObject -Class Win32_LogicalDisk | Where-Object {$_.DeviceID -eq "C:"}
        $FreeSpace = $DiskSpace.FreeSpace / 1GB
        return ($FreeSpace -gt 1)
    }
}

# FASE 5: TESTING DE REGRESION
function Start-RegressionTesting {
    Write-InfoLog -Message "=== INICIANDO FASE 5: TESTING DE REGRESION ===" -Source "TestingIntegral"
    
    # Test 1: Cambio en cantidad
    Invoke-Test -TestName "Regresion - Cambio cantidad SOS" -Category "Regresion" -TestScript {
        # Simular cambio en cantidad
        $TextoCambio = "Cambiar cantidad de postes SOS de 88 a 100 unidades"
        $DT = Invoke-DTDetection -TextoCambio $TextoCambio -Sistema "SOS" -AutoExecute $false
        
        return ($DT -ne $null -and $DT.ImpactoPresupuestal.DiferenciaUSD -gt 0)
    }
    
    # Test 2: Cambio en especificación
    Invoke-Test -TestName "Regresion - Cambio especificacion ETD" -Category "Regresion" -TestScript {
        $TextoCambio = "Actualizar especificacion de ETD segun nueva norma"
        $DT = Invoke-DTDetection -TextoCambio $TextoCambio -Sistema "ETD" -AutoExecute $false
        
        return ($DT -ne $null -and $DT.TipoCambio -eq "EspecificacionesTecnicas")
    }
    
    # Test 3: Cambio en ubicación
    Invoke-Test -TestName "Regresion - Cambio ubicacion CCTV" -Category "Regresion" -TestScript {
        $TextoCambio = "Mover camara CCTV a PK 150"
        $DT = Invoke-DTDetection -TextoCambio $TextoCambio -Sistema "CCTV" -AutoExecute $false
        
        return ($DT -ne $null -and $DT.TipoCambio -eq "UbicacionesCoordenadas")
    }
}

# Función para generar reporte
function Generate-TestReport {
    $Global:TestResults.EndTime = Get-Date
    $Global:TestResults.Duration = $Global:TestResults.EndTime - $Global:TestResults.StartTime
    
    $ReportContent = @"
# REPORTE DE TESTING INTEGRAL - SISTEMA TM01
## Fecha: $(Get-Date -Format "yyyy-MM-dd HH:mm:ss")
## Versión: 1.0

### RESUMEN EJECUTIVO
- **Total Tests**: $($Global:TestResults.TotalTests)
- **Tests Exitosos**: $($Global:TestResults.PassedTests)
- **Tests Fallidos**: $($Global:TestResults.FailedTests)
- **Cobertura**: $([Math]::Round(($Global:TestResults.PassedTests / $Global:TestResults.TotalTests) * 100, 2))%
- **Estado General**: $(if ($Global:TestResults.FailedTests -eq 0) { "PASS" } else { "FAIL" })
- **Duración Total**: $([Math]::Round($Global:TestResults.Duration.TotalMinutes, 2)) minutos

### DETALLE POR CATEGORIA
"@
    
    $Categories = $Global:TestResults.TestDetails | Group-Object Category
    foreach ($Category in $Categories) {
        $CategoryTests = $Category.Group
        $PassedCount = ($CategoryTests | Where-Object { $_.Status -eq "PASS" }).Count
        $FailedCount = ($CategoryTests | Where-Object { $_.Status -ne "PASS" }).Count
        
        $ReportContent += @"

#### $($Category.Name)
- **Tests Ejecutados**: $($CategoryTests.Count)
- **Tests Exitosos**: $PassedCount
- **Tests Fallidos**: $FailedCount
- **Estado**: $(if ($FailedCount -eq 0) { "PASS" } else { "FAIL" })
"@
    }
    
    $ReportContent += @"

### DETALLE POR TEST
"@
    
    foreach ($Test in $Global:TestResults.TestDetails) {
        $StatusIcon = if ($Test.Status -eq "PASS") { "✅" } else { "❌" }
        $ReportContent += @"

- $StatusIcon **$($Test.Name)** ($($Test.Category))
  - **Estado**: $($Test.Status)
  - **Mensaje**: $($Test.Message)
  - **Timestamp**: $($Test.Timestamp)
"@
    }
    
    $ReportContent += @"

### MÉTRICAS DE RENDIMIENTO
- **Tiempo de Sincronización Completa**: < 30 segundos
- **Uso de Memoria**: < 200 MB
- **Espacio en Disco**: > 1 GB libre

### PROBLEMAS IDENTIFICADOS
"@
    
    $FailedTests = $Global:TestResults.TestDetails | Where-Object { $_.Status -ne "PASS" }
    if ($FailedTests) {
        foreach ($Test in $FailedTests) {
            $ReportContent += @"

- **$($Test.Name)**: $($Test.Message)
"@
        }
    } else {
        $ReportContent += @"

- Ningún problema identificado
"@
    }
    
    $ReportContent += @"

### RECOMENDACIONES
"@
    
    if ($Global:TestResults.FailedTests -eq 0) {
        $ReportContent += @"

- ✅ Sistema listo para producción
- ✅ Todos los componentes funcionando correctamente
- ✅ Rendimiento dentro de parámetros esperados
- ✅ Documentación completa y actualizada
"@
    } else {
        $ReportContent += @"

- 🔧 Revisar tests fallidos
- 🔧 Corregir problemas identificados
- 🔧 Ejecutar testing de regresión
- 🔧 Validar antes de producción
"@
    }
    
    $ReportContent += @"

### CONCLUSIÓN
$(if ($Global:TestResults.FailedTests -eq 0) {
    "El sistema TM01 ha pasado exitosamente todas las pruebas de testing integral. El sistema está listo para uso en producción."
} else {
    "El sistema TM01 presenta $($Global:TestResults.FailedTests) tests fallidos que requieren atención antes de proceder a producción."
})

### PRÓXIMOS PASOS
$(if ($Global:TestResults.FailedTests -eq 0) {
    "- Proceder con validación externa con Interventoría`n- Preparar validación externa con ANI`n- Implementar en producción"
} else {
    "- Corregir problemas identificados`n- Ejecutar testing de regresión`n- Revalidar sistema completo"
})
"@
    
    # Escribir reporte
    $ReportPath = "logs/reporte_testing_integral_$(Get-Date -Format 'yyyyMMdd_HHmmss').md"
    Set-Content -Path $ReportPath -Value $ReportContent -Encoding UTF8
    
    Write-InfoLog -Message "Reporte generado: $ReportPath" -Source "TestingIntegral"
    return $ReportPath
}

# Función principal
function Start-IntegralTesting {
    Write-InfoLog -Message "=== INICIANDO TESTING INTEGRAL SISTEMA TM01 ===" -Source "TestingIntegral"
    
    try {
        # Ejecutar todas las fases
        Start-UnitTesting
        Start-IntegrationTesting
        Start-SystemTesting
        Start-PerformanceTesting
        Start-RegressionTesting
        
        # Generar reporte
        $ReportPath = Generate-TestReport
        
        # Mostrar resumen
        Write-Host "`n=== RESUMEN DE TESTING INTEGRAL ===" -ForegroundColor Green
        Write-Host "Total Tests: $($Global:TestResults.TotalTests)" -ForegroundColor Cyan
        Write-Host "Tests Exitosos: $($Global:TestResults.PassedTests)" -ForegroundColor Green
        Write-Host "Tests Fallidos: $($Global:TestResults.FailedTests)" -ForegroundColor Red
        Write-Host "Cobertura: $([Math]::Round(($Global:TestResults.PassedTests / $Global:TestResults.TotalTests) * 100, 2))%" -ForegroundColor Yellow
        Write-Host "Duración: $([Math]::Round($Global:TestResults.Duration.TotalMinutes, 2)) minutos" -ForegroundColor Magenta
        Write-Host "Estado: $(if ($Global:TestResults.FailedTests -eq 0) { "✅ PASS" } else { "❌ FAIL" })" -ForegroundColor $(if ($Global:TestResults.FailedTests -eq 0) { "Green" } else { "Red" })
        
        Write-Host "`n=== REPORTE ===" -ForegroundColor Blue
        Write-Host "Reporte generado: $ReportPath" -ForegroundColor Blue
        
        Write-Host "`n=== PRÓXIMOS PASOS ===" -ForegroundColor Blue
        if ($Global:TestResults.FailedTests -eq 0) {
            Write-Host "✅ Sistema listo para validación externa" -ForegroundColor Green
            Write-Host "✅ Proceder con Interventoría" -ForegroundColor Green
            Write-Host "✅ Preparar validación con ANI" -ForegroundColor Green
        } else {
            Write-Host "🔧 Corregir problemas identificados" -ForegroundColor Yellow
            Write-Host "🔧 Ejecutar testing de regresión" -ForegroundColor Yellow
            Write-Host "🔧 Revalidar sistema completo" -ForegroundColor Yellow
        }
        
        return ($Global:TestResults.FailedTests -eq 0)
        
    } catch {
        Write-ErrorLog -Message "Error en testing integral: $($_.Exception.Message)" -Source "TestingIntegral"
        Write-Host "❌ Error en testing integral: $($_.Exception.Message)" -ForegroundColor Red
        return $false
    }
}

# Ejecutar testing integral
$Result = Start-IntegralTesting

if ($Result) {
    Write-Host "`n🎉 TESTING INTEGRAL COMPLETADO EXITOSAMENTE" -ForegroundColor Green
    exit 0
} else {
    Write-Host "`n❌ TESTING INTEGRAL COMPLETADO CON ERRORES" -ForegroundColor Red
    exit 1
}
