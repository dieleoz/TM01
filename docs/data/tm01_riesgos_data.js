/**
 * DATOS DE RIESGOS - TM01 TRONCAL MAGDALENA
 * Metodología .42 - Gestión de Riesgos
 * Fecha: 2025-12-12
 */

const tm01RiesgosData = {
    version: "1.0",
    fechaActualizacion: "2025-12-12",
    matrizConfig: {
        probabilidad: [1, 2, 3, 4, 5],
        impacto: [1, 2, 3, 4, 5],
        niveles: {
            ALTO: { min: 16, color: 'R' },
            MEDIO: { min: 9, color: 'M' },
            BAJO: { min: 1, color: 'B' }
        }
    },
    riesgos: [
        {
            id: 'R01',
            titulo: 'Interoperabilidad con terceros',
            categoria: 'Integración',
            prob: 4,
            imp: 5,
            estado: 'ABIERTO',
            mitigacion: 'Pruebas conjuntas y protocolos estándar (NTCIP/ONVIF) definidos en T04.'
        },
        {
            id: 'R02',
            titulo: 'Disponibilidad fibra óptica',
            categoria: 'Suministro',
            prob: 3,
            imp: 4,
            estado: 'ABIERTO',
            mitigacion: 'Contratos marco con proveedores y stock de seguridad del 10%.'
        },
        {
            id: 'R03',
            titulo: 'Retrasos obra civil',
            categoria: 'Ejecución',
            prob: 3,
            imp: 3,
            estado: 'ABIERTO',
            mitigacion: 'Plan de contingencia y frentes paralelos de trabajo.'
        },
        {
            id: 'R04',
            titulo: 'Permisos ambientales',
            categoria: 'Permisos',
            prob: 2,
            imp: 4,
            estado: 'CERRADO',
            mitigacion: 'Gestión temprana con autoridades y matriz de requisitos legales.'
        },
        {
            id: 'R05',
            titulo: 'Seguridad física equipos',
            categoria: 'Operación',
            prob: 2,
            imp: 3,
            estado: 'ABIERTO',
            mitigacion: 'Diseño anti-vandálico, sensores de apertura y monitoreo remoto.'
        },
        {
            id: 'R06',
            titulo: 'Cambios alcance Peajes',
            categoria: 'Alcance',
            prob: 5,
            imp: 4,
            estado: 'MITIGADO',
            mitigacion: 'Implementación de DT-TM01-PEAJES-019 para ajustar presupuesto y cantidades reales.'
        },
        {
            id: 'R07',
            titulo: 'Fluctuación TRM',
            categoria: 'Financiero',
            prob: 4,
            imp: 4,
            estado: 'ABIERTO',
            mitigacion: 'Compras anticipadas de equipos importados clave (CCTV, Radares).'
        }
    ]
};

// Exportación universal
if (typeof module !== 'undefined' && module.exports) {
    module.exports = tm01RiesgosData;
} else {
    window.TM01_RIESGOS_DATA = tm01RiesgosData;
}
