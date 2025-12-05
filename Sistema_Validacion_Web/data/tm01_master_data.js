// TM01 Master Data - Generado automáticamente
// Última sincronización: 2025-12-05 14:25:23 UTC
// Merge 3-vías completado sin conflictos

const tm01Data = {
  "dts": null,
  "contratos": null,
  "layout": null,
  "cambios": null,
  "presupuesto": null,
  "TOTAL_SWITCHES_L3": null,
  "CAPEX_L3_USD": null,
  "wbs": null
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
