// AUTO-GENERADO por scripts/generar_validaciones_modular.ps1
// NO EDITAR MANUALMENTE - Regenerar con el script
// Sistema: CCO
// Fecha de generación: 2026-01-29 15:40:15

const validaciones_CCO = {
  full: '## 📋 RESUMEN EJECUTIVO (HARD DECK)\n\n**Veredicto:** 🟢 **VALIDADO (OPTIMIZACIÓN MAYOR)**\n\nSe certifica el alcance del **Centro de Control de Operaciones (CCO)** bajo la nueva directriz de "Equipamiento Específico" (DT-TM01-CCO-019), rechazando el modelo anterior de "Solución Llave en Mano" que inflaba el costo.\n\n**Parámetros de Validación (Hard Deck):**\n1.  **Modelo de Compra:** Adquisición directa de Hardware (Servidores, Storage, Videowall) + Licencias. No "Cajas Negras".\n2.  **Optimización:** Eliminación de duplicidad en Video Central (VMS). El almacenamiento se maneja con cabinas iSCSI estándar, no con NVRs propietarios costosos.\n3.  **Ubicación:** Edificio Administrativo (Cuarto Técnico + Sala Operación).\n\n**CAPEX Validado:** **$425,000 USD** (Ahorro neto de **$1,964,000 USD** vs estimación original de $2.4M).\n\n---',
  contractual: '## 1. FUNDAMENTO CONTRACTUAL\n\n### 1.1 Obligación Central (AT1)\n**Fuente:** Apéndice Técnico 1, Numeral 3.\n*   **Texto:** "El Concesionario deberá proveer... un Centro de Control de Operaciones (CCO)... que centralice la información de los subsistemas".\n*   **Interpretación:** La obligación es **funcional** (centralizar y visualizar). No obliga a contratar "Suites Enterprise" ni marcas específicas. La propuesta de Hardware COTS (Commercial Off-The-Shelf) cumple legalmente.\n\n### 1.2 "Hard Deck" de Obra Civil (AT1 3.1)\n**Ubicación Inmutable:** La Lizama PK 4+300 RN 4513. Se debe **adecuar la estructura existente**.\n**Áreas Mínimas Obligatorias (>400 m² Construidos + ~400 m² Parqueo):**\n*   **Oficina ANI/Interventoría:** 50 m² (CRÍTICO: Acceso Independiente + Terminal Espejo).\n*   **Oficina Policía:** 50 m² (Uso exclusivo).\n*   **Cafetería Pública:** 100 m² (Zona usuarios vía -> Clasifica como "Alta Afluencia" RETIE).\n*   **Sala de Control:** 16 m² (Mínimo, recomendamos 40 m² para Videowall + 4 Consolas).\n*   **Parqueo Visitantes:** 36 espacios de 11 m² c/u (Impacto Urbanístico masivo).\n*   **Impacto:** Si la edificación actual no tiene estas áreas, se **DEBE AMPLIAR**. No es una simple remodelación cosmética.\n\n---',
  technical: '',
  financial: '## 💰 ANÁLISIS FINANCIERO (HARDWARE + OBRA CIVIL)\n\n### 3.1 Presupuesto Validado (DT-TM01-CCO-019 + Civil)\nEl ahorro en servidores ($1.9M) permite cubrir la **Obra Civil Pesada** que se había subestimado.\n\n| Ítem | Componente | Costo Estimado (USD) | Nota Validada |\n|:-----|:-----------|:---------------------|:--------------|\n| **1** | **Equipamiento IT (Hardware)** | **$425,000** | DT-019 (Servidores, Storage, Video) |\n| **2** | **Adecuación Civil (>400m²)** | **$250,000** | Remodelación + Ampliación La Lizama |\n| **3** | **Sistema Eléctrico (Potencia)** | **$120,000** | Planta, UPS, Tableros, RETIE |\n| **4** | **Mobiliario Técnico** | **$50,000** | Consolas y sillas 24/7 |\n| **TOTAL** | **CCO INTEGRAL** | **$845,000** | **Realista y Cumple AT1** |\n\n**Nota:** Aunque sube vs la lista de solo hardware ($425k), sigue generando un ahorro masivo frente a los $2.4M originales, cubriendo los riesgos civiles y eléctricos.\n\n---',
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
