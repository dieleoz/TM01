/**
 * presupuesto-calcs.js
 * Funciones de cálculo para WBS Presupuestal TM01
 * Extraído y refactorizado de presupuesto.html
 */

/**
 * Convierte un valor a número, eliminando caracteres no numéricos
 * @param {*} val - Valor a convertir
 * @returns {number} - Número parseado o 0 si es inválido
 */
function num(val) {
    const n = parseFloat(String(val ?? '').toString().replace(/[^0-9.\-]/g, ''));
    return isNaN(n) ? 0 : n;
}

/**
 * Formatea un número como moneda (USD o COP)
 * @param {number} n - Número a formatear
 * @param {string} curr - Moneda ('USD' o 'COP')
 * @returns {string} - Número formateado
 */
function fm(n, curr) {
    if (curr === 'USD') {
        return new Intl.NumberFormat('en-US', {
            style: 'currency',
            currency: 'USD',
            maximumFractionDigits: 0
        }).format(n);
    }
    return new Intl.NumberFormat('es-CO', {
        style: 'currency',
        currency: 'COP',
        maximumFractionDigits: 0
    }).format(n);
}

/**
 * Infiere el tipo presupuestal de un ítem (SUMINISTRO, OBRA, SERVICIO)
 * @param {Object} item - Ítem WBS
 * @returns {string} - Tipo presupuestal
 */
function inferTipoPresupuestal(item) {
    const desc = (item.descripcion || '').toLowerCase();

    // Override por item si existe (el consultor puede definirlo antes de cargar la página)
    if (window && window.TM01_TIPO_ÍTEM && window.TM01_TIPO_ÍTEM[item.item]) {
        return window.TM01_TIPO_ÍTEM[item.item];
    }

    // Prioridad si viene desde datos
    if (item.tipo_presupuesto) return item.tipo_presupuesto;

    // Señales claras de suministro
    const esSuministroExplicito = /(\bsuministro\b|\bsuministros\b)/.test(desc);

    // Palabras clave de OBRA CIVIL (instalaciones, obra física, civil y montaje)
    const obraRe = /(instalaci[oó]n|tendido|hincado|zanja|excavaci[oó]n|canalizaci[oó]n|ducto|obra civil|\bobra\b|poste|postes|torre|torres|cimentaci[oó]n|fundaci[oó]n|concreto|anclaje|anclajes|soporte de montaje|montaje|tuber[ií]a|canaleta|bandeja|puesta a tierra|adecuaci[oó]n|soldadur|levante|elevaci[oó]n|demolici[oó]n|vaciado|zapata|plataforma|pavimento|relleno|corte|trinchera|estructura)/;

    // Palabras clave de SERVICIOS (sin obra física)
    const servRe = /(capacitaci[oó]n|documentaci[oó]n|pruebas|\bfat\b|\bsat\b|comisionamiento|mantenimiento|soporte|dise[nñ]o|ingenier[ií]a|configuraci[oó]n|licencia|servicio\b|servicios\b|asesor[ií]a|interventor[ií]a)/;

    // Unidades típicas de obra (indicador adicional)
    const unidad = (item.unidad || '').toLowerCase();
    const unidadObra = /(km|\bml\b|\bm\b|m2|m3|m\^2|m\^3|glb\b)/.test(unidad);

    // Si menciona instalación/obra física, clasificar como OBRA
    if (obraRe.test(desc) || unidadObra) {
        // Evitar falsos positivos donde solo dice "suministro" sin instalación
        if (esSuministroExplicito && !/instalaci[oó]n|montaje|obra/.test(desc)) {
            return 'SUMINISTRO';
        }
        return 'OBRA';
    }

    // Si son servicios profesionales / pruebas / comisionamiento
    if (servRe.test(desc)) return 'SERVICIO';

    // Señales de precios finales (no agregar AIU/IVA)
    if (/validado|consolidado|global|certificado/.test(desc)) return 'CONSOLIDADO';

    // Caso por defecto
    return 'SUMINISTRO';
}

/**
 * Obtiene nombres legibles de capítulos desde datos WBS
 * @param {Array} all - Todos los ítems WBS
 * @returns {Object} - Mapa de capítulo a nombre
 */
function getChapterNamesFromWBS(all) {
    const names = {};

    // Permitir overrides externos opcionales
    const overrides = (window && window.TM01_CAPÍTULO_NOMBRES) ? window.TM01_CAPÍTULO_NOMBRES : {};

    // Mapeo legible por defecto (fallback)
    const defaults = {
        '1': '1. CONTROL Y SEÑALIZACIÓN VIRTUAL',
        '2': '2. TELECOMUNICACIONES COLOCALIZADAS',
        '3': '3. SISTEMAS ITS Y SEGURIDAD',
        '4': '4. PASOS A NIVEL',
        '5': '5. CENTRO DE CONTROL OPERACIONAL',
        '6': '6. MATERIAL RODANTE'
    };

    // Inicializar capítulos presentes
    all.forEach(i => {
        const cap = String((i.item || '').split('.')[0] || '').trim();
        if (!cap) return;
        if (!names[cap]) names[cap] = cap; // placeholder
    });

    // Enriquecer con ítems de nivel 1 (capítulos) cuando existan
    const level1 = all.filter(i => (i.nivel === 1 || (i.item && i.item.indexOf('.') === -1)) && i.descripcion);
    level1.forEach(i => {
        const cap = String(i.item || '').split('.')[0];
        if (cap) names[cap] = `${cap}. ${i.descripcion}`;
    });

    // Si no hay nivel 1, derivar por sistema predominante dentro del capítulo
    Object.keys(names).forEach(cap => {
        if (overrides[cap]) { names[cap] = `${cap}. ${overrides[cap]}`; return; }
        if (names[cap] !== cap) return; // ya definido por nivel 1

        // Buscar items del capítulo y contar sistemas
        const itemsCap = all.filter(i => String((i.item || '').split('.')[0]) === cap);
        const freq = {};
        itemsCap.forEach(i => {
            const s = (i.sistema || '').trim();
            if (!s) return;
            freq[s] = (freq[s] || 0) + 1;
        });
        const dominante = Object.keys(freq).sort((a, b) => freq[b] - freq[a])[0];
        if (dominante) {
            names[cap] = `${cap}. ${dominante}`;
        } else {
            names[cap] = defaults[cap] || `Capítulo ${cap}`;
        }
    });

    return names;
}

/**
 * Calcula AIU e IVA para los datos presupuestales
 * ⚠️ CORRECCIÓN DE BUG: totalObraCivil NO incluye AIU (viene directo de T05)
 * 
 * @param {Array} data - Array de ítems presupuestales
 * @returns {Object} - Objeto con costoDirecto, aiu, iva, total, subtotales
 */
function calcularAIUIVA(data) {
    // Suma por capítulo y por tipo SUM/OBRA/SERV
    const subtotales = {}; // { cap: { SUMINISTRO, OBRA, SERVICIO, CONSOLIDADO } }
    let totalSuministros = 0, totalObraCivil = 0, totalServicios = 0, totalConsolidado = 0;

    data.forEach(i => {
        const cap = String((i.item || '').split('.')[0] || '').trim() || 'OTROS';
        if (!subtotales[cap]) subtotales[cap] = { SUMINISTRO: 0, OBRA: 0, SERVICIO: 0, CONSOLIDADO: 0 };

        const cantidad = num(i.cantidad);
        const totalCOP = num(i.totalCOP) || (cantidad * num(i.vuCOP));
        const tipo = i.tipo_presupuesto || i._tipoCalc || inferTipoPresupuestal(i);

        if (subtotales[cap][tipo] !== undefined) {
            subtotales[cap][tipo] += totalCOP;
        } else {
            subtotales[cap]['SUMINISTRO'] += totalCOP;
        }

        if (tipo === 'SUMINISTRO') totalSuministros += totalCOP;
        else if (tipo === 'OBRA') totalObraCivil += totalCOP;
        else if (tipo === 'SERVICIO') totalServicios += totalCOP;
        else if (tipo === 'CONSOLIDADO' || tipo === 'VALIDADO') totalConsolidado += totalCOP;
    });

    // Cálculos
    // Suministros y servicios vienen con IVA 19%
    const baseSum = totalSuministros / 1.19;
    const baseServ = totalServicios / 1.19;
    const baseObra = totalObraCivil; // Obra civil viene pura, se le agrega 33% AIU

    const aiu = baseObra * 0.33;
    const ivaSum = totalSuministros - baseSum;
    const ivaServ = totalServicios - baseServ;
    const ivaUtil = baseObra * 0.05 * 0.19;
    const iva = ivaSum + ivaServ + ivaUtil;

    // El consolidado NO se le agrega nada, ya es el valor final.
    const total = totalSuministros + totalServicios + totalObraCivil + aiu + iva + totalConsolidado;
    const costoDirecto = baseSum + baseServ + baseObra + totalConsolidado;

    return {
        costoDirecto,
        aiu,
        iva,
        total,
        totalSuministros,
        totalObraCivil,
        totalServicios,
        subtotales
    };
}
