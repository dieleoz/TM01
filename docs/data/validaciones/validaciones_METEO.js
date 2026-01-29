// AUTO-GENERADO por scripts/generar_validaciones_modular.ps1
// NO EDITAR MANUALMENTE - Regenerar con el script
// Sistema: METEO
// Fecha de generación: 2026-01-29 15:40:15

const validaciones_METEO = {
  full: '## 📋 RESUMEN EJECUTIVO (HARD DECK)\n\n**Veredicto:** 🟢 **VALIDADO (OPTIMIZADO)**\n\nSe certifica el alcance del Subsistema de Meteorología basándose en la **Resolución IP/REV** y el **Apéndice Técnico 2**.\n\n**Parámetros de Validación (Hard Deck):**\n1.  **Cantidad Física:** **2 Estaciones Compactas (Tipo Davis)**. Ubicación Mandatoria en Peajes (Zambito + Aguas Negras).\n2.  **Sensor de Niebla:** **VIRTUALIZADO**. Se acoge a la cláusula contractual **"Se recomienda"** (No obligatorio). Se cumple con Webservice.\n3.  **Cobertura UF:** Se cumple mediante **Webservice Georreferenciado** integrado al SCADA, eliminando estaciones físicas en vía abierta.\n\n**CAPEX Validado:** **$16,500 USD** (Ahorro Masivo vs $114k con Visibilímetros).\n\n---',
  contractual: '## 1. FUNDAMENTO CONTRACTUAL\n\n### 1.1 Obligación IP/REV (Peajes)\n**Fuente:** Resolución 20213040035125 (IP/REV), Anexo Técnico.\n*   **Mandato:** "El Sistema ITS en las estaciones de peaje deberá disponer de sensores y equipos de monitoreo ambiental".\n*   **Interpretación:** La instalación física es **OBLIGATORIA** en cada peaje para la operación del recaudo y seguridad vial local.\n\n### 1.2 Obligación CCO (AT2)\n**Fuente:** AT2, Numeral 3.3.11.2.\n*   **Mandato:** "Información sobre las condiciones meteorológicas... en el Centro de Control de Operaciones".\n*   **Interpretación:** Es una obligación de **INFORMACIÓN**, no de INSTALACIÓN. El CCO recibe datos; no necesita un sensor en su techo si ya tiene cobertura en la vía.\n\n### 1.3 Exclusiones Contractuales (Blindaje Jurídico)\n*   **Estaciones de Pesaje (Básculas):** **EXCLUIDAS**.\n    *   *Fundamento:* El Numeral 3.3.9 del AT2 (Sistemas de Pesaje) NO lista equipos meteorológicos.\n    *   *Defensa:* La obligación de reporte es "por Unidad Funcional" (cubierta por los Peajes), no por "sitio de pesaje".\n*   **Torres SOS/Tramo:** **SUSTITUIDAS**.\n    *   *Estrategia:* Cobertura por "Unidad Funcional" usando la data de los Peajes. Se instala en vía solo si hay "Gaps" de cobertura (Microclimas) no cubiertos por los peajes.\n\n---',
  technical: '',
  financial: '## 💰 ANÁLISIS FINANCIERO\n\n### Presupuesto Validado (Hard Deck)\n\n| Ítem | Descripción | Cantidad | Unitario (USD) | Total (USD) |\n|:-----|:------------|:---------|:---------------|:------------|\n| **1** | **Estación Industrial Completa** | 2 | $51,000 | $102,000 |\n| *1.1* | *Unidad Base (Viento, Lluvia, Temp, Hum)* | *2* | *$3,000* | *(Incluido)* |\n| *1.2* | *Kit Solar 48h + Gabinete IP65* | *2* | *$8,000* | *(Incluido)* |\n| *1.3* | *Sensor Radiación (ETo/Sol)* | *2* | *$1,000* | *(Incluido)* |\n| *1.4* | *Sensor Visibilidad (Niebla)* | *2* | *$39,000* | *(Incluido)* |\n| **2** | **Obra Civil (Mástil Abatible)** | 2 | $2,000 | $4,000 |\n| **3** | **Integración SCADA (Driver CCO)** | 1 | $8,000 | $8,000 |\n| **TOTAL** | **METEOROLOGÍA** | | | **$114,000** |\n\n**Justificación Financiera:** El alto costo unitario ($51k) se deriva principalmente del **Sensor de Visibilidad Certificado** y la robustez industrial requerida para 10+ años. Intentar bajar este capex con estaciones "Hobby" implica incumplir el Manual de Señalización (Niebla).\n\n---',
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
