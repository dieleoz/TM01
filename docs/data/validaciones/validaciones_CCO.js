// AUTO-GENERADO por scripts/generar_validaciones_modular.ps1
// NO EDITAR MANUALMENTE - Regenerar con el script
// Sistema: CCO
// Fecha de generación: 2026-01-29 14:30:50

const validaciones_CCO = {
  full: '## 📋 RESUMEN EJECUTIVO (HARD DECK)\n\n**Veredicto:** 🟢 **VALIDADO (OPTIMIZACIÓN MAYOR)**\n\nSe certifica el alcance del **Centro de Control de Operaciones (CCO)** bajo la nueva directriz de "Equipamiento Específico" (DT-TM01-CCO-019), rechazando el modelo anterior de "Solución Llave en Mano" que inflaba el costo.\n\n**Parámetros de Validación (Hard Deck):**\n1.  **Modelo de Compra:** Adquisición directa de Hardware (Servidores, Storage, Videowall) + Licencias. No "Cajas Negras".\n2.  **Optimización:** Eliminación de duplicidad en Video Central (VMS). El almacenamiento se maneja con cabinas iSCSI estándar, no con NVRs propietarios costosos.\n3.  **Ubicación:** Edificio Administrativo (Cuarto Técnico + Sala Operación).\n\n**CAPEX Validado:** **$425,000 USD** (Ahorro neto de **$1,964,000 USD** vs estimación original de $2.4M).\n\n---',
  contractual: '## 1. FUNDAMENTO CONTRACTUAL\n\n### 1.1 Obligación Central (AT1)\n**Fuente:** Apéndice Técnico 1, Numeral 3.\n*   **Texto:** "El Concesionario deberá proveer... un Centro de Control de Operaciones (CCO)... que centralice la información de los subsistemas".\n*   **Interpretación:** La obligación es **funcional** (centralizar y visualizar). No obliga a contratar "Suites Enterprise" ni marcas específicas. La propuesta de Hardware COTS (Commercial Off-The-Shelf) cumple legalmente.\n\n### 1.2 Justificación de la Reducción (Forensic)\nEl presupuesto anterior ($2.38M) asumía un costo de "Obra Civil Video" y "Licenciamiento Enterprise" desproporcionado.\n*   **Corrección:** El Hardware ofertado (Servidores Dell/HP, Storage iSCSI, Videowall 4x2) es suficiente para procesar las 100 cámaras y los datos SCADA del proyecto, según las cargas validadas en CCO v1.0.\n\n---',
  technical: '',
  financial: '## 💰 ANÁLISIS FINANCIERO\n\n### Presupuesto Validado (DT-TM01-CCO-019)\n\n| Ítem | Descripción | Cantidad | Total Estimado (USD) |\n|:-----|:------------|:---------|:---------------------|\n| **1** | **Servidores (SCADA + Apps)** | 3 | $68,429 |\n| **2** | **Almacenamiento (iSCSI + Backup)** | 2 | $69,733 |\n| **3** | **Video (Grabadores + VMS)** | Global | $23,458 |\n| **4** | **Visualización (Videowall + Ctrl)** | 1 | $14,238 |\n| **5** | **Licenciamiento y Virtualización** | Global | $150,000 |\n| **6** | **Mobiliario Técnico + Estaciones** | Global | $99,142 |\n| **TOTAL** | **CCO (HARDWARE + SOFT)** | | **$425,000** |\n\n**Nota de Validación:** Este presupuesto se alinea con precios de mercado para infraestructura IT de rango medio-alto, adecuada para una concesión de esta envergadura.\n\n---',
  risks: '## ⚠️ MATRIZ DE RIESGOS\n\n1.  **Integración de Subsistemas:**\n    *   *Riesgo:* Que el software SCADA no "hable" con los PMV o SOS de terceros.\n    *   *Mitigación:* Exigir protocolos estándar (ONVIF para video, NTCIP para PMV, SIP para SOS) en todos los subsistemas periféricos.\n2.  **Ciberseguridad:**\n    *   *Riesgo:* Ataque al servidor central.\n    *   *Mitigación:* Firewall perimetral físico (no incluido en esta lista, debe estar en Networking) y segmentación de VLANs (Red Operativa vs Red Administrativa).\n\n---\n\n**Estado:** ✅ VALIDADO (OPTIMIZADO)  \n**Firma:** Consultoría Forense de Sistemas ITS'
};

// Exportar para uso en módulos
if (typeof module !== 'undefined' && module.exports) {
  module.exports = validaciones_CCO;
}

// Exponer al objeto window para uso en navegador
if (typeof window !== 'undefined') {
  window.validaciones_CCO = validaciones_CCO;
}
