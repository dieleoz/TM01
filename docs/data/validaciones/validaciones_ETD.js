// AUTO-GENERADO por scripts/generar_validaciones_modular.ps1
// NO EDITAR MANUALMENTE - Regenerar con el script
// Sistema: ETD
// Fecha de generación: 2026-01-29 16:12:31

const validaciones_ETD = {
  full: '## 📋 RESUMEN EJECUTIVO (HARD DECK)\n\n**Veredicto:** 🟢 **VALIDADO (ESTRATEGIA SMART CAPEX)**\n\nEl documento es TÉCNICAMENTE VIABLE y CONTRACTUALMENTE SÓLIDO. La estrategia propuesta de unificar tecnologías (**Cámara ITS All-in-One**) y homologar los **Peajes como ETD Maestro** es la interpretación más eficiente del contrato, evitando la compra redundante de hardware.\n\n**Parámetros de Validación (Hard Deck):**\n1.  **Hardware Unificado:** **2 Cámaras Dahua ITC431-KW4F**. Integran Radar (60GHz), Video y ANPR. Cubren "Puntos Críticos".\n2.  **ETD Maestro:** Los **Peajes** (Zambito/Aguas Negras) proveen el dato "Duro" de conteo y clasificación para el corredor.\n3.  **Cobertura Virtual:** Se valida el uso de **APIs de Tráfico** (Waze/Google) para cumplir la obligación de "Información de Velocidad" en las UFs sin equipos físicos.\n4.  **CCTV como Sensor:** Se valida el uso de metadata de cámaras PTZ (Dahua series SD5A) para enriquecer la detección de incidentes.\n\n**CAPEX Validado:** **$22,500 USD** (2 Sitios All-in-One + Integración de Datos Software).\n\n---',
  contractual: '## 1. FUNDAMENTO CONTRACTUAL\n\n### 1.1 Obligación de Conteo (ETD)\n**Fuente:** Apéndice Técnico 2, Numeral 3.3.4.5.\n*   **Texto:** "El Concesionario deberá instalar... un sistema de monitores... de cantidad y flujo...".\n*   **Defensa:** La obligación es tener el **DATO** ("Monitor de Flujo"), no un equipo específico cada Km.\n*   **Solución:** Los **Peajes** (Zambito y Aguas Negras) actúan como las "Estaciones Maestras de Toma de Datos", cubriendo el conteo clasificado del 100% del tráfico pasante.\n\n### 1.2 Solución Técnica "Todo en Uno"\n**Fuente:** Ficha Técnica Dahua ITC Series (Usuario).\n*   **Capacidad:** El equipo integra microondas (Radar) y video en una sola carcasa IP67.\n*   **Eficiencia:** Reemplaza la necesidad de tener 1 ETD + 1 Radar + 1 Cámara LPR por separado.\n*   **Cumplimiento:** Cubre la obligación de "Sistema de Monitores de Velocidad" y base para "Movilizar a la Policía" (AT2).\n\n---',
  technical: '',
  financial: '## 💰 ANÁLISIS FINANCIERO\n\n### Presupuesto Validado (Dahua All-in-One)\n\n| Ítem | Descripción | Cantidad | Unitario (USD) | Total (USD) | Notas |\n|:-----|:------------|:---------|:---------------|:------------|:------|\n| **1** | **Kit Dahua ITC All-in-One** | 2 | $3,500 | $7,000 | Cam ITC431 + Flash + Switch + Brazo |\n| *1.1* | *Cámara ITC431 Radar/ANPR* | *2* | *$1,427* | *(Incluido)* | ref. Cotización |\n| *1.2* | *Iluminador IR/White* | *2* | *$1,169* | *(Incluido)* | ref. Cotización |\n| *1.3* | *Switch Industrial PoE* | *2* | *$324* | *(Incluido)* | ref. Cotización |\n| **2** | **Software Central (DSS Pro)** | 1 | $11,500 | $11,500 | Base + Licencias Video/ANPR |\n| **3** | **Obra Civil/Montaje (Pórtico/Poste)** | 2 | $2,000 | $4,000 | Acometidas y Poste |\n| **TOTAL** | **ETD / RADARES** | | | **$22,500** | **Solución Completa** |\n\n**Nota de Validación:** Se toma la cotización del proveedor (Dahua) como "Fuente de Verdad" financiera. El Hardware centraliza todas las funciones ITS de tráfico.\n\n---',
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
