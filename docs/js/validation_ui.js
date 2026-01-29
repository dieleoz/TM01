/**
 * validation_ui.js v2.0 - Logic for Validation Dashboard with Dynamic Loading
 * Dependencies: tm01_master_data.js, kramed.js
 * Loads validation files dynamically per subsystem
 */

// Static Metadata for Systems (Icons, Labels)
const SYSTEM_METADATA = {
    'CCTV': { icon: '📹', label: 'CCTV' },
    'PMV': { icon: '📟', label: 'PMV' },
    'SOS': { icon: '📞', label: 'SOS' },
    'WIM': { icon: '⚖️', label: 'Pesaje' },
    'METEO': { icon: '🌦️', label: 'Meteorología' },
    'FIBRA': { icon: '⚡', label: 'Fibra Óptica' },
    'PEAJE': { icon: '🛂', label: 'Peajes' },
    'RADIO': { icon: '📻', label: 'Radio VHF' },
    'ETD': { icon: '📡', label: 'ETD / Radares' },
    'CO': { icon: '🏢', label: 'Centro de Control' },
    'CCO': { icon: '🖥️', label: 'Centro de Control (CCO)' },
    'ILUMINACION': { icon: '💡', label: 'Iluminación' },
    'SENALIZACION': { icon: '🛑', label: 'Señalización' },
    'ENERGIA': { icon: '⚡', label: 'Energía' }
};

// Cache for loaded validations
const validationCache = {};

document.addEventListener('DOMContentLoaded', () => {
    renderValidationTable();

    // Visual Feedback for Role
    const urlParams = new URLSearchParams(window.location.search);
    const role = urlParams.get('role');
    if (role) {
        const headerSmall = document.querySelector('.header small');
        if (headerSmall) {
            let roleName = role.charAt(0).toUpperCase() + role.slice(1);
            headerSmall.innerHTML += ` <span style="background:var(--accent); color:white; padding:2px 6px; border-radius:4px; font-size:0.8em; margin-left:10px;">Vista ${roleName}</span>`;
        }
    }
});

/**
 * Load validation file for a specific system dynamically
 * @param {string} sistema - System code (e.g., 'CCTV', 'SOS')
 * @returns {Promise<Object>} - Validation object with full, contractual, technical, financial, risks
 */
async function loadValidacionSistema(sistema) {
    // Check cache first
    if (validationCache[sistema]) {
        return validationCache[sistema];
    }

    return new Promise((resolve, reject) => {
        const script = document.createElement('script');
        script.src = `data/validaciones/validaciones_${sistema}.js?v=${Date.now()}`;

        script.onload = () => {
            // The file exposes window.validaciones_[SISTEMA]
            const validaciones = window[`validaciones_${sistema}`];
            if (validaciones) {
                validationCache[sistema] = validaciones;
                resolve(validaciones);
            } else {
                reject(new Error(`Validation data for ${sistema} not found`));
            }
        };

        script.onerror = () => {
            console.warn(`No validation file found for ${sistema}`);
            resolve(null); // Return null instead of rejecting
        };

        document.head.appendChild(script);
    });
}

function renderValidationTable() {
    const md = (typeof window.tm01MasterData !== 'undefined') ? window.tm01MasterData :
        (typeof window.TM01_MASTER_DATA !== 'undefined' ? { data: window.TM01_MASTER_DATA } : null);

    if (!md) {
        console.error("TM01 Master Data not loaded.");
        return;
    }

    const tbody = document.getElementById('tableBody');
    if (!tbody) return;

    // 1. Gather Systems from Master Data
    let systemEntries = [];
    Object.keys(md.data).forEach(k => {
        if (k.includes('Summary')) {
            const obj = md.data[k];
            const sysCode = obj.sistema ? obj.sistema.split(' ')[0].toUpperCase() : k.replace('Summary', '').toUpperCase();

            // Map common aliases using FULL ORIGINAL LABEL to avoid "RADAR" split issue
            let mappedCode = sysCode;
            const fullLabel = obj.sistema ? obj.sistema.toUpperCase() : '';

            if (fullLabel.includes('FIBRA') || fullLabel.includes('TELECOM')) mappedCode = 'FIBRA';
            if (fullLabel.includes('PEAJE')) mappedCode = 'PEAJE';
            if (fullLabel.includes('CENTRO') || fullLabel.includes('CCO')) mappedCode = 'CCO';
            if (fullLabel.includes('METEO')) mappedCode = 'METEO';

            // Critical: Check PEDAGOGICO first to prevent it being caught by RADAR check
            if (fullLabel.includes('PEDAGOGICO') || fullLabel.includes('PEDAGÓGICO')) {
                mappedCode = 'PEDAGOGICO';
            } else if (fullLabel.includes('SAST') || fullLabel.includes('SANCIONATORIO')) {
                mappedCode = 'SAST';
            } else if (fullLabel.includes('ETD') || fullLabel.includes('RADAR')) {
                mappedCode = 'ETD';
            }

            systemEntries.push({
                key: k,
                sysCode: mappedCode,
                originalLabel: obj.sistema,
                qty: obj.cantidad,
                status: obj.estado,
                capex: obj.capexUSD
            });
        }
    });

    // 2. Render table with "Loading..." status initially
    let html = '';
    systemEntries.forEach(entry => {
        const sysKey = entry.sysCode;
        const meta = SYSTEM_METADATA[sysKey] || { icon: '⚙️', label: entry.originalLabel };

        html += `
        <tr id="row-${sysKey}">
            <td>${meta.icon}</td>
            <td><strong>${meta.label}</strong></td>
            <td>${entry.qty || 'N/A'}</td>
            <td>$${(entry.capex || 0).toLocaleString('en-US')}</td>
            <td><div class="tag tag-loading">⏳ Cargando...</div></td>
            <td>
                <button class="btn-action" onclick="openValidacionModal('${sysKey}')" disabled>
                    Abrir
                </button>
            </td>
        </tr>
        `;
    });

    tbody.innerHTML = html;

    // 3. Load validations asynchronously
    systemEntries.forEach(async (entry) => {
        const sysKey = entry.sysCode;
        const row = document.getElementById(`row-${sysKey}`);
        if (!row) return;

        try {
            const validaciones = await loadValidacionSistema(sysKey);
            const hasValidation = !!validaciones;

            // Update status tag
            const statusCell = row.cells[4];
            statusCell.innerHTML = hasValidation
                ? `<div class="tag tag-ok">✅ Documentado</div>`
                : `<div class="tag tag-warn">⚠️ Pendiente</div>`;

            // Enable button if validation exists
            const button = row.querySelector('.btn-action');
            if (hasValidation) {
                button.disabled = false;
            }
        } catch (error) {
            console.error(`Error loading validation for ${sysKey}:`, error);
            const statusCell = row.cells[4];
            statusCell.innerHTML = `<div class="tag tag-warn">⚠️ Pendiente</div>`;
        }
    });
}

/**
 * Open validation modal for a system
 * @param {string} sistema - System code
 */
async function openValidacionModal(sistema) {
    try {
        const validaciones = await loadValidacionSistema(sistema);

        if (!validaciones) {
            alert(`No hay dictamen disponible para ${sistema}`);
            return;
        }

        // Get role from URL
        const urlParams = new URLSearchParams(window.location.search);
        const role = urlParams.get('role') || 'full';

        // Get content for role
        const contenido = validaciones[role] || validaciones.full;

        // Render modal
        const modal = document.getElementById('validationModal');
        const modalTitle = document.getElementById('modalTitle');
        const modalContent = document.getElementById('modalContent');
        const modalActions = document.getElementById('modalActions');

        modalTitle.textContent = `Validación: ${SYSTEM_METADATA[sistema]?.label || sistema}`;

        // Render Markdown content
        if (typeof marked !== 'undefined') {
            modalContent.innerHTML = marked.parse(contenido);
        } else {
            modalContent.innerHTML = `<pre>${contenido}</pre>`;
        }

        // Add action buttons
        modalActions.innerHTML = `
            <button class="btn-secondary" onclick="closeValidacionModal()">Cerrar</button>
            <button class="btn-primary" onclick="openDictamenCompleto('${sistema}')">
                📄 Ver Dictamen Completo (HTML)
            </button>
        `;

        modal.style.display = 'block';
    } catch (error) {
        console.error('Error opening modal:', error);
        alert('Error al cargar la validación');
    }
}

/**
 * Open complete HTML dictamen in new tab
 * @param {string} sistema - System code
 */
function openDictamenCompleto(sistema) {
    window.open(`dictamenes/DICTAMEN_JURIDICO_${sistema}.html`, '_blank');
}

/**
 * Close validation modal
 */
function closeValidacionModal() {
    const modal = document.getElementById('validationModal');
    modal.style.display = 'none';
}

// Close modal when clicking outside
window.onclick = function (event) {
    const modal = document.getElementById('validationModal');
    if (event.target === modal) {
        closeValidacionModal();
    }
};
