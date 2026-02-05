/**
 * presupuesto-export.js
 * Funciones de exportación
 */

function exportarExcel() {
    if (filteredItems.length === 0) return;
    const data = filteredItems.map(i => ({
        Item: i.item, Descrip: i.descripcion, Sistema: i.sistema, Cant: num(i.cantidad),
        TotalUSD: num(i.totalUSD), TotalCOP: num(i.totalCOP)
    }));
    const ws = XLSX.utils.json_to_sheet(data);
    const wb = XLSX.utils.book_new();
    XLSX.utils.book_append_sheet(wb, ws, 'WBS');
    XLSX.writeFile(wb, 'Presupuesto_TM01.xlsx');
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
