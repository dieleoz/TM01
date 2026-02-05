function exportarExcel() {
    if (filteredItems.length === 0) return;

    // 1. Hoja de Detalle
    const detailData = filteredItems.map(i => {
        const qty = num(i.cantidad);
        const tUSD = num(i.totalUSD) || (qty * num(i.vu));
        const tCOP = num(i.totalCOP) || (qty * num(i.vuCOP));
        return {
            'Ítem': i.item,
            'Descripción': i.descripcion,
            'Sistema': i.sistema,
            'Cant.': i.cantidad,
            'Und': i.unidad || '',
            'Tipo': i._tipoCalc || inferTipoPresupuestal(i),
            'Total USD': tUSD,
            'Total COP': tCOP
        };
    });
    const wsDetail = XLSX.utils.json_to_sheet(detailData);

    // 2. Hoja de Resumen (AIU/IVA)
    const c = calcularAIUIVA(filteredItems);
    const names = getChapterNamesFromWBS(allItems);
    const summaryData = [];

    Object.keys(c.subtotales).sort().forEach(cap => {
        const s = c.subtotales[cap];
        const baseSum = s.SUMINISTRO / 1.19;
        const baseServ = s.SERVICIO / 1.19;
        const aiu = s.OBRA * 0.33;
        const iva = (s.SUMINISTRO - baseSum) + (s.SERVICIO - baseServ) + (s.OBRA * 0.05 * 0.19);
        const total = s.SUMINISTRO + s.OBRA + s.SERVICIO + s.CONSOLIDADO + aiu + iva;

        summaryData.push({
            'Capítulo': names[cap] || cap,
            'Suministros (COP)': s.SUMINISTRO,
            'Obra Civil (COP)': s.OBRA,
            'Servicios (COP)': s.SERVICIO,
            'Costo Directo (COP)': baseSum + baseServ + s.OBRA + s.CONSOLIDADO,
            'AIU 33% (COP)': aiu,
            'IVA (COP)': iva,
            'Total (COP)': total,
            'Total (USD)': total / 4400
        });
    });

    // Agregar gran total
    summaryData.push({});
    summaryData.push({
        'Capítulo': 'TOTAL GENERAL',
        'Suministros (COP)': c.totalSuministros,
        'Obra Civil (COP)': c.totalObraCivil,
        'Servicios (COP)': c.totalServicios,
        'Costo Directo (COP)': c.costoDirecto,
        'AIU 33% (COP)': c.aiu,
        'IVA (COP)': c.iva,
        'Total (COP)': c.total,
        'Total (USD)': c.total / 4400
    });

    const wsSummary = XLSX.utils.json_to_sheet(summaryData);

    // Crear Workbook y Guardar
    const wb = XLSX.utils.book_new();
    XLSX.utils.book_append_sheet(wb, wsSummary, 'Resumen Ejecutivo');
    XLSX.utils.book_append_sheet(wb, wsDetail, 'Detalle WBS');

    XLSX.writeFile(wb, 'Presupuesto_TM01_Validado.xlsx');
}

function exportarDesgloseAIU() {
    alert('Generando desglose... ver tabla al final de la página.');
    const el = document.getElementById('desgloseContainer');
    if (el) el.scrollIntoView({ behavior: 'smooth' });
}

function generarActaObra() {
    const c = calcularAIUIVA(filteredItems);
    const w = window.open('', '_blank');
    w.document.write('<html><body><h1>ACTA DE OBRA</h1><hr/>');
    w.document.write('<h3>Total Corredor: ' + fm(c.total, 'COP') + '</h3>');
    w.document.write('<table border="1"><tr><th>Capítulo</th><th>Total COP</th></tr>');
    Object.keys(c.subtotales).forEach(k => {
        const s = c.subtotales[k];
        w.document.write('<tr><td>' + k + '</td><td>' + fm(s.SUMINISTRO + s.OBRA + s.SERVICIO + s.CONSOLIDADO, 'COP') + '</td></tr>');
    });
    w.document.write('</table></body></html>');
    w.document.close();
}
