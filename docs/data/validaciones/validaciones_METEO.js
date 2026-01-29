// AUTO-GENERADO por scripts/generar_validaciones_modular.ps1
// NO EDITAR MANUALMENTE - Regenerar con el script
// Sistema: METEO
// Fecha de generación: 2026-01-29 15:02:34

const validaciones_METEO = {
  full: '## 📋 RESUMEN EJECUTIVO (HARD DECK)\n\n**Veredicto:** 🟢 **VALIDADO (OPTIMIZADO)**\n\nSe certifica el alcance del Subsistema de Meteorología basándose en la **Resolución IP/REV** y el **Apéndice Técnico 2**.\n\n**Parámetros de Validación (Hard Deck):**\n1.  **Cantidad Física:** **2 Estaciones Industriales**. Ubicación Mandatoria en Peajes (Zambito + Aguas Negras).\n2.  **CCO:** Alcance **Virtual**. La obligación es "Informar", se cumple centralizando datos de los peajes. No requiere estación física en el edificio.\n3.  **Sensor Crítico:** **Visibilidad (Visibilímetro)**. Obligatorio por Manual de Señalización 2024 (Neblina). Las estaciones básicas (tipo Davis comunal) NO CUMPLEN.\n\n**CAPEX Validado:** **$114,000 USD** (2 Estaciones Industriales + SW Integración).\n\n---',
  contractual: '## 1. FUNDAMENTO CONTRACTUAL\n\n### 1.1 Obligación IP/REV (Peajes)\n**Fuente:** Resolución 20213040035125 (IP/REV), Anexo Técnico.\n*   **Mandato:** "El Sistema ITS en las estaciones de peaje deberá disponer de sensores y equipos de monitoreo ambiental".\n*   **Interpretación:** La instalación física es **OBLIGATORIA** en cada peaje para la operación del recaudo y seguridad vial local.\n\n### 1.2 Obligación CCO (AT2)\n**Fuente:** AT2, Numeral 3.3.11.2.\n*   **Mandato:** "Información sobre las condiciones meteorológicas... en el Centro de Control de Operaciones".\n*   **Interpretación:** Es una obligación de **INFORMACIÓN**, no de INSTALACIÓN. El CCO recibe datos; no necesita un sensor en su techo si ya tiene cobertura en la vía.\n\n---',
  technical: '',
  financial: '## 💰 ANÁLISIS FINANCIERO\n\n### Presupuesto Validado (DT-TM01-METEO-001 v2.0)\n\n| Ítem | Descripción | Cantidad | Unitario (USD) | Total (USD) | Notas |\n|:-----|:------------|:---------|:---------------|:------------|:------|\n| **1** | **Estación Meteo Industrial** | 2 | $50,000 | $100,000 | Incluye Visibilímetro |\n| **2** | **Obra Civil/Montaje** | 2 | $2,000 | $4,000 | Mástiles Abatibles |\n| **3** | **Software Integración CCO** | 1 | $10,000 | $10,000 | Licencia + Config |\n| **TOTAL** | **METEOROLOGÍA** | | | **$114,000** | **$57k / Estación** |\n\n**Validación de Mercado:** El costo refleja equipos Tier-1 (Lufft/Vaisala) necesarios para certificación de neblina. Alternativas baratas (Davis) no pasan la interventoría por falta de sensor de visibilidad certificado.\n\n---',
  risks: '## ⚠️ MATRIZ DE RIESGOS\n\n1.  **Rechazo Interventoría (Sensor Niebla):**\n    *   *Riesgo:* Instalar estaciones sin medición de visibilidad (MOR).\n    *   *Impacto:* No Conformidad grave (Seguridad Vial).\n    *   *Mitigación:* Especificar "Visibilímetro óptico" en pliegos T05.\n2.  **Ubicación Peaje 2:**\n    *   *Riesgo:* Definición de coordenadas exacta.\n    *   *Mitigación:* Coordenadas validadas en DT-001 (Aguas Negras PK 80).\n\n---\n\n**Estado:** ✅ VALIDADO  \n**Firma:** Consultoría Forense de Sistemas ITS'
};

// Exportar para uso en módulos
if (typeof module !== 'undefined' && module.exports) {
  module.exports = validaciones_METEO;
}

// Exponer al objeto window para uso en navegador
if (typeof window !== 'undefined') {
  window.validaciones_METEO = validaciones_METEO;
}
