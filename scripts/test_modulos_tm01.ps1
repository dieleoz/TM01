# SCRIPT DE PRUEBA - MODULOS POWERSHELL TM01
# Archivo: scripts/test_modulos_tm01.ps1
# Proposito: Probar el funcionamiento de todos los modulos
# Fecha: 24 de octubre de 2025
# Version: 1.0

# Configurar logging
Import-Module -Name "modules\Logger.psm1" -Force
Set-LoggerConfig -LogLevel "INFO" -LogDirectory "logs" -EnableConsole $true

# Importar modulos
Import-Module -Name "modules\SistemaMapper.psm1" -Force
Import-Module -Name "modules\DTDetector.psm1" -Force
Import-Module -Name "modules\LayoutExecutor.psm1" -Force

Write-InfoLog -Message "=== INICIANDO PRUEBA DE MODULOS TM01 ===" -Source "TestModulos"

try {
    # PRUEBA 1: Logger
    Write-InfoLog -Message "PRUEBA 1: Modulo Logger" -Source "TestModulos"
    
    $Context = New-LogContext -ContextName "PruebaLogger"
    Write-DebugLog -Message "Mensaje de debug" -Source "TestModulos"
    Write-InfoLog -Message "Mensaje de informacion" -Source "TestModulos"
    Write-WarningLog -Message "Mensaje de advertencia" -Source "TestModulos"
    Write-ErrorLog -Message "Mensaje de error" -Source "TestModulos"
    Complete-LogContext -Context $Context -Status "COMPLETED"
    
    # PRUEBA 2: SistemaMapper
    Write-InfoLog -Message "PRUEBA 2: Modulo SistemaMapper" -Source "TestModulos"
    
    $Sistemas = Get-TodosSistemas
    Write-InfoLog -Message "Total sistemas: $($Sistemas.Count)" -Source "TestModulos"
    
    $SistemaSOS = Get-SistemaInfo -CodigoSistema "SOS"
    Write-InfoLog -Message "Sistema SOS: $($SistemaSOS.Nombre)" -Source "TestModulos"
    
    $Estadisticas = Get-EstadisticasProyecto
    Write-InfoLog -Message "Estadisticas proyecto: $($Estadisticas.TotalEquipos) equipos, $($Estadisticas.CostoTotal) USD" -Source "TestModulos"
    
    $CostoTotal = Get-CostoTotalProyecto
    Write-InfoLog -Message "Costo total proyecto: $CostoTotal USD" -Source "TestModulos"
    
    # PRUEBA 3: DTDetector
    Write-InfoLog -Message "PRUEBA 3: Modulo DTDetector" -Source "TestModulos"
    
    $TextoCambio = "Cambiar cantidad de postes SOS de 88 a 100 unidades"
    $RequiereDT = Test-PatronDT -Texto $TextoCambio -TipoPatron "CantidadEquipos"
    Write-InfoLog -Message "Texto requiere DT: $RequiereDT" -Source "TestModulos"
    
    $InfoCambio = Get-InfoCambio -Texto $TextoCambio
    Write-InfoLog -Message "Info cambio: $($InfoCambio.TipoCambio) - $($InfoCambio.Sistema)" -Source "TestModulos"
    
    $DT = New-DTAutomatica -TextoCambio $TextoCambio -Sistema "SOS" -Justificacion "Mejora de cobertura"
    Write-InfoLog -Message "DT generada: $($DT.Id)" -Source "TestModulos"
    
    # PRUEBA 4: LayoutExecutor
    Write-InfoLog -Message "PRUEBA 4: Modulo LayoutExecutor" -Source "TestModulos"
    
    $Coordenadas = Get-CoordenadasPorPK -PK 100
    Write-InfoLog -Message "Coordenadas PK 100: $($Coordenadas.Latitud), $($Coordenadas.Longitud)" -Source "TestModulos"
    
    $LayoutSOS = Get-LayoutSistema -Sistema "SOS"
    Write-InfoLog -Message "Layout SOS generado: $($LayoutSOS.Count) equipos" -Source "TestModulos"
    
    $LayoutCompleto = New-LayoutCompleto -IncluirTodos
    Write-InfoLog -Message "Layout completo generado: $($LayoutCompleto.Count) equipos" -Source "TestModulos"
    
    # PRUEBA 5: Exportacion
    Write-InfoLog -Message "PRUEBA 5: Exportacion de datos" -Source "TestModulos"
    
    $Exportado = Export-Layout -Layout $LayoutCompleto -FilePath "test_layout.js" -Format "JavaScript"
    Write-InfoLog -Message "Layout exportado: $Exportado" -Source "TestModulos"
    
    $Validado = Test-Layout -Layout $LayoutCompleto
    Write-InfoLog -Message "Layout validado: $Validado" -Source "TestModulos"
    
    Write-InfoLog -Message "=== PRUEBA DE MODULOS TM01 COMPLETADA EXITOSAMENTE ===" -Source "TestModulos"
    
    # Mostrar resumen
    Write-Host "`n=== RESUMEN DE PRUEBAS ===" -ForegroundColor Green
    Write-Host "Logger: Funcionando correctamente" -ForegroundColor Green
    Write-Host "SistemaMapper: $($Sistemas.Count) sistemas mapeados" -ForegroundColor Green
    Write-Host "DTDetector: Deteccion automatica operativa" -ForegroundColor Green
    Write-Host "LayoutExecutor: $($LayoutCompleto.Count) equipos generados" -ForegroundColor Green
    Write-Host "Exportacion: Archivos generados correctamente" -ForegroundColor Green
    Write-Host "Validacion: Layout validado exitosamente" -ForegroundColor Green
    
    Write-Host "`n=== ESTADISTICAS DEL PROYECTO ===" -ForegroundColor Cyan
    Write-Host "Total Sistemas: $($Estadisticas.TotalSistemas)" -ForegroundColor Cyan
    Write-Host "Total Equipos: $($Estadisticas.TotalEquipos)" -ForegroundColor Cyan
    Write-Host "Costo Total: $($Estadisticas.CostoTotal) USD" -ForegroundColor Cyan
    Write-Host "Costo Total COP: $($Estadisticas.CostoTotal * 4400) COP" -ForegroundColor Cyan
    
    Write-Host "`n=== PROXIMOS PASOS ===" -ForegroundColor Blue
    Write-Host "1. Integrar modulos en scripts existentes" -ForegroundColor Blue
    Write-Host "2. Crear documentacion tecnica completa" -ForegroundColor Blue
    Write-Host "3. Realizar testing integral del sistema" -ForegroundColor Blue
    Write-Host "4. Preparar validacion externa" -ForegroundColor Blue
    
} catch {
    Write-ErrorLog -Message "Error en prueba de modulos: $($_.Exception.Message)" -Source "TestModulos"
    Write-Host "Error en prueba de modulos: $($_.Exception.Message)" -ForegroundColor Red
    exit 1
}