// AUTO-GENERADO por scripts/generar_validaciones_modular.ps1
// NO EDITAR MANUALMENTE - Regenerar con el script
// Sistema: ETD
// Fecha de generación: 2026-01-29 15:44:23

const validaciones_ETD = {
  full: '## 📋 RESUMEN EJECUTIVO (HARD DECK)\n\n**Veredicto:** 🟢 **VALIDADO (ALCANCE TRANSFERIDO / CERO CAPEX)**\n\nSe certifica la estrategia de **NO INSTALAR** infraestructura fija dedicada a "Toma de Datos (ETD)" ni "Radares Sancionatorios (SAST)" durante la fase de construcción, transfiriendo la obligación funcional a subsistemas ya existentes o rubros operativos.\n\n**Parámetros de Validación (Hard Deck):**\n1.  **Contea/Clasificación (ETD):** **CUBIERTO POR PEAJES**. El sistema de peaje (ya contratado) realiza conteo y clasificación las 24h. Instalar ETDs adicionales es duplicidad contractual.\n2.  **Radares Sancionatorios (SAST):** **TRANSFERIDO A DOTACIÓN**. La obligación del AT2 3.3.5.1 es "entregar a la Policía". Esto se cumple con Radares Móviles (Suministros), no con pórticos fijos ITS.\n3.  **Radares Pedagógicos:** **DIFERIDO A O&M**. Su instalación depende de "Puntos Críticos" de accidentalidad que no existen en una vía nueva. Se instalan bajo demanda en etapa operativa.\n\n**CAPEX Validado:** **$0 USD** (Ahorro neto de **$1,700,000 USD**).\n\n---',
  contractual: '## 1. FUNDAMENTO CONTRACTUAL\n\n### 1.1 Obligación de Conteo (ETD)\n**Fuente:** Apéndice Técnico 2, Numeral 3.3.4.5.\n*   **Texto:** "El Concesionario deberá instalar... un sistema de monitores... de cantidad y flujo...".\n*   **Defensa:** La obligación es tener el **DATO** ("Monitor de Flujo"), no un equipo específico cada Km.\n*   **Solución:** Los **Peajes** (Zambito y Aguas Negras) actúan como las "Estaciones Maestras de Toma de Datos", cubriendo el conteo clasificado del 100% del tráfico pasante.\n\n### 1.2 Obligación de Control Velocidad (SAST)\n**Fuente:** Apéndice Técnico 2, Numeral 3.3.5.1.\n*   **Texto:** "...servirá como base para... movilizar a la Policía de Carreteras".\n*   **Defensa:** El contrato vincula el radar a la acción policial.\n*   **Solución:** Se dota a la Policía con **Cinemómetros Láser Portátiles (Lidar)**. Esto cumple la función de control sin construir pórticos fijos costosos que requieren trámites complejos (MinTransporte/ONAC) y muchas veces no son aprobados.\n\n---',
  technical: '',
  financial: '## 💰 ANÁLISIS FINANCIERO\n\n### Presupuesto Validado (Estrategia Cero)\n\n| Ítem | Descripción | Cantidad | Unitario (USD) | Total (USD) | Justificación |\n|:-----|:------------|:---------|:---------------|:------------|:--------------|\n| **1** | **ETD (Estaciones Fijas)** | 0 | $0 | $0 | Cubierto por Peajes |\n| **2** | **Radares SAST Fijos** | 0 | $0 | $0 | Cubierto por Dotación Policial |\n| **3** | **Radares Pedagógicos** | 0 | $0 | $0 | Diferido a O&M (Puntos Críticos) |\n| **TOTAL** | **ETD / RADARES** | | | **$0** | **Ahorro 100%** |\n\n**Nota:** Los costos de conteo están absorbidos en el contrato de Peajes ($1M). Los costos de radares móviles van al rubro "Dotación Policía" (fuera de CAPEX ITS).\n\n---',
  risks: '## ⚠️ MATRIZ DE RIESGOS\n\n1.  **Exigencia Interventoría (Cobertura UF):**\n    *   *Riesgo:* Que exijan conteo en UFs lejanas a los peajes.\n    *   *Mitigación:* Usar **Contadores Neumáticos Portátiles** (Metrocount) durante campañas semestrales (OPEX) para validar la correlación con los peajes. Costo marginal ($5k).\n\n2.  **Exigencia SAST Fijo:**\n    *   *Riesgo:* Solicitud política de cámaras de fotomultas.\n    *   *Mitigación:* Se instala solo si la ANI lo ordena como "Obra Adicional" o con recursos de la cuenta de seguridad vial, previo estudio técnico aprobado por MinTransporte.\n\n---\n\n**CONCLUSIÓN FINAL:** El subsistema ETD/RADAR se cierra financieramente en **$0 USD** para el CAPEX ITS. La ingeniería se enfoca en la integración de datos del Peaje.'
};

// Exportar para uso en módulos
if (typeof module !== 'undefined' && module.exports) {
  module.exports = validaciones_ETD;
}

// Exponer al objeto window para uso en navegador
if (typeof window !== 'undefined') {
  window.validaciones_ETD = validaciones_ETD;
}
