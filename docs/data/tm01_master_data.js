// TM01 Master Data - Regenerado por Auditoría Final
// Última sincronización: 2026-02-02 (Audit Fix)
// Fuente: datos_wbs_TM01_items.js + T05 Documents

const tm01Data = {
  "proyecto": "TM01 - Troncal Magdalena",
  "version": "7.0 (Audit Certified)",
  "fecha_actualizacion": "2026-02-02",
  "metodologia": "Punto 42 v3.0",

  "TOTAL_SWITCHES_L3": 11,
  "CAPEX_L3_USD": 202892,

  "sistemas": {
    "SOS": { cantidad: 98, capexUSD: 652576, unidad: "UND", descripcion: "Postes de Auxilio (88 nuevos + 10 existentes)" },
    "ETD": { cantidad: 13, capexUSD: 25224, unidad: "UND", descripcion: "Radares ETD Dahua Smart CAPEX" },
    "CCTV": { cantidad: 9, capexUSD: 116100, unidad: "UND", descripcion: "Cámaras PTZ (1 por edificación)" },
    "PMV": { cantidad: 29, capexUSD: 2320000, unidad: "UND", descripcion: "Paneles Mensaje Variable ITS" },
    "METEO": { cantidad: 2, capexUSD: 7831, unidad: "UND", descripcion: "Estaciones Davis Vantage Pro2" },
    "PEAJES": { cantidad: 2, capexUSD: 2086577, unidad: "EST", descripcion: "Equipamiento Peajes Certified" },
    "WIM": { cantidad: 1, capexUSD: 551425, unidad: "EST", descripcion: "Estación Pesaje Dinámico Bidireccional" },
    "FIBRA": { cantidad: 322, capexUSD: 1260000, unidad: "KM", descripcion: "Backbone Fibra Óptica" },
    "L2": { cantidad: 84, capexUSD: 119459, unidad: "UND", descripcion: "Switches Industriales L2 Advantech" },
    "L3": { cantidad: 11, capexUSD: 202892, unidad: "UND", descripcion: "Switches Core L3 Cisco" },
    "RADIO": { cantidad: 0, capexUSD: 0, unidad: "UND", descripcion: "Radio FM (Modelo OPEX)" }
  },

  "resumen": {
    "totalSistemas": 11,
    "capexTotalUSD": 5342084,
    "tasaCambio": 4400,
    "capexTotalCOP": 23505169600
  },

  "wbs": {
    "totalItems": 24,
    "fecha": "2026-02-02",
    "items": [
      { id: "1.1.1", sistema: "SOS", descripcion: "Suministro Equipos SOS", cantidad: 98, vu: 1004.94, total: 98484.12 },
      { id: "1.1.2", sistema: "SOS", descripcion: "Estructuras Metálicas SOS", cantidad: 98, vu: 3339, total: 327222 },
      { id: "1.1.3", sistema: "SOS", descripcion: "Arreglo Fotovoltaico SOS", cantidad: 98, vu: 1592, total: 156016 },
      { id: "1.1.4", sistema: "SOS", descripcion: "Instalación SOS", cantidad: 98, vu: 723, total: 70854 },
      { id: "2.1.1", sistema: "ETD", descripcion: "Nodo Dahua DHI-ITC431", cantidad: 13, vu: 1940.33, total: 25224.29 },
      { id: "3.1.1", sistema: "CCTV", descripcion: "Cámara PTZ Dahua 32X + Solar", cantidad: 9, vu: 12900, total: 116100 },
      { id: "4.1.1", sistema: "PMV", descripcion: "Panel PMV Graphic RGB", cantidad: 29, vu: 45000, total: 1305000 },
      { id: "4.1.2", sistema: "PMV", descripcion: "Estructura Reforzada PMV", cantidad: 29, vu: 35000, total: 1015000 },
      { id: "6.1.1", sistema: "METEO", descripcion: "Estación Davis Vantage Pro2", cantidad: 2, vu: 3415.64, total: 6831.27 },
      { id: "6.2.1", sistema: "METEO", descripcion: "Configuración METEO", cantidad: 1, vu: 1000, total: 1000 },
      { id: "7.1.1", sistema: "PEAJES", descripcion: "Equipamiento Peajes Certified", cantidad: 2, vu: 1043288.62, total: 2086577.24 }
    ]
  },

  "dts": {
    "total": 36,
    "activos": ["DT-TM01-SOS-002", "DT-TM01-CCTV-003", "DT-TM01-PMV-004", "DT-TM01-ETD-001", "DT-TM01-RADIO-001", "DT-TM01-WIM-001", "DT-TM01-METEO-001", "DT-TM01-PEAJES-020", "DT-TM01-PEAJES-021"]
  },

  "normativa": {
    "RETIE": "2024 (Res. 40117)",
    "IPREV": "2021 (Res. 20213040035125)",
    "Manual": "Señalización Vial 2024"
  },

  "layout": {
    "longitud": 293,
    "unidad": "km",
    "unidadesFuncionales": 13,
    "rutas": ["RN 4510", "RN 4511", "RN 4513"]
  },

  "contratos": {
    "tipo": "Concesión 4G",
    "cliente": "ANI",
    "corredor": "Puerto Salgar - Barrancabermeja"
  }
};

function parseNumeric(value) {
    if (typeof value === 'number') return value;
    if (typeof value === 'string') return parseFloat(value.replace(/,/g, ''));
    return 0;
}

function normalizeWbsNumerics(data) {
    const TASA_COP_USD = 4400;
    if (data.wbs?.items) {
        data.wbs.items = data.wbs.items.map(item => ({
            ...item,
            cantidad: parseNumeric(item.cantidad),
            vu: parseNumeric(item.vu ?? item.valorUnitario),
            total: parseNumeric(item.total ?? item.subtotal),
            totalCOP: parseNumeric(item.totalCOP ?? 0)
        }));
    }
    if (data.presupuesto?.items) {
        data.presupuesto.items = data.presupuesto.items.map(item => ({
            ...item,
            cantidad: parseNumeric(item.cantidad),
            vu: parseNumeric(item.vu ?? item.valorUnitario),
            subtotal: parseNumeric(item.subtotal ?? (parseNumeric(item.cantidad) * parseNumeric(item.vu))),
            totalUSD: parseNumeric(item.totalUSD ?? item.total),
            totalCOP: parseNumeric(item.totalCOP ?? (parseNumeric(item.totalUSD ?? 0) * TASA_COP_USD))
        }));
    }
    return data;
}

const normalizedData = normalizeWbsNumerics(tm01Data);
if (typeof module !== 'undefined' && module.exports) {
    module.exports = normalizedData;
} else {
    window.TM01_MASTER_DATA = normalizedData;
}
// Compatibilidad con lectores que buscan this.data
this.data = normalizedData;
