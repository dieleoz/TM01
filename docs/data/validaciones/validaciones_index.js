/**
 * Índice de Validaciones Modulares - TM01
 * Generado automáticamente por generar_validaciones_modular.ps1
 * Fecha: 2026-01-29 08:10:25
 *
 * NO EDITAR MANUALMENTE - Este archivo se regenera automáticamente
 */

const validacionesIndex = {
  generatedAt: '2026-01-29 08:10:25',
  systems: [    'CCO',
    'CCTV',
    'ENERGIA',
    'FIBRA',
    'GALIBOS',
    'METEO',
    'PEAJE',
    'PMV',
    'RADIO',
    'SENALIZACION',
    'SOS',
    'SWITCHES',
    'WIM',
  ],
  getSystem: function(name) {
    return window.validacionesModular ? window.validacionesModular[name] : null;
  }
};

// Exponer al objeto window
if (typeof window !== 'undefined') {
  window.validacionesIndex = validacionesIndex;
}
