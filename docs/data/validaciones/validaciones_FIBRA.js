// AUTO-GENERADO por scripts/generar_validaciones_modular.ps1
// NO EDITAR MANUALMENTE - Regenerar con el script
// Sistema: FIBRA
// Fecha de generación: 2026-01-29 14:56:59

const validaciones_FIBRA = {
  full: '## 📋 RESUMEN EJECUTIVO (HARD DECK)\n\n**Veredicto:** 🟢 **VALIDADO (ALCANCE FÍSICO)**\n\nSe certifica el alcance del **Backbone de Comunicaciones** necesario para integrar los 6 Subsistemas ITS (CCTV, SOS, PMV, Peajes, WIM, Radio).\n\n**Parámetros de Validación (Hard Deck):**\n1.  **Longitud Física:** **322 km de CABLE** (293 km Corredor + 10% Holgura/Reservas).\n2.  **Capacidad:** **48 Hilos Monomodo** (G.652.D).\n3.  **Unidad de Control:** **Metro Lineal de CABLE (ML-C)**. Se prohíbe terminantemente cotizar o pagar por "km-hilo" o "km-par", práctica que infla el presupuesto en 48x.\n\n**CAPEX Validado:** **$7,980,000 USD** (Incluye Obra Civil Pesada: Tritubo, Cámaras 80x80, Cruces Subfluviales).\n\n---',
  contractual: '## 1. FUNDAMENTO CONTRACTUAL\n\n### 1.1 Obligación de Conectividad (AT1)\n**Fuente:** Apéndice Técnico 1, Alcance General.\n*   **Requisito:** "Interconexión de todos los elementos del sistema ITS con el Centro de Control de Operaciones (CCO)".\n*   **Interpretación:** La única tecnología viable para 293 km de transmisión de video HD (CCTV) y datos críticos (Peaje) es la **Fibra Óptica**. Enlaces de radio no garantizan el ancho de banda ni la estabilidad requerida.\n\n### 1.2 Aclaración Forense #1: "322 km"\n**Fuente:** Nota Técnica Aclaratoria 322KM.\n*   **Confusión:** Riesgo de interpretar 322 km como suma de hilos.\n*   **Dictamen:** Los 322 km corresponden a la **Zanja/Tendido Físico**.\n    *   Corredor: 293 km.\n    *   Reservas Técnicas (Bucles): 29 km (10%).\n    *   **Total Cable:** 322 km.\n\n---',
  technical: '',
  financial: '## 💰 ANÁLISIS FINANCIERO\n\n### Presupuesto Consolidado (Civil + Pasiva)\n\n| Ítem | Descripción | Cantidad (km) | Unitario (USD/km) | Total (USD) | Notas |\n|:-----|:------------|:--------------|:------------------|:------------|:------|\n| **1** | **Suministro Cable FO 48H** | 322 | $3,500 | $1,127,000 | Material |\n| **2** | **Obra Civil (Tritubo+Zanja)** | 293 | $20,000 | $5,860,000 | Excavación en zona blanda/dura |\n| **3** | **Instalación y Empalmería** | 322 | $2,000 | $644,000 | Mano de obra especializada |\n| **4** | **Accesorios (Cámaras/ODF)** | 1 (Glb) | $349,000 | $349,000 | Cajas de empalme, Racks |\n| **TOTAL** | **BACKBONE FIBRA** | | | **$7,980,000** | **$27k / km (Promedio)** |\n\n**Validación de Mercado:** El costo de $27k USD/km es consistente con proyectos viales 4G (Greenfield).\n**Nota de Compra:** La Orden de Compra debe decir explícitamente: *"Cable de Fibra Óptica Monomodo G.652.D, 48 Hilos, Dieléctrico"*. Cualquier desviación en hilos o metal es causal de rechazo.\n\n---',
  risks: '## ⚠️ MATRIZ DE RIESGOS\n\n1.  **Error de Unidad (Catastrófico):**\n    *   *Riesgo:* Cotizar "km de fibra" en lugar de "km de cable".\n    *   *Impacto:* Multiplica el costo de material por 48.\n    *   *Mitigación:* RFQ debe especificar "Bobinas de Cable de 48 hilos".\n2.  **Vandalismo/Cortes:**\n    *   *Riesgo:* Cortes de fibra por terceros.\n    *   *Mitigación:* Profundidad mínima 1.2m y cinta de señalización obligatoria. Cámaras de empalme con tapas de seguridad (bloqueo mecánico o lógico).\n\n---\n\n**Estado:** ✅ VALIDADO  \n**Firma:** Consultoría Forense de Sistemas ITS'
};

// Exportar para uso en módulos
if (typeof module !== 'undefined' && module.exports) {
  module.exports = validaciones_FIBRA;
}

// Exponer al objeto window para uso en navegador
if (typeof window !== 'undefined') {
  window.validaciones_FIBRA = validaciones_FIBRA;
}
