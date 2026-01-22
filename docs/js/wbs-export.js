/**
 * wbs-export.js
 * Funciones de exportación (CSV/Excel) para WBS TM01
 * Extraído y refactorizado de wbs.html
 * 
 * Requiere: XLSX library (SheetJS)
 */

function exportarCSV() {
    // filteredData debe ser global o accesible
    if (typeof filteredData === 'undefined' || filteredData.length === 0) {
        alert('No hay datos para exportar');
        return;
    }

    const headers = ['Item', 'Descripción', 'Sistema', 'Nivel', 'Cantidad', 'Unidad', 'VU', 'Total'];
    const csvContent = [
        headers.join(','),
        ...filteredData.map(item => [
            item.item,
            `"${(item.descripcion || '').replace(/"/g, '""')}"`,
            item.sistema,
            item.nivel,
            item.cantidad || '',
            item.unidad || '',
            item.vu || '',
            item.total || ''
        ].join(','))
    ].join('\n');

    const blob = new Blob([csvContent], { type: 'text/csv;charset=utf-8;' });
    const url = window.URL.createObjectURL(blob);
    const a = document.createElement('a');
    a.href = url;
    a.download = `WBS_TM01_${new Date().toISOString().split('T')[0]}.csv`;
    a.click();
    window.URL.revokeObjectURL(url);
}

function exportarExcel() {
    if (typeof window.dataManager === 'undefined' || !window.dataManager.data || !window.dataManager.data.wbs) {
        alert('No hay datos para exportar');
        return;
    }

    try {
        const wbs = window.dataManager.data.wbs;
        const excelData = [];
        excelData.push(['ID', 'Nivel', 'Item', 'Descripción', 'Sistema', 'Cantidad', 'Unidad', 'Tipo', 'Criterio', 'Precio Unit USD', 'Precio Unit COP', 'Total USD', 'Total COP']);

        wbs.forEach(item => {
            excelData.push([
                item.id || '',
                item.nivel || '',
                item.item || '',
                item.descripcion || '',
                item.sistema || '',
                item.cantidad || '',
                item.unidad || '',
                item.tipo || '',
                item.criterio || '',
                item.vu || '',
                item.vuCOP || '',
                item.total || '',
                item.totalCOP || ''
            ]);
        });

        // Verificar si XLSX está disponible
        if (typeof XLSX === 'undefined') {
            throw new Error('Librería XLSX no cargada. Asegúrese de incluir <script src="https://cdnjs.cloudflare.com/ajax/libs/xlsx/0.18.5/xlsx.full.min.js"></script>');
        }

        const wb = XLSX.utils.book_new();
        const ws = XLSX.utils.aoa_to_sheet(excelData);
        ws['!cols'] = [
            { wch: 8 }, { wch: 6 }, { wch: 10 }, { wch: 40 },
            { wch: 12 }, { wch: 12 }, { wch: 8 }, { wch: 12 },
            { wch: 30 }, { wch: 15 }, { wch: 15 }, { wch: 15 }, { wch: 15 }
        ];

        XLSX.utils.book_append_sheet(wb, ws, 'WBS_TM01');
        const fecha = new Date().toISOString().split('T')[0];
        const nombreArchivo = `WBS_TM01_Troncal_Magdalena_${fecha}.xlsx`;
        XLSX.writeFile(wb, nombreArchivo);
        alert(`✅ Archivo Excel exportado exitosamente: ${nombreArchivo}`);
    } catch (error) {
        console.error('Error al exportar Excel:', error);
        alert('❌ Error al exportar a Excel. Verifique la consola para más detalles.');
    }
}
