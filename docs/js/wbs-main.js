/**
 * wbs-main.js
 * Lógica principal de interacción DOM para WBS TM01
 * Extraído y refactorizado de wbs.html
 * 
 * Requiere: 
 * - wbs-dt.js (funciones DT)
 * - wbs-export.js (funciones exportación)
 * - tm01_master_data.js (datos)
 * - datos_wbs_TM01_items.js (datos items)
 */


// Variables are created as window properties when first assigned
// No declarations needed - avoids redeclaration errors





// Función para verificar y cargar datos cuando el script externo esté listo
function checkAndInit() {
    if (typeof TM01MasterData !== 'undefined') {
        initWBS();
    } else {
        setTimeout(checkAndInit, 50);
    }
}

// Inicializar cuando el DOM esté listo
if (document.readyState === 'loading') {
    document.addEventListener('DOMContentLoaded', checkAndInit);
} else {
    checkAndInit();
}

function initWBS() {
    try {
        console.log('🚀 Inicializando WBS...');

        // Create local aliases for window variables
        let tm01Data, wbsData, filteredData;

        // Esperar a que TM01MasterData esté disponible
        if (typeof TM01MasterData === 'undefined') {
            setTimeout(initWBS, 50);
            return;
        }

        // Intentar usar la instancia global primero
        if (typeof window.tm01MasterData !== 'undefined' && window.tm01MasterData instanceof TM01MasterData) {
            window.tm01Data = window.tm01MasterData;
            console.log('✅ Usando instancia global tm01MasterData');
        } else {
            // Si no hay instancia global, crear una nueva
            window.tm01Data = new TM01MasterData();
            console.log('✅ Creando nueva instancia TM01MasterData');
        }

        window.dataManager = window.tm01Data;
        tm01Data = window.tm01Data;

        if (typeof window.wbsDataGlobal !== 'undefined' && Array.isArray(window.wbsDataGlobal.items)) {
            window.wbsData = window.wbsDataGlobal.items;
            console.log('✅ Datos WBS detallados cargados (wbsDataGlobal):', window.wbsData.length, 'items');
        } else if (typeof window.datos_wbs !== 'undefined' && Array.isArray(window.datos_wbs.items)) {
            window.wbsData = window.datos_wbs.items;
            console.log('✅ Datos WBS detallados cargados (datos_wbs):', window.wbsData.length, 'items');
        } else if (tm01Data && tm01Data.data && Array.isArray(tm01Data.data.wbs)) {
            window.wbsData = tm01Data.data.wbs;
            console.log('✅ Datos Master Data cargados:', window.wbsData.length, 'items');
        } else {
            throw new Error('No se encontraron datos WBS válidos');
        }

        if (window.wbsData.length === 0) {
            throw new Error('Los datos WBS están vacíos');
        }

        window.filteredData = [...window.wbsData];
        inicializarFiltros();
        actualizarEstadisticas();
        renderizarWBS();

        // Inicializar eventos de filtros
        setupFilterEvents();

    } catch (error) {
        console.error('❌ Error cargando datos:', error);
        mostrarError('Error cargando datos: ' + error.message + '<br>Verificar que data/tm01_master_data.js esté disponible.');
        document.getElementById('totalItems').textContent = 'ERROR';
        document.getElementById('totalCapitulos').textContent = 'ERROR';
        document.getElementById('totalSistemas').textContent = 'ERROR';
        document.getElementById('costoTotal').textContent = 'ERROR';
    }
}

function inicializarFiltros() {
    const sistemaFilter = document.getElementById('sistemaFilter');
    if (!sistemaFilter) return;

    // Limpiar opciones previas excepto la primera (Todos)
    while (sistemaFilter.options.length > 1) {
        sistemaFilter.remove(1);
    }

    const sistemas = [...new Set(wbsData.map(item => item.sistema).filter(s => s))].sort();
    sistemas.forEach(sistema => {
        const option = document.createElement('option');
        option.value = sistema;
        option.textContent = sistema;
        sistemaFilter.appendChild(option);
    });
}

function setupFilterEvents() {
    // Vincular botones
    const btnFiltrar = document.querySelector('button[onclick="filtrarWBS()"]');
    if (btnFiltrar) btnFiltrar.onclick = filtrarWBS;

    const btnLimpiar = document.querySelector('button[onclick="limpiarFiltros()"]');
    if (btnLimpiar) btnLimpiar.onclick = limpiarFiltros;

    // Campo búsqueda enter
    const searchInput = document.getElementById('searchInput');
    if (searchInput) {
        searchInput.addEventListener('keypress', function (e) {
            if (e.key === 'Enter') filtrarWBS();
        });
    }
}

function actualizarEstadisticas() {
    const totalItems = filteredData.length;
    const totalCapitulos = filteredData.filter(item => item.nivel === 1).length;
    const sistemas = [...new Set(filteredData.map(item => item.sistema).filter(s => s))].length;

    const costoTotal = filteredData.reduce((sum, item) => {
        const costo = parseFloat((item.total || '').toString().replace(/,/g, '')) || 0;
        return sum + costo;
    }, 0);

    const elTotalItems = document.getElementById('totalItems');
    const elTotalCapitulos = document.getElementById('totalCapitulos');
    const elTotalSistemas = document.getElementById('totalSistemas');
    const elCostoTotal = document.getElementById('costoTotal');

    if (elTotalItems) elTotalItems.textContent = totalItems;
    if (elTotalCapitulos) elTotalCapitulos.textContent = totalCapitulos;
    if (elTotalSistemas) elTotalSistemas.textContent = sistemas;
    if (elCostoTotal) elCostoTotal.textContent = `$${(costoTotal / 1000000).toFixed(2)}M`;

    mostrarSubtotales();
}

function toggleSubtotales() {
    const subtotalesSection = document.getElementById('subtotalesSection');
    const button = document.querySelector('.subtotal-toggle .btn'); // Seleccionar botón

    if (!subtotalesSection) return;

    if (subtotalesSection.style.display === 'none' || subtotalesSection.style.display === '') {
        mostrarSubtotales();
        if (button) button.textContent = '📊 Ocultar Subtotales';
    } else {
        subtotalesSection.style.display = 'none';
        if (button) button.textContent = '📊 Mostrar Subtotales por Sistema';
    }
}

function mostrarSubtotales() {
    const subtotalesSection = document.getElementById('subtotalesSection');
    const subtotalesGrid = document.getElementById('subtotalesGrid');

    if (!subtotalesGrid) return;

    // Use dynamic summary helper
    const summaryList = window.obtenerResumenContractual ? window.obtenerResumenContractual() : [];

    let html = '';
    let totalGeneralUSD = 0, totalGeneralCOP = 0;

    summaryList.forEach(summary => {
        const sistema = summary.sistema;
        const cantidad = summary.cantidad || 0;
        const costoUSD = summary.capexUSD || 0;
        const costoCOP = summary.capexCOP || 0;

        html += `
            <div class="subtotal-item">
                <div class="subtotal-label">${sistema}</div>
                <div class="subtotal-value">
                    ${cantidad} unidades<br>
                    <strong>USD: $${costoUSD.toLocaleString()}</strong><br>
                    <strong>COP: $${costoCOP.toLocaleString()}</strong>
                </div>
            </div>`;

        totalGeneralUSD += costoUSD;
        totalGeneralCOP += costoCOP;
    });

    html += `
        <div class="subtotal-item" style="border: 3px solid #e74c3c; background: #fff5f5;">
            <div class="subtotal-label" style="color: #e74c3c; font-size: 1.2em;">✅ TOTAL GENERAL</div>
            <div class="subtotal-value" style="color: #e74c3c; font-size: 1.1em;">
                <strong>USD: $${totalGeneralUSD.toLocaleString()}</strong><br>
                <strong>COP: $${totalGeneralCOP.toLocaleString()}</strong>
            </div>
        </div>`;

    subtotalesGrid.innerHTML = html;

    if (subtotalesSection && (subtotalesSection.style.display !== 'none')) {
        subtotalesSection.style.display = 'block';
    }
}

function renderizarWBS() {
    const wbsTree = document.getElementById('wbsTree');
    if (!wbsTree) return;

    if (filteredData.length === 0) {
        wbsTree.innerHTML = '<div class="no-data">❌ No se encontraron datos que coincidan con los filtros</div>';
        return;
    }

    let html = '';
    const capitulos = filteredData.filter(item => item.nivel === 1 || item.tipo === "capitulo");

    capitulos.forEach(capitulo => {
        // Filtrar items del capítulo usando tipo==="item" en lugar de nivel===3
        const itemsCapitulo = filteredData.filter(item =>
            item.item.startsWith(capitulo.item + '.') && item.tipo === "item"
        );

        let totalCapituloUSD = 0;
        let totalCapituloCOP = 0;
        let cantidadPrincipal = 0;

        // Obtener cantidad del primer item (principal) del capítulo
        const itemPrincipal = itemsCapitulo[0];
        if (itemPrincipal) {
            cantidadPrincipal = parseFloat((itemPrincipal.cantidad || '').toString().replace(/,/g, '')) || 0;
        }

        itemsCapitulo.forEach(item => {
            const costoUSD = parseFloat((item.total || '').toString().replace(/,/g, '')) || 0;
            const costoCOP = parseFloat((item.totalCOP || '').toString().replace(/,/g, '')) || 0;
            totalCapituloUSD += costoUSD;
            totalCapituloCOP += costoCOP;
        });

        html += `
            <div class="wbs-item capitulo" onclick="toggleCapitulo('${capitulo.id}')">
                <span class="item-code">${capitulo.item}</span>
                <span class="item-desc">${capitulo.descripcion}</span>
                <span class="item-qty">Sistema: ${capitulo.sistema}</span>
                <div class="capitulo-totales">
                    <div class="total-unidades">${cantidadPrincipal} unidades</div>
                    <div class="total-cost">$${totalCapituloUSD.toLocaleString()} USD</div>
                    <div class="total-cost">$${totalCapituloCOP.toLocaleString()} COP</div>
                </div>
            </div>`;

        // Filtrar subcapítulos usando tipo==="subcapitulo" en lugar de nivel===2
        const subcapitulos = filteredData.filter(item =>
            (item.tipo === "subcapitulo" || item.nivel === 2) && item.item.startsWith(capitulo.item + '.')
        );

        subcapitulos.forEach(subcapitulo => {
            html += `
                <div class="wbs-item subcapitulo" onclick="toggleSubcapitulo('${subcapitulo.id}')">
                    <span class="item-code">${subcapitulo.item}</span>
                    <span class="item-desc">${subcapitulo.descripcion}</span>
                </div>`;

            // Filtrar items usando tipo==="item"
            const items = filteredData.filter(item =>
                item.tipo === "item" && item.item.startsWith(subcapitulo.item + '.')
            );

            items.forEach(item => {
                const vuUSD = item.vu || '0';
                const vuCOP = item.vuCOP || '0';
                const totalUSD = item.total || '0';
                const totalCOP = item.totalCOP || '0';

                html += `
                    <div class="wbs-item item">
                        <div>
                            <span class="item-code">${item.item}</span> 
                            <span class="item-desc">${item.descripcion}</span>
                        </div>
                        <div class="item-qty">${item.cantidad || '-'} ${item.unidad || ''}</div>
                        <div class="item-cost">
                            $${vuUSD} USD<br>
                            <small>$${vuCOP} COP</small>
                        </div>
                        <div class="item-cost">
                            $${totalUSD} USD<br>
                            <small>$${totalCOP} COP</small>
                        </div>
                        <div class="item-actions">
                            <button class="btn btn-small btn-dt" onclick="crearDT('${item.id}', '${item.item}', '${item.descripcion}', '${item.sistema}')">📋 DT</button>
                            <button class="btn btn-small btn-details" onclick="verDetalles('${item.id}')">ℹ️ Ver</button>
                        </div>
                    </div>`;
            });
        });
    });

    wbsTree.innerHTML = html;
}

function filtrarWBS() {
    const sistemaFilter = document.getElementById('sistemaFilter') ? document.getElementById('sistemaFilter').value : '';
    const nivelFilter = document.getElementById('nivelFilter') ? document.getElementById('nivelFilter').value : '';
    const searchInput = document.getElementById('searchInput') ? document.getElementById('searchInput').value.toLowerCase() : '';

    window.filteredData = window.wbsData.filter(item => {
        let match = true;
        if (sistemaFilter && item.sistema !== sistemaFilter) match = false;
        if (nivelFilter && item.nivel.toString() !== nivelFilter) match = false;
        if (searchInput && !item.descripcion.toLowerCase().includes(searchInput)) match = false;
        return match;
    });

    actualizarEstadisticas();
    renderizarWBS();
}

function limpiarFiltros() {
    if (document.getElementById('sistemaFilter')) document.getElementById('sistemaFilter').value = '';
    if (document.getElementById('nivelFilter')) document.getElementById('nivelFilter').value = '';
    if (document.getElementById('searchInput')) document.getElementById('searchInput').value = '';

    window.filteredData = [...window.wbsData];
    actualizarEstadisticas();
    renderizarWBS();
}

function expandirTodo() {
    // Reservado para futura lógica de expansión
    // Actualmente la vista es plana/siempre expandida en visualización, 
    // aunque el código original sugiere estructura de árbol.
    // Como no hay lógica de colapso en el original, no hay nada que expandir realmente.
    console.log("Expandir todo - Funcionalidad futura");
}

function toggleCapitulo(capituloId) {
    // Reservado para toggle
    console.log("Toggle capítulo", capituloId);
}

function toggleSubcapitulo(subcapituloId) {
    // Reservado para toggle
    console.log("Toggle subcapítulo", subcapituloId);
}

function mostrarError(mensaje) {
    const wbsTree = document.getElementById('wbsTree');
    if (wbsTree) wbsTree.innerHTML = `<div class="error">❌ ${mensaje}</div>`;
}
