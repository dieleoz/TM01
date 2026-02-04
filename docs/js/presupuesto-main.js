/**
 * presupuesto-main.js
 * Lógica principal de interacción DOM para WBS Presupuestal TM01
 * Extraído y refactorizado de presupuesto.html
 * 
 * Requiere: 
 * - presupuesto-calcs.js (funciones de cálculo)
 * - presupuesto-export.js (funciones de exportación)
 * - tm01_master_data.js (datos)
 * - datos_wbs_TM01_items.js (datos items)
 */

let allItems = [];
let filteredItems = [];

// Inicialización
function waitForDataAndInit() {
    if (typeof TM01MasterData === 'undefined') {
        setTimeout(waitForDataAndInit, 60);
        return;
    }
    initPresupuesto();
}

if (document.readyState === 'loading') {
    document.addEventListener('DOMContentLoaded', waitForDataAndInit);
} else {
    waitForDataAndInit();
}

function initPresupuesto() {
    try {
        let wbs = [];
        // Check detailed data first
        if (typeof window.wbsDataGlobal !== 'undefined' && window.wbsDataGlobal.items) {
            wbs = window.wbsDataGlobal.items;
        } else if (typeof window.datos_wbs !== 'undefined' && window.datos_wbs.items) {
            wbs = window.datos_wbs.items;
        } else {
            const dm = (typeof window.tm01MasterData !== 'undefined') ? window.tm01MasterData : new TM01MasterData();
            wbs = Array.isArray(dm.data?.wbs) ? dm.data.wbs : [];
        }

        const dm = (typeof window.tm01MasterData !== 'undefined') ? window.tm01MasterData : new TM01MasterData(); // Need DM for layout map fallback

        // Tomamos sólo items presupuestales (tipo 'item') y proyectamos campos de precio/costo
        // Obtener layout para mapear UF
        const layout = Array.isArray(dm.data?.layout) ? dm.data.layout : [];
        const layoutMap = new Map(layout.map(l => [l.id, l.uf]));

        allItems = wbs.filter(i => i && i.tipo === 'item').map(i => ({
            ...i,
            _tipoCalc: inferTipoPresupuestal(i),
            _uf: layoutMap.get(i.id) || 'N/A'
        }));

        if (allItems.length === 0) throw new Error('No hay items WBS para presupuesto');

        poblarFiltros();
        filteredItems = [...allItems];
        renderTabla();
        actualizarEstadisticas();
        renderDesglose();

        const fechaEl = document.getElementById('fechaActual');
        if (fechaEl) fechaEl.textContent = new Date().toLocaleString('es-CO');
    } catch (e) {
        const tb = document.getElementById('tbodyPresupuesto');
        if (tb) tb.innerHTML = `<tr><td colspan="11" style="padding:18px;color:#dc3545;">❌ ${e.message}</td></tr>`;
        console.error('Presupuesto - error de carga:', e);
    }
}

function poblarFiltros() {
    const sel = document.getElementById('fSistema');
    if (!sel) return;

    sel.innerHTML = '<option value="">Todos</option>';
    const sistemas = Array.from(new Set(allItems.map(i => i.sistema).filter(Boolean))).sort();
    sistemas.forEach(s => {
        const o = document.createElement('option');
        o.value = s;
        o.textContent = s;
        sel.appendChild(o);
    });
    sel.onchange = aplicarFiltros;

    // Poblar filtro de UF
    const ufSel = document.getElementById('fUF');
    if (!ufSel) return;

    ufSel.innerHTML = '<option value="">Todas</option>';
    const ufs = Array.from(new Set(allItems.map(i => i._uf || 'N/A').filter(uf => uf && uf !== 'N/A'))).sort((a, b) => {
        const aNum = parseInt(a.replace('UF', '')) || 999;
        const bNum = parseInt(b.replace('UF', '')) || 999;
        return aNum - bNum;
    });
    ufs.forEach(uf => {
        const o = document.createElement('option');
        o.value = uf;
        o.textContent = uf;
        ufSel.appendChild(o);
    });
    ufSel.onchange = aplicarFiltros;
}

function aplicarFiltros() {
    const sistemaEl = document.getElementById('fSistema');
    const ufEl = document.getElementById('fUF');
    const buscarEl = document.getElementById('fBuscar');

    const sistema = sistemaEl ? sistemaEl.value : '';
    const uf = ufEl ? ufEl.value : '';
    const q = buscarEl ? buscarEl.value.toLowerCase() : '';

    filteredItems = allItems.filter(i => {
        if (sistema && i.sistema !== sistema) return false;
        if (uf && i._uf !== uf) return false;
        const texto = `${i.item || ''} ${i.descripcion || ''}`.toLowerCase();
        if (q && !texto.includes(q)) return false;
        return true;
    });

    renderTabla();
    actualizarEstadisticas();
    renderDesglose();
}

function limpiarFiltros() {
    const fSistema = document.getElementById('fSistema');
    const fUF = document.getElementById('fUF');
    const fBuscar = document.getElementById('fBuscar');

    if (fSistema) fSistema.value = '';
    if (fUF) fUF.value = '';
    if (fBuscar) fBuscar.value = '';

    aplicarFiltros();
}

function renderTabla() {
    const tbody = document.getElementById('tbodyPresupuesto');
    if (!tbody) return;

    if (filteredItems.length === 0) {
        tbody.innerHTML = '<tr><td colspan="11" style="text-align:center;color:#6c757d; padding: 14px;">Sin resultados</td></tr>';
        return;
    }

    tbody.innerHTML = filteredItems.map(i => {
        const cantidad = num(i.cantidad);
        const vuUSD = num(i.vu) || num(i.vuUSD);
        const totalUSD = num(i.totalUSD) || (cantidad * vuUSD);
        const vuCOP = num(i.vuCOP);
        const totalCOP = num(i.totalCOP) || (cantidad * vuCOP);
        const ufBadge = i._uf && i._uf !== 'N/A' ? `<span class="badge" style="background: #e3f2fd; color: #1976d2;">${i._uf}</span>` : '<span style="color: #999;">N/A</span>';
        return `
            <tr>
                <td>${i.item || ''}</td>
                <td>${i.descripcion || ''}</td>
                <td><span class="badge badge-sistema">${i.sistema || ''}</span></td>
                <td class="right">${cantidad || 0}</td>
                <td>${i.unidad || ''}</td>
                <td>${i._tipoCalc || ''}</td>
                <td style="text-align: center;">${ufBadge}</td>
                <td class="right">${vuUSD ? fm(vuUSD, 'USD') : '-'}</td>
                <td class="right">${totalUSD ? fm(totalUSD, 'USD') : '-'}</td>
                <td class="right">${vuCOP ? fm(vuCOP, 'COP') : '-'}</td>
                <td class="right">${totalCOP ? fm(totalCOP, 'COP') : '-'}</td>
            </tr>
        `;
    }).join('');
}

function renderDesglose() {
    const tbody = document.getElementById('tbodyDesglose');
    if (!tbody) return;

    const calc = calcularAIUIVA(filteredItems);
    const names = getChapterNamesFromWBS(allItems);
    const rows = [];

    Object.keys(calc.subtotales).sort().forEach(cap => {
        const c = calc.subtotales[cap];

        // FIX AIU & IVA (Calculo corregido)
        // Suministros y Servicios incluyen IVA en el precio total listado (se asume precio de mercado con iva)
        // O si el standard es Costo Directo, entonces hay que revisar.
        // Asumimos según lógica corregida:
        // Base = Total / 1.19 (para Sum y Serv)
        // Obra = Costo Directo (sin AIU)

        const baseSum = c.SUMINISTRO / 1.19;
        const baseServ = c.SERVICIO / 1.19;
        const baseObra = c.OBRA; // Obra es costo directo puro

        const cd = baseSum + baseServ + baseObra;
        const aiu = baseObra * 0.33;

        const ivaSum = c.SUMINISTRO - baseSum;
        const ivaServ = c.SERVICIO - baseServ;
        const ivaUtil = baseObra * 0.05 * 0.19;
        const ivaTotal = ivaSum + ivaServ + ivaUtil;

        const total = c.SUMINISTRO + c.OBRA + c.SERVICIO + aiu + ivaTotal;

        rows.push(`
            <tr>
                <td><strong>${names[cap] || cap}</strong></td>
                <td class="right">${fm(c.SUMINISTRO, 'COP')}</td>
                <td class="right">${fm(c.OBRA, 'COP')}</td>
                <td class="right">${fm(c.SERVICIO, 'COP')}</td>
                <td class="right"><strong>${fm(cd, 'COP')}</strong></td>
                <td class="right">${fm(aiu, 'COP')}</td>
                <td class="right">${fm(ivaTotal, 'COP')}</td>
                <td class="right"><strong style="color:#1976d2;">${fm(total, 'COP')}</strong></td>
                <td class="right"><strong>${fm(total / 4400, 'USD')}</strong></td>
            </tr>
        `);

        // Subfilas detalles
        rows.push(`
            <tr><td style="padding-left:30px;color:#004085;">→ IVA Suministros (19%)</td><td></td><td></td><td></td><td></td><td></td><td class="right">${fm(ivaSum, 'COP')}</td><td></td><td class="right">${fm(ivaSum / 4400, 'USD')}</td></tr>
        `);
        rows.push(`
            <tr><td style="padding-left:30px;color:#004085;">→ IVA Servicios (19%)</td><td></td><td></td><td></td><td></td><td></td><td class="right">${fm(ivaServ, 'COP')}</td><td></td><td class="right">${fm(ivaServ / 4400, 'USD')}</td></tr>
        `);
        rows.push(`
            <tr><td style="padding-left:30px;color:#004085;">→ IVA/Utilidad Obra (19% × 5%)</td><td></td><td></td><td></td><td></td><td></td><td class="right">${fm(ivaUtil, 'COP')}</td><td></td><td class="right">${fm(ivaUtil / 4400, 'USD')}</td></tr>
        `);

        if (c.OBRA > 0) {
            rows.push(`
                <tr><td style="padding-left:30px;color:#6c757d;">→ Administración (23%)</td><td></td><td></td><td></td><td></td><td class="right">${fm(baseObra * 0.23, 'COP')}</td><td></td><td></td><td class="right">${fm((baseObra * 0.23) / 4400, 'USD')}</td></tr>
            `);
            rows.push(`
                <tr><td style="padding-left:30px;color:#6c757d;">→ Imprevistos (5%)</td><td></td><td></td><td></td><td></td><td class="right">${fm(baseObra * 0.05, 'COP')}</td><td></td><td></td><td class="right">${fm((baseObra * 0.05) / 4400, 'USD')}</td></tr>
            `);
            rows.push(`
                <tr><td style="padding-left:30px;color:#6c757d;">→ Utilidad (5%)</td><td></td><td></td><td></td><td></td><td class="right">${fm(baseObra * 0.05, 'COP')}</td><td></td><td></td><td class="right">${fm((baseObra * 0.05) / 4400, 'USD')}</td></tr>
            `);
        }

        // ⚠️ DUPLICACIÓN ELIMINADA: Se ha removido el segundo bloque que repetía la fila principal
    });

    // Totales Generales
    rows.push(`
        <tr style="font-weight:700;background:#e3f2fd;border-top:2px solid #1976d2;">
            <td><strong>TOTAL GENERAL</strong></td>
            <td class="right">${fm(calc.totalSuministros, 'COP')}</td>
            <td class="right">${fm(calc.totalObraCivil, 'COP')}</td>
            <td class="right">${fm(calc.totalServicios, 'COP')}</td>
            <td class="right">${fm(calc.costoDirecto, 'COP')}</td>
            <td class="right">${fm(calc.aiu, 'COP')}</td>
            <td class="right">${fm(calc.iva, 'COP')}</td>
            <td class="right" style="background:#d4edda;color:#155724;">${fm(calc.total, 'COP')}</td>
            <td class="right" style="background:#d4edda;color:#155724;">${fm(calc.total / 4400, 'USD')}</td>
        </tr>
    `);

    tbody.innerHTML = rows.join('');
}

function actualizarEstadisticas() {
    // Totales base desde items
    const totUSD = filteredItems.reduce((s, i) => s + (num(i.totalUSD) || (num(i.cantidad) * (num(i.vu) || num(i.vuUSD)))), 0);

    // Usar la función centralizada de cálculo para consistencia (incluye AIU/IVA)
    const calc = calcularAIUIVA(filteredItems);

    const nSum = filteredItems.filter(i => (i._tipoCalc === 'SUMINISTRO')).length;
    const nObra = filteredItems.filter(i => (i._tipoCalc === 'OBRA')).length;
    const nServ = filteredItems.filter(i => (i._tipoCalc === 'SERVICIO')).length;

    const setStat = (id, val) => {
        const el = document.getElementById(id);
        if (el) el.textContent = val;
    };

    setStat('statUSD', fm(calc.total / 4400, 'USD')); // Mostrar total proyectado con impuestos
    setStat('statCOP', fm(calc.total, 'COP'));
    setStat('statAIU', fm(calc.aiu, 'COP'));
    setStat('statIVA', fm(calc.iva, 'COP'));
    setStat('statItems', String(filteredItems.length));
    setStat('statSum', String(nSum));
    setStat('statObra', String(nObra));
    setStat('statServ', String(nServ));
}
