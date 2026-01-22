/**
 * presupuesto-export.js
 * Funciones de exportación para WBS Presupuestal TM01
 * Extraído y refactorizado de presupuesto.html
 * 
 * Requiere: XLSX library, presupuesto-calcs.js
 */

/**
 * Exporta los ítems filtrados a Excel
 * Genera un archivo WBS_Presupuesto_TM01.xlsx
 */
function exportarExcel() {
    if (filteredItems.length === 0) {
        alert('No hay datos para exportar');
        return;
    }

    const rows = filteredItems.map(i => ({
        Item: i.item || '',
        Descripción: i.descripcion || '',
        Sistema: i.sistema || '',
        Tipo: i._tipoCalc || '',
        Cantidad: num(i.cantidad),
        Unidad: i.unidad || '',
        'VU USD': num(i.vu),
        'Total USD': num(i.cantidad) * num(i.vu),
        'VU COP': num(i.vuCOP),
        'Total COP': num(i.totalCOP) || (num(i.cantidad) * num(i.vuCOP))
    }));

    const ws = XLSX.utils.json_to_sheet(rows);
    const wb = XLSX.utils.book_new();
    XLSX.utils.book_append_sheet(wb, ws, 'WBS Presupuesto');
    XLSX.writeFile(wb, 'WBS_Presupuesto_TM01.xlsx');
}

/**
 * Exporta el desglose AIU/IVA por capítulos
 * Abre una ventana de vista previa con opción de exportar a Excel
 */
function exportarDesgloseAIU() {
    if (filteredItems.length === 0) {
        alert('No hay datos para exportar');
        return;
    }

    const calc = calcularAIUIVA(filteredItems);
    const names = getChapterNamesFromWBS(allItems);

    // Preparar datos estructurados por capítulo
    const caps = Object.keys(calc.subtotales).sort().map(cap => {
        const c = calc.subtotales[cap];

        // ✅ CORRECCIÓN: Usar misma lógica que calcularAIUIVA()
        const baseSum = c.SUMINISTRO / 1.19;
        const baseServ = c.SERVICIO / 1.19;
        const baseObra = c.OBRA;  // ✅ Ya es base, no incluye AIU

        const cd = baseSum + baseServ + baseObra;
        const aiu = baseObra * 0.33;  // ✅ AIU directo

        const ivaSum = c.SUMINISTRO - baseSum;
        const ivaServ = c.SERVICIO - baseServ;
        const ivaUtil = baseObra * 0.05 * 0.19;
        const iva = ivaSum + ivaServ + ivaUtil;

        const total = c.SUMINISTRO + c.OBRA + c.SERVICIO + aiu + iva;

        return {
            cap,
            capName: names[cap] || cap,
            SUMINISTRO: c.SUMINISTRO,
            OBRA: c.OBRA,
            SERVICIO: c.SERVICIO,
            cd, aiu, iva, total,
            ivaSum, ivaServ, ivaUtil,
            baseSum, baseServ, baseObra
        };
    });

    // Abrir vista previa
    const w = window.open('', '_blank');
    const style = `body{ font-family: Segoe UI, Tahoma, Verdana, sans-serif; background: #f7f9fc; color:#111; margin: 0; padding: 16px }
    .wrap{ max-width: 1200px; margin: 0 auto; background: #fff; border-radius: 10px; box-shadow: 0 10px 30px rgba(0, 0, 0, .08); overflow: hidden }
    .hdr{ display: flex; justify-content: space-between; align-items: center; padding: 16px 18px; background:#0ea5e9; color: #fff }
    .hdr h1{ margin: 0; font-size: 18px }
    .sub{ padding: 10px 18px; background: #ecfeff; color:#0369a1; font-size: 13px }
    .tools{ display: flex; gap: 8px }
    .btn{ padding: 8px 12px; border: none; border-radius: 6px; font-weight: 600; cursor: pointer }
    .btn-print{ background:#1f2937; color: #fff }
    .btn-xlsx{ background:#22c55e; color: #fff }
    table{ border-collapse: collapse; width: 100%; font-size: 13px }
    thead th{ position: sticky; top: 0; background:#0f172a; color: #fff }
    th, td{ border: 1px solid #e5e7eb; padding: 10px; text-align: right }
    th:first-child, td:first-child{ text-align: left }
    .row-sub td{ color:#0369a1; background: #f0f9ff }
    .row-sub-obra td{ color:#6b7280; background: #fff7ed }
    .row-total td{ font-weight: 700; background: #f8fafc }
    `;

    const header = `
    <div class="hdr">
        <h1>📊 DESGLOSE PRESUPUESTAL POR CAPÍTULOS</h1>
        <div class="tools">
            <button class="btn btn-print" onclick="window.print()">🖨️ Imprimir</button>
            <button class="btn btn-xlsx" onclick="exportarDesdePreview()">📊 Exportar Desglose a Excel</button>
        </div>
    </div>
    <div class="sub">✅ WBS Actualizada - Cálculo: AIU 33% solo OBRA; IVA 19% a SUM+SERV + 19% a Utilidad de OBRA (5%).</div>
    `;

    const tableHead = `
    <table>
        <thead>
            <tr>
                <th>CAPÍTULO</th>
                <th>SUMINISTROS (COP)</th>
                <th>OBRA CIVIL (COP)</th>
                <th>SERVICIOS (COP)</th>
                <th>COSTO DIRECTO (COP)</th>
                <th>AIU 33% (COP)</th>
                <th>IVA (COP)</th>
                <th>TOTAL (COP)</th>
                <th>TOTAL (USD)</th>
            </tr>
        </thead>
        <tbody>
    `;

    const rows = caps.map(c => {
        const usd = c.total / 4400;
        return `
            <tr>
                <td>${c.capName}</td>
                <td>${fm(c.SUMINISTRO, 'COP')}</td>
                <td>${fm(c.OBRA, 'COP')}</td>
                <td>${fm(c.SERVICIO, 'COP')}</td>
                <td>${fm(c.cd, 'COP')}</td>
                <td>${fm(c.aiu, 'COP')}</td>
                <td>${fm(c.iva, 'COP')}</td>
                <td>${fm(c.total, 'COP')}</td>
                <td>${fm(usd, 'USD')}</td>
            </tr>
            <tr class="row-sub">
                <td>→ IVA Suministros (19%)</td>
                <td></td><td></td><td></td><td></td><td></td>
                <td>${fm(c.ivaSum, 'COP')}</td>
                <td></td>
                <td>${fm(c.ivaSum / 4400, 'USD')}</td>
            </tr>
            <tr class="row-sub">
                <td>→ IVA Servicios (19%)</td>
                <td></td><td></td><td></td><td></td><td></td>
                <td>${fm(c.ivaServ, 'COP')}</td>
                <td></td>
                <td>${fm(c.ivaServ / 4400, 'USD')}</td>
            </tr>
            <tr class="row-sub">
                <td>→ IVA/Utilidad Obra (19% × 5%)</td>
                <td></td><td></td><td></td><td></td><td></td>
                <td>${fm(c.ivaUtil, 'COP')}</td>
                <td></td>
                <td>${fm(c.ivaUtil / 4400, 'USD')}</td>
            </tr>
            ${c.OBRA > 0 ? `
            <tr class="row-sub-obra"><td>→ Administración (23%)</td><td></td><td>${fm(c.baseObra * 0.23, 'COP')}</td><td></td><td></td><td></td><td></td><td></td><td>${fm((c.baseObra * 0.23) / 4400, 'USD')}</td></tr>
            <tr class="row-sub-obra"><td>→ Imprevistos (5%)</td><td></td><td>${fm(c.baseObra * 0.05, 'COP')}</td><td></td><td></td><td></td><td></td><td></td><td>${fm((c.baseObra * 0.05) / 4400, 'USD')}</td></tr>
            <tr class="row-sub-obra"><td>→ Utilidad (5%)</td><td></td><td>${fm(c.baseObra * 0.05, 'COP')}</td><td></td><td></td><td></td><td></td><td></td><td>${fm((c.baseObra * 0.05) / 4400, 'USD')}</td></tr>
            ` : ''}
        `;
    }).join('');

    const totalRow = `
        <tr class="row-total">
            <td>TOTAL GENERAL</td>
            <td>${fm(calc.totalSuministros, 'COP')}</td>
            <td>${fm(calc.totalObraCivil, 'COP')}</td>
            <td>${fm(calc.totalServicios, 'COP')}</td>
            <td>${fm(calc.costoDirecto, 'COP')}</td>
            <td>${fm(calc.aiu, 'COP')}</td>
            <td>${fm(calc.iva, 'COP')}</td>
            <td>${fm(calc.total, 'COP')}</td>
            <td>${fm(calc.total / 4400, 'USD')}</td>
        </tr>
    `;

    const end = `</tbody></table>`;

    const html = `<!DOCTYPE html><html><head>
    <meta http-equiv="Cache-Control" content="no-cache, no-store, must-revalidate">
    <meta http-equiv="Pragma" content="no-cache">
    <meta http-equiv="Expires" content="0"><meta charset="UTF-8"><title>Desglose AIU - TM01</title>
    <style>${style}</style>
    <script src="https://cdn.sheetjs.com/xlsx-0.20.1/package/dist/xlsx.full.min.js"><\/script>
    </head><body>
        <div class="wrap">${header}
            <div style="padding:16px 18px;">${tableHead}${rows}${totalRow}${end}</div>
        </div>
        <script>
            const capsData = ${JSON.stringify(caps)};
            const totales = ${JSON.stringify({
        totalSuministros: calc.totalSuministros,
        totalObraCivil: calc.totalObraCivil,
        totalServicios: calc.totalServicios,
        costoDirecto: calc.costoDirecto,
        aiu: calc.aiu,
        iva: calc.iva,
        total: calc.total
    })};
            
            function exportarDesdePreview(){
                const data = [
                    ['DESGLOSE PRESUPUESTAL POR CAPÍTULOS - TM01'],
                    ['Fecha', new Date().toLocaleDateString('es-CO')],
                    [],
                    ['CAPÍTULO','SUMINISTROS (COP)','OBRA CIVIL (COP)','SERVICIOS (COP)','COSTO DIRECTO (COP)','AIU 33% (COP)','IVA (COP)','TOTAL (COP)','TOTAL (USD)']
                ];
                capsData.forEach(c=>{
                    data.push([c.capName,c.baseSum,c.baseObra,c.baseServ,c.cd,c.aiu,c.iva,c.total,c.total/4400]);
                    data.push(['', '→ Administración (23%)', '', '', '', c.baseObra*0.23, '', '', (c.baseObra*0.23)/4400]);
                    data.push(['', '→ Imprevistos (5%)', '', '', '', c.baseObra*0.05, '', '', (c.baseObra*0.05)/4400]);
                    data.push(['', '→ Utilidad (5%)', '', '', '', c.baseObra*0.05, '', '', (c.baseObra*0.05)/4400]);
                    data.push(['', '→ IVA Suministros (19%)', '', '', '', '', c.ivaSum, '', (c.ivaSum)/4400]);
                    data.push(['', '→ IVA Servicios (19%)', '', '', '', '', c.ivaServ, '', (c.ivaServ)/4400]);
                    data.push(['', '→ IVA/Utilidad Obra (19%×5%)', '', '', '', '', c.ivaUtil, '', (c.ivaUtil)/4400]);
                });
                data.push([]);
                data.push(['TOTAL GENERAL', totales.totalSuministros, totales.totalObraCivil, totales.totalServicios, totales.costoDirecto, totales.aiu, totales.iva, totales.total, totales.total/4400]);
                const ws = XLSX.utils.aoa_to_sheet(data);
                ws['!cols'] = [ {wch:40},{wch:24},{wch:20},{wch:20},{wch:22},{wch:18},{wch:16},{wch:20},{wch:16} ];
                const wb = XLSX.utils.book_new();
                XLSX.utils.book_append_sheet(wb, ws, 'Desglose AIU');
                const fname = 'Desglose_AIU_TM01_' + new Date().toISOString().split('T')[0] + '.xlsx';
                XLSX.writeFile(wb, fname);
            }
        <\/script>
    </body></html>`;

    w.document.write(html);
    w.document.close();
}

/**
 * Genera el Acta de Obra detallada por capítulos
 * Abre una ventana de vista previa con opción de exportar a Excel
 */
function generarActaObra() {
    const calc = calcularAIUIVA(filteredItems);
    const names = getChapterNamesFromWBS(allItems);
    const w = window.open('', '_blank');
    const fmtCOP = (n) => fm(n, 'COP');
    const fmtUSD = (n) => fm(n, 'USD');
    const toUSD = (n) => (n / 4400);

    // Agrupar ítems por capítulo y tipo
    const capitulos = {};
    filteredItems.forEach(i => {
        const cap = String((i.item || '').split('.')[0] || '').trim() || 'OTROS';
        if (!capitulos[cap]) capitulos[cap] = { SUMINISTRO: [], OBRA: [], SERVICIO: [] };

        const cantidad = num(i.cantidad);
        const vuCOP = num(i.vuCOP);
        const totalCOP = num(i.totalCOP) || (cantidad * vuCOP);
        const tipo = i._tipoCalc || 'SUMINISTRO';

        capitulos[cap][tipo].push({
            codigo: i.item || '',
            descripcion: i.descripcion || '',
            tipo,
            unidad: i.unidad || '',
            cantidad,
            vuCOP,
            totalCOP,
            totalUSD: toUSD(totalCOP)
        });
    });

    const estilo = `
        body{font-family:Segoe UI,Tahoma,Verdana,sans-serif;background:#f2f5fb;color:#0f172a;margin:0}
        .wrap{max-width:1280px;margin:0 auto}
        .hero{background:linear-gradient(135deg,#667eea 0%,#764ba2 100%);color:#fff;padding:40px 24px;border-radius:12px;margin:16px}
        .toolbar{position:sticky;top:0;z-index:10;display:flex;gap:10px;justify-content:flex-end;margin:0 16px}
        .btn{padding:10px 16px;border:none;border-radius:8px;font-weight:700;cursor:pointer}
        .btn-print{background:#1d4ed8;color:#fff}
        .btn-excel{background:#22c55e;color:#fff}
        h1{margin:0 0 8px;font-size:36px}
        h2{background:#183a66;color:#fff;padding:14px 18px;border-radius:10px;margin:24px 16px 12px}
        h3{margin:16px 16px 8px;color:#0f172a}
        table{border-collapse:collapse;width:calc(100% - 32px);margin:0 16px 14px;background:#fff;border-radius:8px;overflow:hidden;box-shadow:0 10px 30px rgba(0,0,0,.06)}
        thead th{background:#0f172a;color:#fff}
        th,td{border:1px solid #e5e7eb;padding:10px;font-size:13px;text-align:right}
        th:first-child,td:first-child{text-align:left}
        tfoot th{background:#f8fafc}
        .row-subtotal th{background:#eef2ff;font-weight:700}
        .row-highlight td{background:#fff3cd}
        .row-iva td{background:#e6f4ff;color:#0b5394}
        .row-aiu td{background:#fff8e1}
        .row-total td{background:#e6ffed;font-weight:800}
        .mini td{font-size:12px}
        .pill{display:inline-block;background:#0ea5e9;color:#fff;padding:2px 8px;border-radius:999px;font-size:12px;margin-left:8px}
    `;

    const tablaItems = (titulo, lista, estiloExtra = '') => {
        if (!lista || lista.length === 0) return '';
        const filas = lista.map(it => `
            <tr>
                <td>${it.codigo}</td><td>${it.descripcion}</td><td>${it.tipo}</td><td>${it.unidad}</td>
                <td style="text-align:right;">${it.cantidad}</td>
                <td style="text-align:right;">${fmtCOP(it.vuCOP)}</td>
                <td style="text-align:right;">${fmtCOP(it.totalCOP)}</td>
                <td style="text-align:right;">${fmtUSD(it.totalUSD)}</td>
            </tr>`).join('');
        const subtotalCOP = lista.reduce((s, it) => s + it.totalCOP, 0);
        const subtotalUSD = toUSD(subtotalCOP);
        return `
            <h3>${titulo}</h3>
            <table class="t ${estiloExtra}"><thead><tr>
                <th>ÍTEM</th><th>DESCRIPCIÓN</th><th>TIPO</th><th>UNIDAD</th><th>CANTIDAD</th><th>VU (COP)</th><th>TOTAL (COP)</th><th>TOTAL (USD)</th>
            </tr></thead><tbody>${filas}</tbody>
            <tfoot><tr class="row-subtotal"><th colspan="6" style="text-align:right;">SUBTOTAL ${titulo.toUpperCase()}:</th><th>${fmtCOP(subtotalCOP)}</th><th>${fmtUSD(subtotalUSD)}</th></tr></tfoot></table>
        `;
    };

    const secciones = Object.keys(capitulos).sort().map(cap => {
        const listas = capitulos[cap];
        const sumCOP = listas.SUMINISTRO.reduce((s, it) => s + it.totalCOP, 0);
        const obraCOP = listas.OBRA.reduce((s, it) => s + it.totalCOP, 0);
        const servCOP = listas.SERVICIO.reduce((s, it) => s + it.totalCOP, 0);

        // ✅ CORRECCIÓN: Usar misma lógica que calcularAIUIVA()
        const baseSum = sumCOP / 1.19;
        const baseServ = servCOP / 1.19;
        const baseObra = obraCOP;  // ✅ Ya es base

        const cd = baseSum + baseServ + baseObra;
        const adm = baseObra * 0.23, imp = baseObra * 0.05, uti = baseObra * 0.05, aiu = adm + imp + uti;
        const ivaSum = sumCOP - baseSum, ivaServ = servCOP - baseServ, ivaUtil = baseObra * 0.05 * 0.19, iva = ivaSum + ivaServ + ivaUtil;
        const total = sumCOP + obraCOP + servCOP + aiu + iva;

        return `
            <h2>${names[cap] || ('Capítulo ' + cap)}</h2>
            ${tablaItems('1.1 SUMINISTROS', listas.SUMINISTRO)}
            ${sumCOP > 0 ? `<table class="t mini"><tbody>
                <tr class="row-iva"><td>IVA 19% (Solo aplica a SUMINISTROS)</td><td style="text-align:right;">${fmtCOP(ivaSum)}</td><td style="text-align:right;">${fmtUSD(toUSD(ivaSum))}</td></tr>
                <tr class="row-total"><td>TOTAL SUMINISTROS (con IVA)</td><td style="text-align:right;">${fmtCOP(sumCOP)}</td><td style="text-align:right;">${fmtUSD(toUSD(sumCOP))}</td></tr>
            </tbody></table>` : ''}
            ${tablaItems('2.2 OBRA CIVIL', listas.OBRA, 'mini')}
            ${obraCOP > 0 ? `<table class="t mini"><tbody>
                <tr class="row-aiu"><td>Administración (23%)</td><td style="text-align:right;">${fmtCOP(adm)}</td><td style="text-align:right;">${fmtUSD(toUSD(adm))}</td></tr>
                <tr class="row-aiu"><td>Imprevistos (5%)</td><td style="text-align:right;">${fmtCOP(imp)}</td><td style="text-align:right;">${fmtUSD(toUSD(imp))}</td></tr>
                <tr class="row-aiu"><td>Utilidad (5%)</td><td style="text-align:right;">${fmtCOP(uti)}</td><td style="text-align:right;">${fmtUSD(toUSD(uti))}</td></tr>
                <tr class="row-highlight"><td><strong>AIU Total (33%)</strong></td><td style="text-align:right;"><strong>${fmtCOP(aiu)}</strong></td><td style="text-align:right;"><strong>${fmtUSD(toUSD(aiu))}</strong></td></tr>
                <tr class="row-iva"><td>IVA/Utilidad (19% × 5%)</td><td style="text-align:right;">${fmtCOP(ivaUtil)}</td><td style="text-align:right;">${fmtUSD(toUSD(ivaUtil))}</td></tr>
                <tr class="row-total"><td>TOTAL OBRA CIVIL (con AIU + IVA)</td><td style="text-align:right;">${fmtCOP(obraCOP + aiu + ivaUtil)}</td><td style="text-align:right;">${fmtUSD(toUSD(obraCOP + aiu + ivaUtil))}</td></tr>
            </tbody></table>` : ''}
            ${tablaItems('3.3 SERVICIOS', listas.SERVICIO)}
            <table class="t mini"><tbody>
                <tr class="row-iva"><td>IVA Suministros (19%)</td><td style="text-align:right;">${fmtCOP(ivaSum)}</td><td style="text-align:right;">${fmtUSD(toUSD(ivaSum))}</td></tr>
                <tr class="row-iva"><td>IVA Servicios (19%)</td><td style="text-align:right;">${fmtCOP(ivaServ)}</td><td style="text-align:right;">${fmtUSD(toUSD(ivaServ))}</td></tr>
                <tr class="row-iva"><td>IVA/Utilidad Obra (19% × 5%)</td><td style="text-align:right;">${fmtCOP(ivaUtil)}</td><td style="text-align:right;">${fmtUSD(toUSD(ivaUtil))}</td></tr>
                <tr class="row-total"><td><strong>TOTAL ${names[cap] || ('Capítulo ' + cap)}</strong></td><td style="text-align:right;"><strong>${fmtCOP(total)}</strong></td><td style="text-align:right;"><strong>${fmtUSD(toUSD(total))}</strong></td></tr>
            </tbody></table>
        `;
    }).join('');

    const html = `<!DOCTYPE html><html><head>
    <meta http-equiv="Cache-Control" content="no-cache, no-store, must-revalidate">
    <meta http-equiv="Pragma" content="no-cache">
    <meta http-equiv="Expires" content="0"><meta charset="UTF-8"><title>ACTA DE OBRA - TM01</title>
    <style>${estilo}</style>
    <script src="https://cdn.sheetjs.com/xlsx-0.20.1/package/dist/xlsx.full.min.js"><\/script>
    </head><body>
        <div class="toolbar"><button class="btn btn-print" onclick="window.print()">🖨️ Imprimir</button><button class="btn btn-excel" onclick="exportarActaExcel()">📊 Exportar Excel</button></div>
        <div class="hero"><div class="wrap">
            <h1>📝 ACTA DE OBRA</h1>
            <div style="font-size:22px;margin-top:6px;">WBS - Sistema de Comunicaciones y Control<span class="pill">UF-2.2 | v3.0</span></div>
            <div style="margin-top:12px;opacity:.95">Fecha: ${new Date().toLocaleDateString('es-CO')}</div>
        </div></div>
        <div class="wrap">${secciones}</div>
        <script>
            const capsResumen = ${JSON.stringify(Object.keys(capitulos).sort().map(cap => {
        const listas = capitulos[cap];
        const sum = listas.SUMINISTRO.reduce((s, it) => s + it.totalCOP, 0);
        const obra = listas.OBRA.reduce((s, it) => s + it.totalCOP, 0);
        const serv = listas.SERVICIO.reduce((s, it) => s + it.totalCOP, 0);
        const baseObra = obra; const baseSum = sum / 1.19; const baseServ = serv / 1.19;
        const cd = baseSum + baseObra + baseServ; const aiu = baseObra * 0.33; const iva = (sum - baseSum) + (serv - baseServ) + (baseObra * 0.05 * 0.19);
        return { cap: cap, name: (names && names[cap]) || ('Capítulo ' + cap), sum, obra, serv, cd, aiu, iva, total: sum + obra + serv + aiu + iva, baseSum, baseObra, baseServ };
    }))};
            
            function exportarActaExcel() {
                const data = [['ACTA DE OBRA - TM01'], ['Fecha', new Date().toLocaleDateString('es-CO')], [], ['CAPÍTULO', 'SUM (COP)', 'OBRA (COP)', 'SERV (COP)', 'CD (COP)', 'AIU 33% (COP)', 'IVA (COP)', 'TOTAL (COP)', 'TOTAL (USD)']];
                capsResumen.forEach(c => { data.push([c.name, c.baseSum, c.baseObra, c.baseServ, c.cd, c.aiu, c.iva, c.total, c.total / 4400]); });
                const ws = XLSX.utils.aoa_to_sheet(data); ws['!cols'] = [{ wch: 40 }, { wch: 18 }, { wch: 18 }, { wch: 18 }, { wch: 18 }, { wch: 16 }, { wch: 16 }, { wch: 18 }, { wch: 16 }];
                const wb = XLSX.utils.book_new(); XLSX.utils.book_append_sheet(wb, ws, 'Acta de Obra');
                const fname = 'Acta_Obra_TM01_' + new Date().toISOString().split('T')[0] + '.xlsx';
                XLSX.writeFile(wb, fname);
            }
        <\/script>
    </body></html>`;

    w.document.write(html);
    w.document.close();
}
