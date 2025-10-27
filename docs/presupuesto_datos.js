// PRESUPUESTO DINÁMICO TM01 - GENERADO AUTOMÁTICAMENTE
// Archivo: Sistema_Validacion_Web/presupuesto_datos.js
// Generado: 2025-10-24 10:00:00
// Script: sincronizar_presupuesto.ps1 v1.0

// Datos de presupuesto extraídos desde tm01_master_data.js
const presupuestoDatos = {
    "metadata": {
        "fecha_generacion": "2025-10-24 10:00:00",
        "version": "1.0",
        "proyecto": "TM01 Troncal Magdalena",
        "trm": 4400,
        "aiu_porcentaje": 33,
        "iva_porcentaje": 19,
        "descuento_porcentaje": 5
    },
    "sistemas": {
        "SOS": {
            "subtotal_usd": 1320000,
            "subtotal_cop": 5808000000,
            "aiu_usd": 435600,
            "aiu_cop": 1916640000,
            "total_antes_iva_usd": 1755600,
            "total_antes_iva_cop": 7724640000,
            "iva_usd": 333564,
            "iva_cop": 1467681600,
            "total_final_usd": 2089164,
            "total_final_cop": 9192321600,
            "descuento_usd": 104458.2,
            "descuento_cop": 459616080,
            "items": [
                {
                    "codigo": "1.1.1",
                    "descripcion": "Poste SOS con panel solar",
                    "sistema": "SOS",
                    "cantidad": 88,
                    "unidad": "UND",
                    "vu_usd": 15000,
                    "total_usd": 1320000,
                    "total_cop": 5808000000,
                    "criterio": "AT1 Cap. 3 - Criterio 1km",
                    "tipo": "suministro",
                    "categoria": "ITS"
                }
            ]
        },
        "ETD/RADAR": {
            "subtotal_usd": 3200000,
            "subtotal_cop": 14080000000,
            "aiu_usd": 1056000,
            "aiu_cop": 4646400000,
            "total_antes_iva_usd": 4256000,
            "total_antes_iva_cop": 18726400000,
            "iva_usd": 808640,
            "iva_cop": 3558016000,
            "total_final_usd": 5064640,
            "total_final_cop": 22284416000,
            "descuento_usd": 253232,
            "descuento_cop": 1114220800,
            "items": [
                {
                    "codigo": "2.1.1",
                    "descripcion": "Estación de Tratamiento de Datos",
                    "sistema": "ETD/RADAR",
                    "cantidad": 14,
                    "unidad": "UND",
                    "vu_usd": 200000,
                    "total_usd": 2800000,
                    "total_cop": 12320000000,
                    "criterio": "AT1 Cap. 3 - Criterio 15km",
                    "tipo": "suministro",
                    "categoria": "ITS"
                },
                {
                    "codigo": "2.1.2",
                    "descripcion": "Radares de velocidad",
                    "sistema": "ETD/RADAR",
                    "cantidad": 2,
                    "unidad": "UND",
                    "vu_usd": 200000,
                    "total_usd": 400000,
                    "total_cop": 1760000000,
                    "criterio": "Control vehicular",
                    "tipo": "suministro",
                    "categoria": "ITS"
                }
            ]
        },
        "CCTV": {
            "subtotal_usd": 1350000,
            "subtotal_cop": 5940000000,
            "aiu_usd": 445500,
            "aiu_cop": 1960200000,
            "total_antes_iva_usd": 1795500,
            "total_antes_iva_cop": 7900200000,
            "iva_usd": 341145,
            "iva_cop": 1501038000,
            "total_final_usd": 2136645,
            "total_final_cop": 9401238000,
            "descuento_usd": 106832.25,
            "descuento_cop": 470061900,
            "items": [
                {
                    "codigo": "3.1.1",
                    "descripcion": "Cámaras PAN",
                    "sistema": "CCTV",
                    "cantidad": 30,
                    "unidad": "UND",
                    "vu_usd": 30000,
                    "total_usd": 900000,
                    "total_cop": 3960000000,
                    "criterio": "AT1 Cap. 3 - Solo en peajes",
                    "tipo": "suministro",
                    "categoria": "ITS"
                },
                {
                    "codigo": "3.1.2",
                    "descripcion": "Cámaras fijas",
                    "sistema": "CCTV",
                    "cantidad": 15,
                    "unidad": "UND",
                    "vu_usd": 30000,
                    "total_usd": 450000,
                    "total_cop": 1980000000,
                    "criterio": "Supervisión CCO y estaciones",
                    "tipo": "suministro",
                    "categoria": "ITS"
                }
            ]
        },
        "PMV": {
            "subtotal_usd": 600000,
            "subtotal_cop": 2640000000,
            "aiu_usd": 198000,
            "aiu_cop": 871200000,
            "total_antes_iva_usd": 798000,
            "total_antes_iva_cop": 3511200000,
            "iva_usd": 151620,
            "iva_cop": 667128000,
            "total_final_usd": 949620,
            "total_final_cop": 4178328000,
            "descuento_usd": 47481,
            "descuento_cop": 208916400,
            "items": [
                {
                    "codigo": "4.1.1",
                    "descripcion": "Paneles de mensaje variable",
                    "sistema": "PMV",
                    "cantidad": 12,
                    "unidad": "UND",
                    "vu_usd": 50000,
                    "total_usd": 600000,
                    "total_cop": 2640000000,
                    "criterio": "AT1 Cap. 3 - Criterio 20km",
                    "tipo": "suministro",
                    "categoria": "ITS"
                }
            ]
        },
        "METEO": {
            "subtotal_usd": 150000,
            "subtotal_cop": 660000000,
            "aiu_usd": 49500,
            "aiu_cop": 217800000,
            "total_antes_iva_usd": 199500,
            "total_antes_iva_cop": 877800000,
            "iva_usd": 37905,
            "iva_cop": 166782000,
            "total_final_usd": 237405,
            "total_final_cop": 1044582000,
            "descuento_usd": 11870.25,
            "descuento_cop": 52229100,
            "items": [
                {
                    "codigo": "5.1.1",
                    "descripcion": "Estaciones meteorológicas",
                    "sistema": "METEO",
                    "cantidad": 3,
                    "unidad": "UND",
                    "vu_usd": 50000,
                    "total_usd": 150000,
                    "total_cop": 660000000,
                    "criterio": "NTC 5660 + Supervisión CCO",
                    "tipo": "suministro",
                    "categoria": "ITS"
                }
            ]
        },
        "WIM": {
            "subtotal_usd": 300000,
            "subtotal_cop": 1320000000,
            "aiu_usd": 99000,
            "aiu_cop": 435600000,
            "total_antes_iva_usd": 399000,
            "total_antes_iva_cop": 1755600000,
            "iva_usd": 75810,
            "iva_cop": 333564000,
            "total_final_usd": 474810,
            "total_final_cop": 2089164000,
            "descuento_usd": 23740.5,
            "descuento_cop": 104458200,
            "items": [
                {
                    "codigo": "6.1.1",
                    "descripcion": "Sistema de pesaje WIM",
                    "sistema": "WIM",
                    "cantidad": 1,
                    "unidad": "UND",
                    "vu_usd": 300000,
                    "total_usd": 300000,
                    "total_cop": 1320000000,
                    "criterio": "Control de peso vehicular",
                    "tipo": "suministro",
                    "categoria": "ITS"
                }
            ]
        }
    },
    "totales": {
        "subtotal_usd": 6920000,
        "subtotal_cop": 30448000000,
        "aiu_usd": 2283600,
        "aiu_cop": 10047840000,
        "total_antes_iva_usd": 9203600,
        "total_antes_iva_cop": 40495840000,
        "iva_usd": 1748684,
        "iva_cop": 7694209600,
        "total_final_usd": 10952284,
        "total_final_cop": 48190049600,
        "descuento_usd": 547614.2,
        "descuento_cop": 2409502480
    },
    "items": [
        {
            "codigo": "1.1.1",
            "descripcion": "Poste SOS con panel solar",
            "sistema": "SOS",
            "cantidad": 88,
            "unidad": "UND",
            "vu_usd": 15000,
            "total_usd": 1320000,
            "total_cop": 5808000000,
            "criterio": "AT1 Cap. 3 - Criterio 1km",
            "tipo": "suministro",
            "categoria": "ITS"
        },
        {
            "codigo": "2.1.1",
            "descripcion": "Estación de Tratamiento de Datos",
            "sistema": "ETD/RADAR",
            "cantidad": 14,
            "unidad": "UND",
            "vu_usd": 200000,
            "total_usd": 2800000,
            "total_cop": 12320000000,
            "criterio": "AT1 Cap. 3 - Criterio 15km",
            "tipo": "suministro",
            "categoria": "ITS"
        },
        {
            "codigo": "2.1.2",
            "descripcion": "Radares de velocidad",
            "sistema": "ETD/RADAR",
            "cantidad": 2,
            "unidad": "UND",
            "vu_usd": 200000,
            "total_usd": 400000,
            "total_cop": 1760000000,
            "criterio": "Control vehicular",
            "tipo": "suministro",
            "categoria": "ITS"
        },
        {
            "codigo": "3.1.1",
            "descripcion": "Cámaras PAN",
            "sistema": "CCTV",
            "cantidad": 30,
            "unidad": "UND",
            "vu_usd": 30000,
            "total_usd": 900000,
            "total_cop": 3960000000,
            "criterio": "AT1 Cap. 3 - Solo en peajes",
            "tipo": "suministro",
            "categoria": "ITS"
        },
        {
            "codigo": "3.1.2",
            "descripcion": "Cámaras fijas",
            "sistema": "CCTV",
            "cantidad": 15,
            "unidad": "UND",
            "vu_usd": 30000,
            "total_usd": 450000,
            "total_cop": 1980000000,
            "criterio": "Supervisión CCO y estaciones",
            "tipo": "suministro",
            "categoria": "ITS"
        },
        {
            "codigo": "4.1.1",
            "descripcion": "Paneles de mensaje variable",
            "sistema": "PMV",
            "cantidad": 12,
            "unidad": "UND",
            "vu_usd": 50000,
            "total_usd": 600000,
            "total_cop": 2640000000,
            "criterio": "AT1 Cap. 3 - Criterio 20km",
            "tipo": "suministro",
            "categoria": "ITS"
        },
        {
            "codigo": "5.1.1",
            "descripcion": "Estaciones meteorológicas",
            "sistema": "METEO",
            "cantidad": 3,
            "unidad": "UND",
            "vu_usd": 50000,
            "total_usd": 150000,
            "total_cop": 660000000,
            "criterio": "NTC 5660 + Supervisión CCO",
            "tipo": "suministro",
            "categoria": "ITS"
        },
        {
            "codigo": "6.1.1",
            "descripcion": "Sistema de pesaje WIM",
            "sistema": "WIM",
            "cantidad": 1,
            "unidad": "UND",
            "vu_usd": 300000,
            "total_usd": 300000,
            "total_cop": 1320000000,
            "criterio": "Control de peso vehicular",
            "tipo": "suministro",
            "categoria": "ITS"
        }
    ]
};

// Función para obtener todos los items de presupuesto
function obtenerTodosItemsPresupuesto() {
    return presupuestoDatos.items;
}

// Función para obtener items por sistema
function obtenerItemsPorSistema(sistema) {
    return presupuestoDatos.items.filter(item => item.sistema === sistema);
}

// Función para obtener totales por sistema
function obtenerTotalesPorSistema(sistema) {
    return presupuestoDatos.sistemas[sistema] || null;
}

// Función para obtener totales generales
function obtenerTotalesGenerales() {
    return presupuestoDatos.totales;
}

// Función para obtener configuración de presupuesto
function obtenerConfiguracionPresupuesto() {
    return presupuestoDatos.metadata;
}

// Función para calcular presupuesto con nuevos parámetros
function calcularPresupuestoConParametros(trm, aiu, iva, descuento) {
    const nuevosTotales = {
        subtotal_usd: presupuestoDatos.totales.subtotal_usd,
        subtotal_cop: presupuestoDatos.totales.subtotal_usd * trm,
        aiu_usd: presupuestoDatos.totales.subtotal_usd * aiu,
        aiu_cop: presupuestoDatos.totales.subtotal_usd * aiu * trm,
        total_antes_iva_usd: presupuestoDatos.totales.subtotal_usd * (1 + aiu),
        total_antes_iva_cop: presupuestoDatos.totales.subtotal_usd * (1 + aiu) * trm,
        iva_usd: presupuestoDatos.totales.subtotal_usd * (1 + aiu) * iva,
        iva_cop: presupuestoDatos.totales.subtotal_usd * (1 + aiu) * iva * trm,
        total_final_usd: presupuestoDatos.totales.subtotal_usd * (1 + aiu) * (1 + iva),
        total_final_cop: presupuestoDatos.totales.subtotal_usd * (1 + aiu) * (1 + iva) * trm,
        descuento_usd: presupuestoDatos.totales.subtotal_usd * (1 + aiu) * (1 + iva) * descuento,
        descuento_cop: presupuestoDatos.totales.subtotal_usd * (1 + aiu) * (1 + iva) * descuento * trm
    };
    
    return nuevosTotales;
}

// Función para obtener estadísticas del presupuesto
function obtenerEstadisticasPresupuesto() {
    const estadisticas = {
        totalItems: presupuestoDatos.items.length,
        totalSistemas: Object.keys(presupuestoDatos.sistemas).length,
        subtotalUSD: presupuestoDatos.totales.subtotal_usd,
        subtotalCOP: presupuestoDatos.totales.subtotal_cop,
        aiuUSD: presupuestoDatos.totales.aiu_usd,
        aiuCOP: presupuestoDatos.totales.aiu_cop,
        ivaUSD: presupuestoDatos.totales.iva_usd,
        ivaCOP: presupuestoDatos.totales.iva_cop,
        totalFinalUSD: presupuestoDatos.totales.total_final_usd,
        totalFinalCOP: presupuestoDatos.totales.total_final_cop,
        descuentoUSD: presupuestoDatos.totales.descuento_usd,
        descuentoCOP: presupuestoDatos.totales.descuento_cop,
        porSistema: {}
    };
    
    Object.keys(presupuestoDatos.sistemas).forEach(sistema => {
        estadisticas.porSistema[sistema] = {
            items: presupuestoDatos.sistemas[sistema].items.length,
            subtotalUSD: presupuestoDatos.sistemas[sistema].subtotal_usd,
            totalFinalUSD: presupuestoDatos.sistemas[sistema].total_final_usd
        };
    });
    
    return estadisticas;
}

// Función para exportar a Excel (formato CSV)
function exportarPresupuestoCSV() {
    let csv = "Codigo,Descripcion,Sistema,Cantidad,Unidad,VU_USD,Total_USD,Total_COP,Criterio,Tipo,Categoria\n";
    
    presupuestoDatos.items.forEach(item => {
        csv += `"${item.codigo}","${item.descripcion}","${item.sistema}",${item.cantidad},"${item.unidad}",${item.vu_usd},${item.total_usd},${item.total_cop},"${item.criterio}","${item.tipo}","${item.categoria}"\n`;
    });
    
    return csv;
}

// Exportar funciones para uso en otros archivos
if (typeof module !== 'undefined' && module.exports) {
    module.exports = {
        presupuestoDatos,
        obtenerTodosItemsPresupuesto,
        obtenerItemsPorSistema,
        obtenerTotalesPorSistema,
        obtenerTotalesGenerales,
        obtenerConfiguracionPresupuesto,
        calcularPresupuestoConParametros,
        obtenerEstadisticasPresupuesto,
        exportarPresupuestoCSV
    };
}
