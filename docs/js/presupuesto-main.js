/**
 * presupuesto-main.js
 * Lógica principal para WBS Presupuestal
 */

let allItems = [];
let filteredItems = [];

function waitForDataAndInit() {
    if (typeof window.TM01MasterData === 'undefined' && typeof window.tm01MasterData === 'undefined') {
        setTimeout(waitForDataAndInit, 100);
        return;
    }
    initPresupuesto();
}

window.onload = waitForDataAndInit;

function initPresupuesto() {
    try {
        let wbs = [];
        if (window.wbsDataGlobal && window.wbsDataGlobal.items) {
            wbs = window.wbsDataGlobal.items;
        } else if (window.datos_wbs && window.datos_wbs.items) {
            wbs = window.datos_wbs.items;
        }

        allItems = wbs.filter(i => i.tipo === 'item').map(i => {
            return { ...i, _tipoCalc: inferTipoPresupuestal(i) };
        });

        if (allItems.length === 0) return;

        poblarFiltros();
        filteredItems = [...allItems];
        renderTabla();
        actualizarEstadisticas();
        renderDesglose();

        const f = document.getElementById('fechaActual');
        if (f) f.textContent = new Date().toLocaleString();
    } catch (e) {
        console.error('Error init:', e);
    }
}

function poblarFiltros() {
    const s = document.getElementById('fSistema');
    if (!s) return;
    s.innerHTML = '<option value="">Todos</option>';
    const sis = Array.from(new Set(allItems.map(i => i.sistema).filter(Boolean))).sort();
    sis.forEach(x => {
        const o = document.createElement('option');
        o.value = x; o.textContent = x; s.appendChild(o);
    });
    s.onchange = aplicarFiltros;
}

function aplicarFiltros() {
    const sis = document.getElementById('fSistema')?.value;
    const q = document.getElementById('fBuscar')?.value.toLowerCase();

    filteredItems = allItems.filter(i => {
        if (sis && i.sistema !== sis) return false;
        if (q && !((i.item + ' ' + i.descripcion).toLowerCase().includes(q))) return false;
        return true;
    });

    renderTabla();
    actualizarEstadisticas();
    renderDesglose();
}

function limpiarFiltros() {
    document.getElementById('fSistema').value = '';
    document.getElementById('fBuscar').value = '';
    aplicarFiltros();
}

function renderTabla() {
    const b = document.getElementById('tbodyPresupuesto');
    if (!b) return;
    b.innerHTML = filteredItems.map(i => {
        const qty = num(i.cantidad);
        const vUSD = num(i.totalUSD) / (qty || 1);
        const tUSD = num(i.totalUSD) || (qty * num(i.vu));
        const tCOP = num(i.totalCOP) || (qty * num(i.vuCOP));
        return `<tr>
            <td>${i.item}</td><td>${i.descripcion}</td><td>${i.sistema}</td>
            <td class="right">${qty}</td><td>${i.unidad || ''}</td><td>${i._tipoCalc}</td><td>N/A</td>
            <td class="right">${fm(vUSD, 'USD')}</td><td class="right">${fm(tUSD, 'USD')}</td>
            <td class="right">-</td><td class="right">${fm(tCOP, 'COP')}</td>
        </tr>`;
    }).join('');
}

function renderDesglose() {
    const b = document.getElementById('tbodyDesglose');
    if (!b) return;
    const c = calcularAIUIVA(filteredItems);
    const n = getChapterNamesFromWBS(allItems);
    const rs = [];

    Object.keys(c.subtotales).sort().forEach(cap => {
        const s = c.subtotales[cap];
        const baseSum = s.SUMINISTRO / 1.19;
        const baseServ = s.SERVICIO / 1.19;
        const aiu = s.OBRA * 0.33;
        const iva = (s.SUMINISTRO - baseSum) + (s.SERVICIO - baseServ) + (s.OBRA * 0.05 * 0.19);
        const total = s.SUMINISTRO + s.OBRA + s.SERVICIO + s.CONSOLIDADO + aiu + iva;

        rs.push(`<tr>
            <td><strong>${n[cap] || cap}</strong></td>
            <td class="right">${fm(s.SUMINISTRO, 'COP')}</td>
            <td class="right">${fm(s.OBRA, 'COP')}</td>
            <td class="right">${fm(s.SERVICIO, 'COP')}</td>
            <td class="right">${fm(baseSum + baseServ + s.OBRA + s.CONSOLIDADO, 'COP')}</td>
            <td class="right">${fm(aiu, 'COP')}</td>
            <td class="right">${fm(iva, 'COP')}</td>
            <td class="right"><strong>${fm(total, 'COP')}</strong></td>
            <td class="right">${fm(total / 4400, 'USD')}</td>
        </tr>`);
    });
    b.innerHTML = rs.join('');
}

function actualizarEstadisticas() {
    const c = calcularAIUIVA(filteredItems);
    const set = (id, v) => { const e = document.getElementById(id); if (e) e.textContent = v; };
    set('statUSD', fm(c.total / 4400, 'USD'));
    set('statCOP', fm(c.total, 'COP'));
    set('statAIU', fm(c.aiu, 'COP'));
    set('statIVA', fm(c.iva, 'COP'));
    set('statItems', filteredItems.length);
    set('statSum', filteredItems.filter(i => i._tipoCalc !== 'OBRA' && i._tipoCalc !== 'SERVICIO').length);
    set('statObra', filteredItems.filter(i => i._tipoCalc === 'OBRA').length);
    set('statServ', filteredItems.filter(i => i._tipoCalc === 'SERVICIO').length);
}
