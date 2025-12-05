// ═══════════════════════════════════════════════════════════════════════════
// SISTEMA TM01 - FUENTE ÚNICA DE VERDAD
// Generado automáticamente desde: RESUMEN_EJECUTIVO_PROYECTO_COMPLETADO.md
// Fecha de generación: 2025-12-05 09:51:01
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
            totalCapex: 14674900,
            totalCapexCOP: 58699600000,
            trm: 4000,
            fechaActualizacion: '2025-12-05 09:51:01',
            fuente: 'RESUMEN_EJECUTIVO_PROYECTO_COMPLETADO.md'
        };
        
        // SISTEMAS - Datos consolidados por sistema
        this.data.sistemas = [
            {
                id: '1',
                sistema: 'CCTV',
                cantidad: 30,
                capexUSD: 1890000,
                capexCOP: 7560000000,
                capexUnitarioUSD: 63000,
                descripcion: 'Sistema CCTV completo',
                estado: 'Validado'
            },
            {
                id: '2',
                sistema: 'Estaciones Meteorológicas',
                cantidad: 3,
                capexUSD: 180000,
                capexCOP: 720000000,
                capexUnitarioUSD: 60000,
                descripcion: 'Sistema Estaciones Meteorológicas completo',
                estado: 'Validado'
            },
            {
                id: '3',
                sistema: 'ETD/RADAR',
                cantidad: 15,
                capexUSD: 1650000,
                capexCOP: 6600000000,
                capexUnitarioUSD: 110000,
                descripcion: 'Sistema ETD/RADAR completo',
                estado: 'Validado'
            },
            {
                id: '4',
                sistema: 'PMV',
                cantidad: 28,
                capexUSD: 2450000,
                capexCOP: 9800000000,
                capexUnitarioUSD: 87500,
                descripcion: 'Sistema PMV completo',
                estado: 'Validado'
            },
            {
                id: '5',
                sistema: 'Postes SOS',
                cantidad: 88,
                capexUSD: 1234000,
                capexCOP: 4936000000,
                capexUnitarioUSD: 14022.73,
                descripcion: 'Sistema Postes SOS completo',
                estado: 'Validado'
            },
            {
                id: '6',
                sistema: 'Telecomunicaciones',
                cantidad: 1,
                capexUSD: 6719900,
                capexCOP: 26879600000,
                capexUnitarioUSD: 6719900,
                descripcion: 'Sistema Telecomunicaciones completo',
                estado: 'Validado'
            },
            {
                id: '7',
                sistema: 'WIM',
                cantidad: 1,
                capexUSD: 551000,
                capexCOP: 2204000000,
                capexUnitarioUSD: 551000,
                descripcion: 'Sistema WIM completo',
                estado: 'Validado'
            }
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
console.log('📊 Total CAPEX: $' + window.tm01MasterData.getTotalCapex().toLocaleString() + ' USD');
console.log('📅 Última actualización: 2025-12-05 09:51:01');