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
            trmOficial: 4240, // COP/USD (Audit 6.0)

            // Sistemas ITS
            sistemas: [
                {
                    sistema: "SOS (Postes de Auxilio)",
                    cantidad: 88, // Nuevos a instalar (98 total - 10 existentes)
                    capexUnitarioUSD: 25000,
                    capexUSD: 2200000,
                    capexCOP: 9328000000,
                    categoria: "ITS",
                    estado: "Validado"
                },
                {
                    sistema: "PMV (Mensajería Variable)",
                    cantidad: 39, // 25 mainline + 14 peajes
                    capexUnitarioUSD: 60513,
                    capexUSD: 2360000,
                    capexCOP: 10006400000,
                    categoria: "ITS",
                    estado: "Validado"
                },
                {
                    sistema: "CCTV (Seguridad)",
                    cantidad: 9, // Optimizado (DT-CCTV-003)
                    capexUnitarioUSD: 12900,
                    capexUSD: 116100,
                    capexCOP: 492264000,
                    categoria: "ITS",
                    estado: "Validado"
                },
                {
                    sistema: "Peajes",
                    cantidad: 14, // Carriles
                    capexUnitarioUSD: 148571,
                    capexUSD: 2080000,
                    capexCOP: 8819200000,
                    categoria: "ITS",
                    estado: "Validado"
                },
                {
                    sistema: "WIM (Pesaje Dinámico)",
                    cantidad: 1, // Estación bidireccional
                    capexUnitarioUSD: 551425,
                    capexUSD: 551425,
                    capexCOP: 2338041000,
                    categoria: "ITS",
                    estado: "Validado"
                },
                {
                    sistema: "METEO (Estaciones Meteorológicas)",
                    cantidad: 3,
                    capexUnitarioUSD: 25000,
                    capexUSD: 75000,
                    capexCOP: 318000000,
                    categoria: "ITS",
                    estado: "Validado"
                },
                {
                    sistema: "Fibra Óptica",
                    cantidad: 322, // km (293 km corredor + 29 km redundancia)
                    capexUnitarioUSD: 3913,
                    capexUSD: 1260000,
                    capexCOP: 5342400000,
                    categoria: "Telecomunicaciones",
                    estado: "Validado"
                },
                {
                    sistema: "Switches L2",
                    cantidad: 45,
                    capexUnitarioUSD: 5000,
                    capexUSD: 225000,
                    capexCOP: 954000000,
                    categoria: "Telecomunicaciones",
                    estado: "Validado"
                },
                {
                    sistema: "Switches L3",
                    cantidad: 12,
                    capexUnitarioUSD: 15000,
                    capexUSD: 180000,
                    capexCOP: 763200000,
                    categoria: "Telecomunicaciones",
                    estado: "Validado"
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
                    cantidad: 0, // Diferido (DT-ETD-001)
                    capexUnitarioUSD: 0,
                    capexUSD: 0,
                    capexCOP: 0,
                    categoria: "ITS",
                    estado: "Diferido"
                }
            ],

            // Resúmenes por categoría
            cctvSummary: {
                cantidad: 9,
                capexUSD: 116100,
                capexCOP: 492264000
            },
            sosSummary: {
                cantidad: 88,
                capexUSD: 2200000,
                capexCOP: 9328000000
            },
            pmvSummary: {
                cantidad: 39,
                capexUSD: 2360000,
                capexCOP: 10006400000
            },
            peajesSummary: {
                cantidad: 14,
                capexUSD: 2080000,
                capexCOP: 8819200000
            },
            wimSummary: {
                cantidad: 1,
                capexUSD: 551425,
                capexCOP: 2338041000
            },
            meteoSummary: {
                cantidad: 3,
                capexUSD: 75000,
                capexCOP: 318000000
            },
            telecomSummary: {
                cantidad: 379, // 322 km fibra + 45 L2 + 12 L3
                capexUSD: 1665000,
                capexCOP: 7059600000
            },

            // Totales del proyecto
            totalCapexUSD: 9047525, // Suma de todos los sistemas
            totalCapexCOP: 38361105000, // totalCapexUSD * 4240

            // Normativa aplicable
            normativa: {
                retie: "Resolución 40117 de 2024 (RETIE 2024)",
                iprev: "Resolución 20213040035125 de 2021 (IP/REV)",
                manual: "Manual de Señalización Vial 2024"
            }
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
    window.tm01Data = tm01MasterData.data;
}

// Compatibilidad legacy
this.data = tm01MasterData.data;
