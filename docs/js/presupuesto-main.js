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

    b.innerHTML = Object.keys(c.subtotales).sort().map(cap => {
        const s = c.subtotales[cap];
        const baseSum = s.SUMINISTRO / 1.19;
        const baseServ = s.SERVICIO / 1.19;
        const aiu = s.OBRA * 0.33;
        const iva = (s.SUMINISTRO - baseSum) + (s.SERVICIO - baseServ) + (s.OBRA * 0.05 * 0.19);
        const cd = baseSum + baseServ + s.OBRA + s.CONSOLIDADO;
        const total = s.SUMINISTRO + s.OBRA + s.SERVICIO + s.CONSOLIDADO + aiu + iva;

        return `<tr>
            <td>${n[cap] || cap}</td>
            <td class="right">${fm(s.SUMINISTRO)}</td>
            <td class="right">${fm(s.OBRA)}</td>
            <td class="right">${fm(s.SERVICIO)}</td>
            <td class="right highlight-cd">${fm(cd)}</td>
            <td class="right">${fm(aiu)}</td>
            <td class="right">${fm(iva)}</td>
            <td class="right total">${fm(total)}</td>
        </tr>`;
    }).join('');

    // Global Labels
    document.getElementById('totalSuministros').innerText = fm(c.totalSuministros);
    document.getElementById('totalObra').innerText = fm(c.totalObraCivil);
    document.getElementById('totalServicios').innerText = fm(c.totalServicios);
}

function actualizarEstadisticas() {
    const c = calcularAIUIVA(filteredItems);
    document.getElementById('statUSD').innerText = fm(c.total / 4400, 'USD');
    document.getElementById('statCAPEX').innerText = fm(c.costoDirecto, 'COP');
    document.getElementById('statCOP').innerText = fm(c.total, 'COP');
    document.getElementById('statAIU').innerText = fm(c.aiu, 'COP');
    document.getElementById('statIVA').innerText = fm(c.iva, 'COP');
    document.getElementById('statItems').innerText = filteredItems.length;

    const counts = filteredItems.reduce((acc, i) => {
        const t = inferTipoPresupuestal(i);
        acc[t] = (acc[t] || 0) + 1;
        return acc;
    }, {});

    document.getElementById('statSum').innerText = counts['SUMINISTRO'] || 0;
    document.getElementById('statObra').innerText = counts['OBRA'] || 0;
    document.getElementById('statServ').innerText = counts['SERVICIO'] || 0;
}
