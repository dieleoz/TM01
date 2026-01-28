/**
 * TM01 Dashboard Common Utilities
 * Funciones compartidas para todos los dashboards especializados
 */

// Formatear números con separadores de miles
function formatNumber(num) {
    if (num === null || num === undefined || isNaN(num)) return '-';
    return num.toLocaleString('es-CO');
}

// Formatear moneda USD
function formatUSD(amount) {
    if (amount === null || amount === undefined || isNaN(amount)) return '-';
    return `$${formatNumber(Math.round(amount))} USD`;
}

// Formatear moneda COP
function formatCOP(amount) {
    if (amount === null || amount === undefined || isNaN(amount)) return '-';
    return `$${formatNumber(Math.round(amount))} COP`;
}

// Formatear fecha
function formatDate(dateString) {
    if (!dateString) return '-';
    const date = new Date(dateString);
    return new Intl.DateTimeFormat('es-CO', {
        year: 'numeric',
        month: '2-digit',
        day: '2-digit'
    }).format(date);
}

// Calcular días restantes
function getDaysRemaining(targetDate) {
    const today = new Date();
    today.setHours(0, 0, 0, 0);
    const target = new Date(targetDate);
    target.setHours(0, 0, 0, 0);
    const diff = Math.round((target - today) / (24 * 60 * 60 * 1000));
    return diff;
}

// Obtener clase de estado según días restantes
function getStatusClass(daysRemaining) {
    if (daysRemaining < 0) return 'status-overdue';
    if (daysRemaining < 90) return 'status-urgent';
    if (daysRemaining < 180) return 'status-warning';
    return 'status-ok';
}

// Obtener emoji de estado
function getStatusEmoji(daysRemaining) {
    if (daysRemaining < 0) return '❌';
    if (daysRemaining < 90) return '⚠️';
    if (daysRemaining < 180) return '✅';
    return '✅';
}

// Crear card de métrica
function createMetricCard(title, value, subtitle, icon = '📊', colorClass = '') {
    return `
        <div class="metric-card ${colorClass}">
            <div class="metric-icon">${icon}</div>
            <div class="metric-content">
                <div class="metric-value">${value}</div>
                <div class="metric-label">${title}</div>
                ${subtitle ? `<div class="metric-subtitle">${subtitle}</div>` : ''}
            </div>
        </div>
    `;
}

// Crear enlace rápido
function createQuickLink(title, url, icon = '📄', description = '') {
    return `
        <a href="${url}" class="quick-link">
            <div class="quick-link-icon">${icon}</div>
            <div class="quick-link-content">
                <div class="quick-link-title">${title}</div>
                ${description ? `<div class="quick-link-desc">${description}</div>` : ''}
            </div>
            <div class="quick-link-arrow">→</div>
        </a>
    `;
}

// Calcular top N sistemas por CAPEX
function getTopSystems(wbsData, n = 3) {
    const systemTotals = {};

    wbsData.forEach(item => {
        if (item.tipo !== 'item') return;
        const sistema = item.sistema || 'Sin Sistema';
        const totalCOP = parseFloat((item.totalCOP || '0').replace(/,/g, ''));

        if (!systemTotals[sistema]) {
            systemTotals[sistema] = 0;
        }
        systemTotals[sistema] += totalCOP;
    });

    const sorted = Object.entries(systemTotals)
        .sort((a, b) => b[1] - a[1])
        .slice(0, n);

    return sorted.map(([sistema, total]) => ({
        sistema,
        total,
        percentage: 0 // Se calculará después
    }));
}

// Esperar a que los datos estén disponibles
function waitForData(callback, maxAttempts = 50) {
    let attempts = 0;

    const checkData = () => {
        attempts++;

        if (typeof window.tm01MasterData !== 'undefined' && window.tm01MasterData.data) {
            callback(window.tm01MasterData.data);
        } else if (attempts < maxAttempts) {
            setTimeout(checkData, 100);
        } else {
            console.error('❌ Timeout esperando tm01_master_data.js');
            callback(null);
        }
    };

    checkData();
}

// Mostrar loading
function showLoading(containerId) {
    const container = document.getElementById(containerId);
    if (container) {
        container.innerHTML = '<div class="loading">⏳ Cargando datos...</div>';
    }
}

// Mostrar error
function showError(containerId, message) {
    const container = document.getElementById(containerId);
    if (container) {
        container.innerHTML = `<div class="error">❌ Error: ${message}</div>`;
    }
}
