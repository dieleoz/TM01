// TM01 Master Data - Regenerado desde cero
// Fecha: 2026-02-02
// Fuente: Datos consolidados de T05 + datos_wbs_TM01_items.js
// Metodología: Punto 42 v3.0 (5 Capas)

class TM01MasterData {
    constructor() {
        this.data = {
            // Metadata del proyecto
            proyecto: "TM01 Troncal Magdalena",
            longitud: 293, // km
            trmOficial: 4400, // COP/USD (Certificado Audit 6.0)

            // Sistemas ITS
            sistemas: [
                {
                    sistema: "SOS (Postes de Auxilio)",
                    cantidad: 88, // Nuevos a instalar (98 total - 10 existentes)
                    capexUnitarioUSD: 25000,
                    capexUSD: 2200000,
                    capexCOP: 9680000000,
                    categoria: "ITS",
                    estado: "Validado"
                },
                {
                    sistema: "PMV (Mensajería Variable)",
                    cantidad: 39, // 25 mainline + 14 peajes
                    capexUnitarioUSD: 60513,
                    capexUSD: 2360000,
                    capexCOP: 10384000000,
                    categoria: "ITS",
                    estado: "Validado"
                },
                {
                    sistema: "CCTV (Seguridad)",
                    cantidad: 9, // Optimizado (DT-CCTV-003)
                    capexUnitarioUSD: 12900,
                    capexUSD: 116100,
                    capexCOP: 510840000,
                    categoria: "ITS",
                    estado: "Validado"
                },
                {
                    sistema: "Peajes",
                    cantidad: 14, // Carriles
                    capexUnitarioUSD: 135015.64,
                    capexUSD: 1890219,
                    capexCOP: 8316963600,
                    categoria: "ITS",
                    estado: "Validado"
                },
                {
                    sistema: "WIM (Pesaje Dinámico)",
                    cantidad: 1, // Estación bidireccional
                    capexUnitarioUSD: 551425,
                    capexUSD: 551425,
                    capexCOP: 2426270000,
                    categoria: "ITS",
                    estado: "Validado"
                },
                {
                    sistema: "METEO (Estaciones Meteorológicas)",
                    cantidad: 3,
                    capexUnitarioUSD: 50000,
                    capexUSD: 150000,
                    capexCOP: 660000000,
                    categoria: "ITS",
                    estado: "Validado"
                },
                {
                    sistema: "Fibra Óptica",
                    cantidad: 322, // km (293 km corredor + 29 km redundancia)
                    capexUnitarioUSD: 24782, // Promedio global T05
                    capexUSD: 7980000, // T05 Ingenieria Detalle v1.1
                    capexCOP: 35112000000,
                    categoria: "Telecomunicaciones",
                    estado: "Validado"
                },
                {
                    sistema: "Switches L2",
                    cantidad: 45,
                    capexUnitarioUSD: 0,
                    capexUSD: 0,
                    capexCOP: 0,
                    categoria: "Telecomunicaciones",
                    estado: "Incluido en Fibra"
                },
                {
                    sistema: "Switches L3",
                    cantidad: 12,
                    capexUnitarioUSD: 0,
                    capexUSD: 0,
                    capexCOP: 0,
                    categoria: "Telecomunicaciones",
                    estado: "Incluido en Fibra"
                },
                {
                    sistema: "Radio FM",
                    cantidad: 0, // Modelo OpEx (DT-RADIO-001)
                    capexUnitarioUSD: 0,
                    capexUSD: 0,
                    capexCOP: 0,
                    categoria: "ITS",
                    estado: "OpEx - Convenios"
                },
                {
                    sistema: "ETD/RADAR",
                    cantidad: 0, // Audit 6.0 (Estrategia Hard Deck)
                    capexUnitarioUSD: 0,
                    capexUSD: 0,
                    capexCOP: 0,
                    categoria: "ITS",
                    estado: "Cero Alcance Init"
                },
                {
                    sistema: "Gálibos",
                    cantidad: 20,
                    capexUnitarioUSD: 21630,
                    capexUSD: 432600,
                    capexCOP: 1903440000,
                    categoria: "ITS",
                    estado: "Validado"
                },
                {
                    sistema: "CCO/SCADA",
                    cantidad: 1,
                    capexUnitarioUSD: 845000,
                    capexUSD: 845000,
                    capexCOP: 3718000000,
                    categoria: "ITS",
                    estado: "Validado"
                }
            ],

            // Resúmenes por categoría (Audit 6.0 Certified)
            cctvSummary: {
                cantidad: 9,
                capexUSD: 116100,
                capexCOP: 510840000
            },
            sosSummary: {
                cantidad: 88,
                capexUSD: 2200000,
                capexCOP: 9680000000
            },
            pmvSummary: {
                cantidad: 39,
                capexUSD: 2360000,
                capexCOP: 10384000000
            },
            peajesSummary: {
                cantidad: 14,
                capexUSD: 1890219,
                capexCOP: 8316963600
            },
            wimSummary: {
                cantidad: 1,
                capexUSD: 551425,
                capexCOP: 2426270000
            },
            meteoSummary: {
                cantidad: 3,
                capexUSD: 150000,
                capexCOP: 660000000
            },
            telecomSummary: {
                cantidad: 322,
                capexUSD: 7980000,
                capexCOP: 35112000000
            },
            galibosSummary: {
                cantidad: 20,
                capexUSD: 432600,
                capexCOP: 1903440000
            },
            ccoSummary: {
                cantidad: 1,
                capexUSD: 845000,
                capexCOP: 3718000000
            },

            // Totales del proyecto (Audit 6.0 Baseline)
            totalCapexUSD: 16525344,
            totalCapexCOP: 72711513600,


            // Normativa aplicable
            normativa: {
                retie: "Resolución 40117 de 2024 (RETIE 2024)",
                iprev: "Resolución 20213040035125 de 2021 (IP/REV)",
                manual: "Manual de Señalización Vial 2024"
            },

            // Cronograma - Plan de Obras No Objetado (Audit 6.0 Certified)
            cronograma: [
                // Unidades Funcionales (Fuente: Plan de Obras No Objetado)
                { fase: "UNIDADES FUNCIONALES", nombre: "UF0 (Peaje Zambito)", inicio: "2024-11-29", fin: "2028-10-26", plazo: 47, longitud: 214.65, nota: "Acopio Lote 2" },
                { fase: "UNIDADES FUNCIONALES", nombre: "UF1.1", inicio: "2024-11-29", fin: "2026-10-26", plazo: 23, longitud: 4.9, nota: "Acopio Lote 1" },
                { fase: "UNIDADES FUNCIONALES", nombre: "UF1.2", inicio: "2024-11-29", fin: "2026-10-26", plazo: 23, longitud: 4.903, nota: "Acopio Lote 1" },
                { fase: "UNIDADES FUNCIONALES", nombre: "UF2.1", inicio: "2024-11-29", fin: "2027-06-27", plazo: 31, longitud: 4.31, nota: "Acopio Lote 2" },
                { fase: "UNIDADES FUNCIONALES", nombre: "UF2.2", inicio: "2024-11-29", fin: "2027-06-27", plazo: 31, longitud: 10.28, nota: "Acopio Lote 2" },
                { fase: "UNIDADES FUNCIONALES", nombre: "UF2.3", inicio: "2024-11-29", fin: "2027-06-27", plazo: 31, longitud: 12.25, nota: "Acopio Lote 2" },
                { fase: "UNIDADES FUNCIONALES", nombre: "UF3", inicio: "2024-11-29", fin: "2028-01-26", plazo: 38, longitud: 14.73, nota: "Acopio Lote 3" },
                { fase: "UNIDADES FUNCIONALES", nombre: "UF4", inicio: "2024-11-29", fin: "2028-05-27", plazo: 42, longitud: 10.93, nota: "Acopio Lote 3" },
                { fase: "UNIDADES FUNCIONALES", nombre: "UF5.1", inicio: "2024-11-29", fin: "2028-10-26", plazo: 47, longitud: 65.07, nota: "Acopio Lote 3" },
                { fase: "UNIDADES FUNCIONALES", nombre: "UF5.2", inicio: "2024-11-29", fin: "2028-10-26", plazo: 47, longitud: 5.84, nota: "Acopio Lote 3" },
                { fase: "UNIDADES FUNCIONALES", nombre: "UF6 (Peaje Aguas Negras)", inicio: "2024-11-29", fin: "2026-08-26", plazo: 21, longitud: 8.3, nota: "Acopio Lote 1" },
                { fase: "UNIDADES FUNCIONALES", nombre: "UF7", inicio: "2024-11-29", fin: "2027-06-27", plazo: 31, longitud: 15.261, nota: "Acopio Lote 2" },
                { fase: "UNIDADES FUNCIONALES", nombre: "UF8", inicio: "2024-11-29", fin: "2026-11-26", plazo: 24, longitud: 10.139, nota: "Acopio Lote 1" },
                { fase: "UNIDADES FUNCIONALES", nombre: "UF9", inicio: "2024-11-29", fin: "2027-08-26", plazo: 33, longitud: 12.25, nota: "Acopio Lote 2" },
                { fase: "UNIDADES FUNCIONALES", nombre: "UF10", inicio: "2024-11-29", fin: "2027-11-26", plazo: 36, longitud: 10.663, nota: "Acopio Lote 3" },
                { fase: "UNIDADES FUNCIONALES", nombre: "UF11", inicio: "2024-11-29", fin: "2028-10-26", plazo: 47, longitud: 84.63, nota: "Acopio Lote 3" },
                { fase: "UNIDADES FUNCIONALES", nombre: "UF12", inicio: "2024-11-29", fin: "2027-07-29", plazo: 32, longitud: 23.777, nota: "Acopio Lote 2" },
                { fase: "UNIDADES FUNCIONALES", nombre: "UF13 (CCO y Pesaje)", inicio: "2024-11-29", fin: "2028-01-27", plazo: 38, longitud: 9.0, nota: "Acopio Lote 3" },

                // Edificaciones
                { fase: "EDIFICACIONES", nombre: "Peaje Zambito", inicio: "2027-03-01", fin: "2028-10-26", nota: "Construcción y Equipamiento" },
                { fase: "EDIFICACIONES", nombre: "Área de Servicio Zambito", inicio: "2027-03-01", fin: "2028-10-26", nota: "Infraestructura Operativa" },
                { fase: "EDIFICACIONES", nombre: "Peaje Aguas Negras", inicio: "2027-10-28", fin: "2028-10-26", hito: true, nota: "Hito de Entrega Final" },
                { fase: "EDIFICACIONES", nombre: "Área de Servicio Aguas Negras", inicio: "2027-10-28", fin: "2028-10-26", hito: true, nota: "Hito de Entrega Final" },
                { fase: "EDIFICACIONES", nombre: "Área de Pesaje", inicio: "2027-10-28", fin: "2028-10-26", hito: true, nota: "Hito de Entrega Final" },

                // ITS
                { fase: "ITS", nombre: "Sistema Inteligente de Transportes - ITS", inicio: "2028-02-20", fin: "2028-10-26", nota: "Integración Full Corredor" }
            ]
        };
    }

    // Método para obtener sistema por nombre
    getSistema(nombre) {
        return this.data.sistemas.find(s => s.sistema.includes(nombre));
    }

    // Método para obtener total CAPEX
    getTotalCapex() {
        return {
            usd: this.data.totalCapexUSD,
            cop: this.data.totalCapexCOP
        };
    }

    // Método para obtener sistemas por categoría
    getSistemasPorCategoria(categoria) {
        return this.data.sistemas.filter(s => s.categoria === categoria);
    }

    // Métodos requeridos por Dashboards Ejecutivos (Audit 6.0)
    getEstadisticas() {
        return {
            totalUSD: this.data.totalCapexUSD,
            totalCOP: this.data.totalCapexCOP,
            trm: this.data.trmOficial
        };
    }

    getContractualSummary() {
        // Mapeo para tabla de sistemas contractuales
        return this.data.sistemas.map(s => ({
            sistema: s.sistema,
            cantidad: s.cantidad,
            capexUSD: s.capexUSD,
            estado: s.estado
        }));
    }

    getWBSItems() {
        if (window.wbsDataGlobal && window.wbsDataGlobal.items) {
            return window.wbsDataGlobal.items.filter(i => i.tipo === 'item');
        }
        return [];
    }
}

// Crear instancia y exportar
const tm01MasterData = new TM01MasterData();

// Compatibilidad con Node.js (para scripts)
if (typeof module !== 'undefined' && module.exports) {
    module.exports = tm01MasterData;
}

// Compatibilidad con navegador (para dashboards)
if (typeof window !== 'undefined') {
    window.TM01_MASTER_DATA = tm01MasterData;
    window.tm01MasterData = tm01MasterData; // Compatibility for dashboard-common.js
    window.tm01Data = tm01MasterData.data;
}

// Compatibilidad legacy
this.data = tm01MasterData.data;

// Function required by dashboards
window.obtenerResumenContractual = function () {
    return tm01MasterData.data.sistemas;
};
