// TM01 Master Data - Generado automÃ¡ticamente
// Ãšltima sincronizaciÃ³n: 2025-10-31 16:41:30 UTC
// Merge 3-vÃ­as completado sin conflictos

const tm01Data = {
    "TOTAL_SWITCHES_L3":  null,
    "contratos":  null,
    "CAPEX_L3_USD":  null,
    "presupuesto":  null,
    "layout":  null,
    "cambios":  null,
    "wbs":  null,
    "dts":  null
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
