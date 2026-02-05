/**
 * presupuesto-calcs.js
 * Funciones de cálculo para WBS Presupuestal TM01
 */

function num(val) {
    const n = parseFloat(String(val ?? '').toString().replace(/[^0-9.\-]/g, ''));
    return isNaN(n) ? 0 : n;
}

function fm(n, curr) {
    if (curr === 'USD') {
        return new Intl.NumberFormat('en-US', { style: 'currency', currency: 'USD', maximumFractionDigits: 0 }).format(n);
    }
    return new Intl.NumberFormat('es-CO', { style: 'currency', currency: 'COP', maximumFractionDigits: 0 }).format(n);
}

function inferTipoPresupuestal(item) {
    const desc = (item.descripcion || '').toLowerCase();
    if (item.tipo_presupuesto) return item.tipo_presupuesto;
    if (/validado|consolidado|global|certificado/.test(desc)) return 'CONSOLIDADO';
    const obraRe = /(instalaci[oó]n|tendido|hincado|zanja|excavaci[oó]n|canalizaci[oó]n|ducto|obra civil|poste|torre|cimentaci[oó]n|concreto|montaje|tuber[ií]a|adecuaci[oó]n|estructura)/;
    const servRe = /(capacitaci[oó]n|pruebas|comisionamiento|mantenimiento|dise[nñ]o|ingenier[ií]a|configuraci[oó]n|servicio)/;
    if (obraRe.test(desc)) return 'OBRA';
    if (servRe.test(desc)) return 'SERVICIO';
    return 'SUMINISTRO';
}

function getChapterNamesFromWBS(all) {
    const names = {};
    all.forEach(i => {
        const cap = String((i.item || '').split('.')[0] || '').trim();
        if (cap && !names[cap]) names[cap] = cap;
    });
    const level1 = all.filter(i => i.nivel === 1);
    level1.forEach(i => {
        const cap = String(i.item || '').split('.')[0];
        if (cap) names[cap] = cap + '. ' + i.descripcion;
    });
    return names;
}

function calcularAIUIVA(data) {
    const subtotales = {};
    let totalSuministros = 0, totalObraCivil = 0, totalServicios = 0, totalConsolidado = 0;

    data.forEach(i => {
        const cap = String((i.item || '').split('.')[0] || '').trim() || 'OTROS';
        if (!subtotales[cap]) subtotales[cap] = { SUMINISTRO: 0, OBRA: 0, SERVICIO: 0, CONSOLIDADO: 0 };

        const qty = num(i.cantidad);
        const tCOP = num(i.totalCOP) || (qty * num(i.vuCOP));
        const tipo = i.tipo_presupuesto || inferTipoPresupuestal(i);

        if (subtotales[cap][tipo] !== undefined) subtotales[cap][tipo] += tCOP;
        if (tipo === 'SUMINISTRO') totalSuministros += tCOP;
        else if (tipo === 'OBRA') totalObraCivil += tCOP;
        else if (tipo === 'SERVICIO') totalServicios += tCOP;
        else totalConsolidado += tCOP;
    });

    const baseSum = totalSuministros / 1.19;
    const baseServ = totalServicios / 1.19;
    const baseObra = totalObraCivil;
    const aiu = baseObra * 0.33;
    const ivaSum = totalSuministros - baseSum;
    const ivaServ = totalServicios - baseServ;
    const ivaUtil = baseObra * 0.05 * 0.19;
    const iva = ivaSum + ivaServ + ivaUtil;

    return {
        costoDirecto: baseSum + baseServ + baseObra + totalConsolidado,
        aiu, iva,
        total: totalSuministros + totalServicios + totalObraCivil + aiu + iva + totalConsolidado,
        totalSuministros, totalObraCivil, totalServicios, totalConsolidado,
        subtotales
    };
}
