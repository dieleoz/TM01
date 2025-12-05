#requires -Version 5.1
# Script para reconstruir tm01_master_data.js desde RESUMEN_EJECUTIVO_PROYECTO_COMPLETADO.md
# Este script es la FUENTE ÚNICA DE VERDAD para el sistema web

param(
    [switch]$DryRun
)

Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'

Write-Host "═══════════════════════════════════════════════════════════" -ForegroundColor Cyan
Write-Host "  🔄 RECONSTRUYENDO tm01_master_data.js DESDE FUENTE ÚNICA" -ForegroundColor Cyan
Write-Host "═══════════════════════════════════════════════════════════" -ForegroundColor Cyan
Write-Host ""

# Fuente única de verdad
$resumenFile = "RESUMEN_EJECUTIVO_PROYECTO_COMPLETADO.md"
$masterFile = "docs/data/tm01_master_data.js"

if (-not (Test-Path $resumenFile)) {
    Write-Error "Archivo fuente no encontrado: $resumenFile"
    exit 1
}

Write-Host "📄 Leyendo fuente única de verdad: $resumenFile" -ForegroundColor Yellow
$content = Get-Content $resumenFile -Raw -Encoding UTF8

# Extraer tabla de CAPEX por Sistema
$capexTable = @{}
if ($content -match '### 8\.1 CAPEX por Sistema\s+\|[^\|]+\|[^\|]+\|[^\|]+\|\s+\|[:\-]+\|[:\-]+\|[:\-]+\|([\s\S]*?)(?=\n\n|\*\*TRM)') {
    $tableContent = $matches[1]
    $lines = $tableContent -split "`n" | Where-Object { $_ -match '\|' -and $_ -notmatch '^[\s\|:\-]+$' }
    
    foreach ($line in $lines) {
        if ($line -match '\|\s*\*\*([^*]+)\*\*\s*\|\s*\$?([\d,]+)\s*\|') {
            $sistema = $matches[1].Trim()
            $capex = [int]($matches[2] -replace ',', '')
            $capexTable[$sistema] = $capex
            Write-Host "  ✅ $sistema : `$$($capex.ToString('N0')) USD" -ForegroundColor Green
        }
    }
}

if ($capexTable.Count -eq 0) {
    Write-Error "No se pudo extraer tabla CAPEX del RESUMEN_EJECUTIVO"
    exit 1
}

# Extraer cantidades contractuales
$cantidades = @{
    'Postes SOS' = 88
    'CCTV' = 30
    'PMV' = 28
    'ETD/RADAR' = 15
    'WIM' = 1
    'Estaciones Meteorológicas' = 3
    'Telecomunicaciones' = 1
}

Write-Host ""
Write-Host "📊 Datos extraídos:" -ForegroundColor Cyan
Write-Host "  Sistemas: $($capexTable.Count)" -ForegroundColor White
Write-Host "  CAPEX Total: `$$((($capexTable.Values | Measure-Object -Sum).Sum).ToString('N0')) USD" -ForegroundColor White

if ($DryRun) {
    Write-Host ""
    Write-Host "🔍 Modo DryRun - No se aplicarán cambios" -ForegroundColor Yellow
    exit 0
}

# Generar estructura WBS simplificada
$timestamp = Get-Date -Format 'yyyy-MM-dd HH:mm:ss'
$wbsData = @"
// ═══════════════════════════════════════════════════════════════════════════
// SISTEMA TM01 - FUENTE ÚNICA DE VERDAD
// Generado automáticamente desde: RESUMEN_EJECUTIVO_PROYECTO_COMPLETADO.md
// Fecha de generación: $timestamp
// ═══════════════════════════════════════════════════════════════════════════

class TM01MasterData {
    constructor() {
        this.data = {
            wbs: [],
            sistemas: [],
            resumen: {}
        };
        
        this.initializeData();
    }
    
    initializeData() {
        // RESUMEN EJECUTIVO - Valores consolidados
        this.data.resumen = {
            totalCapex: $(($capexTable.Values | Measure-Object -Sum).Sum),
            totalCapexCOP: $(($capexTable.Values | Measure-Object -Sum).Sum * 4000),
            trm: 4000,
            fechaActualizacion: '$timestamp',
            fuente: 'RESUMEN_EJECUTIVO_PROYECTO_COMPLETADO.md'
        };
        
        // SISTEMAS - Datos consolidados por sistema
        this.data.sistemas = [
"@

$sistemaId = 1
foreach ($sistema in $capexTable.Keys | Sort-Object) {
    $capex = $capexTable[$sistema]
    $cantidad = if ($cantidades.ContainsKey($sistema)) { $cantidades[$sistema] } else { 1 }
    $capexCOP = $capex * 4000
    
    $wbsData += @"

            {
                id: '$sistemaId',
                sistema: '$sistema',
                cantidad: $cantidad,
                capexUSD: $capex,
                capexCOP: $capexCOP,
                capexUnitarioUSD: $([math]::Round($capex / $cantidad, 2)),
                descripcion: 'Sistema $sistema completo',
                estado: 'Validado'
            },
"@
    $sistemaId++
}

$wbsData = $wbsData.TrimEnd(',')
$wbsData += @"

        ];
        
        // WBS - Estructura simplificada por capítulos
        this.data.wbs = this.data.sistemas.map((s, idx) => ({
            id: (idx + 1).toString(),
            nivel: 1,
            item: (idx + 1).toString(),
            descripcion: s.sistema,
            sistema: s.sistema,
            cantidad: s.cantidad.toString(),
            unidad: s.cantidad === 1 ? 'SISTEMA' : 'UND',
            tipo: 'capitulo',
            vu: s.capexUnitarioUSD.toString(),
            vuCOP: (s.capexUnitarioUSD * 4000).toString(),
            total: s.capexUSD.toString(),
            totalCOP: s.capexCOP.toString(),
            criterio: 'Validado contractualmente'
        }));
    }
    
    // MÉTODOS DE CONSULTA
    getSistema(nombre) {
        return this.data.sistemas.find(s => s.sistema === nombre);
    }
    
    getTotalCapex() {
        return this.data.resumen.totalCapex;
    }
    
    getEstadisticas() {
        const stats = {};
        this.data.sistemas.forEach(s => {
            stats[s.sistema] = {
                cantidad: s.cantidad,
                capexUSD: s.capexUSD,
                capexCOP: s.capexCOP,
                porcentaje: ((s.capexUSD / this.data.resumen.totalCapex) * 100).toFixed(2)
            };
        });
        return stats;
    }
    
    exportarDatos() {
        return {
            wbs: this.data.wbs,
            sistemas: this.data.sistemas,
            resumen: this.data.resumen,
            estadisticas: this.getEstadisticas(),
            fechaExportacion: new Date().toISOString()
        };
    }
}

// Instancia global
window.tm01MasterData = new TM01MasterData();
window.TM01MasterData = TM01MasterData;

// Funciones de utilidad globales
window.obtenerEstadisticas = function() {
    return window.tm01MasterData.getEstadisticas();
};

window.exportarDatosCompletos = function() {
    return window.tm01MasterData.exportarDatos();
};

console.log('✅ TM01 Master Data cargado desde RESUMEN_EJECUTIVO');
console.log('📊 Total CAPEX: `$' + window.tm01MasterData.getTotalCapex().toLocaleString() + ' USD');
console.log('📅 Última actualización: $timestamp');
"@

# Crear backup
if (Test-Path $masterFile) {
    $backupFile = "$masterFile.backup_$(Get-Date -Format 'yyyyMMdd_HHmmss')"
    Copy-Item $masterFile $backupFile -Force
    Write-Host ""
    Write-Host "💾 Backup creado: $backupFile" -ForegroundColor Gray
}

# Guardar archivo
Write-Host ""
Write-Host "📝 Generando $masterFile..." -ForegroundColor Yellow
Set-Content $masterFile -Value $wbsData -Encoding UTF8 -NoNewline

Write-Host "  ✅ Archivo generado exitosamente" -ForegroundColor Green
Write-Host ""
Write-Host "═══════════════════════════════════════════════════════════" -ForegroundColor Cyan
Write-Host "  ✅ RECONSTRUCCIÓN COMPLETADA" -ForegroundColor Green
Write-Host "═══════════════════════════════════════════════════════════" -ForegroundColor Cyan
Write-Host ""
Write-Host "📊 Resumen:" -ForegroundColor Cyan
Write-Host "  • Sistemas: $($capexTable.Count)" -ForegroundColor White
Write-Host "  • CAPEX Total: `$$((($capexTable.Values | Measure-Object -Sum).Sum).ToString('N0')) USD" -ForegroundColor White
Write-Host "  • Archivo: $masterFile" -ForegroundColor White
Write-Host ""
Write-Host "🎯 Próximo paso: Reiniciar servidor web" -ForegroundColor Yellow
Write-Host "   .\docs\servidor_web.ps1" -ForegroundColor Cyan
