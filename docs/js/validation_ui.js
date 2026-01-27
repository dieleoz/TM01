/**
 * validation_ui.js - Logic for Validation Dashboard
 * Dependencies: tm01_master_data.js, validaciones_content.js, kramed.js
 */

// Static Metadata for Systems (Icons, Labels)
// Falls back to Master Data if not present
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
    'ILUMINACION': { icon: '💡', label: 'Iluminación' },
    'SENALIZACION': { icon: '🛑', label: 'Señalización' },
    'ENERGIA': { icon: '⚡', label: 'Energía' }
};

document.addEventListener('DOMContentLoaded', () => {
    renderValidationTable();
});

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
            // Normalize Key: 'cctvSummary' -> 'CCTV' or use obj.sistema
            const sysCode = obj.sistema ? obj.sistema.split(' ')[0].toUpperCase() : k.replace('Summary', '').toUpperCase();

            // Map common aliases
            let mappedCode = sysCode;
            if (sysCode.includes('FIBRA') || sysCode.includes('TELECOM')) mappedCode = 'FIBRA';
            if (sysCode.includes('PEAJE')) mappedCode = 'PEAJE';

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

    // 2. Load Validations
    const validations = window.validacionesData || {};
    let html = '';

    systemEntries.forEach(entry => {
        const sysKey = entry.sysCode;

        // Flexible Match for Validations
        // Check if the validation object has a key that matches this system
        // E.g. 'PEAJES' in validations matches 'PEAJE' in system
        let valKey = Object.keys(validations).find(k =>
            k.toUpperCase().includes(sysKey) || sysKey.includes(k.toUpperCase())
        );

        // Special override for known mismatches if needed
        if (!valKey && sysKey === 'PEAJE') valKey = 'PEAJES';
        if (!valKey && sysKey === 'ETD') valKey = 'ETD';

        const hasValidation = !!(valKey && validations[valKey]);

        const statusTag = hasValidation
            ? `<div class="tag tag-ok">✅ Documentado</div>`
            : `<div class="tag tag-warn">⚠️ Pendiente</div>`;

        // Icon Resolution
        const meta = SYSTEM_METADATA[sysKey] || { icon: '⚙️', label: entry.originalLabel };

        const isDeleted = entry.status === 'Eliminado';
        const opacity = isDeleted ? '0.5' : '1';

        // Pass the resolved Validation Key or the System Code
        const modalKey = valKey || sysKey;

        html += `
        <tr onclick="openValidationModal('${modalKey}')" style="opacity:${opacity}; cursor:pointer;">
            <td>
                <div style="display:flex; align-items:center; gap:10px;">
                    <span style="font-size:1.5rem; background:#eff6ff; padding:8px; border-radius:8px;">${meta.icon}</span>
                    <div>
                        <div style="font-weight:700; color:var(--primary);">${entry.originalLabel}</div>
                        <small style="color:var(--text-light)">${entry.status || 'Activo'}</small>
                    </div>
                </div>
            </td>
            <td>
                <span style="font-size:1.1rem; font-weight:700;">${entry.qty}</span>
            </td>
            <td>
                <div style="color:var(--text-main); font-size:0.9rem;">${hasValidation ? 'Ver Expediente Completo' : 'Sin validación cargada'}</div>
            </td>
            <td>
                ${statusTag}
            </td>
            <td style="text-align:right;">
                <span class="expand-hint">Abrir ↗</span>
            </td>
        </tr>
        `;
    });

    tbody.innerHTML = html;
}

function openValidationModal(sysKey) {
    // 1. Find Data (Validation Content)
    const valData = (window.validacionesData && window.validacionesData[sysKey]) ? window.validacionesData[sysKey] : null;

    // 2. Find Metadata (Master Data Summary)
    const md = (typeof window.tm01MasterData !== 'undefined') ? window.tm01MasterData : { data: {} };
    // Try to find the MD entry that matches this key
    const summaryEntry = Object.values(md.data).find(v => (v.sistema && v.sistema.toUpperCase().includes(sysKey.toUpperCase())));

    // 3. Set Header Info
    const titleEl = document.getElementById('mTitle');
    const systemName = summaryEntry ? summaryEntry.sistema : sysKey;
    titleEl.innerHTML = `📄 ${systemName}`;

    // 4. Render Content
    const bodyContainer = document.querySelector('.modal-body');

    if (valData) {
        // Render Markdown content
        const markdownContent = valData.full || valData.contractual || "## Sin contenido detallado.";
        const renderedHtml = kramed(markdownContent);

        bodyContainer.innerHTML = `
            <div class="full-doc-view" style="padding: 24px; background: #fff;">
                <div style="background: #f0fdf4; border: 1px solid #bbf7d0; color: #166534; padding: 12px; border-radius: 6px; margin-bottom: 24px; font-size: 13px;">
                    <strong>✅ Documento de Validación Oficial</strong><br>
                    Mostrando expediente completo unificado.
                </div>
                <div class="markdown-body">
                    ${renderedHtml}
                </div>
            </div>
        `;
    } else {
        // Fallback for missing data
        bodyContainer.innerHTML = `
            <div style="padding: 40px; text-align: center; color: #64748b;">
                <div style="font-size: 3rem; margin-bottom: 20px;">⚠️</div>
                <h3>Información de Validación No Disponible</h3>
                <p>No se encontró el archivo de validación para <strong>${sysKey}</strong>.</p>
                <br>
                <div style="text-align:left; background:#f8fafc; padding:20px; border-radius:8px; display:inline-block;">
                    <strong>Datos Maestros:</strong><br>
                    Cantidad: ${summaryEntry ? summaryEntry.cantidad : '-'}<br>
                    CAPEX: ${summaryEntry ? '$' + (summaryEntry.capexUSD || 0).toLocaleString() : '-'}<br>
                </div>
            </div>
        `;
    }

    // Show Overlay
    document.getElementById('modalOverlay').style.display = 'flex';
}

function closeModal() {
    document.getElementById('modalOverlay').style.display = 'none';
}
// Expose functions globally for HTML
window.renderValidationTable = renderValidationTable;
window.openValidationModal = openValidationModal;
window.closeModal = closeModal;
