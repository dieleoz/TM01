// AUTO-GENERADO por scripts/generar_validaciones_modular.ps1
// NO EDITAR MANUALMENTE - Regenerar con el script
// Sistema: RADIO
// Fecha de generación: 2026-01-29 10:35:03

const validaciones_RADIO = {
  full: '## 📋 RESUMEN EJECUTIVO\n\n**Alcance Validado:**  \nEl sistema de **Radiocomunicación** (Voz Operativa) es una obligación contractual (AT1 Numeral 3) de cobertura total. Tras el análisis de "Cobertura Celular vs VHF", se valida una **Solución Híbrida** costo-efectiva que elimina la necesidad de una red VHF troncalizada obsoleta ($212k USD).\n\n**Estrategia Híbrida (Hard Deck):**\n1.  **Red Principal:** **PoC (Push-to-Talk over Cellular)** usando redes 4G/LTE de operadores existentes (Claro/Movistar).\n2.  **Red de Respaldo (Zonas Grises):** **VHF Digital (DMR)** solo en puntos críticos sin cobertura celular (Puntos ciegos).\n3.  **Equipos:** Radios Híbridos (LTE+VHF) para Operaciones y Auxilio Vial.\n\n**Diferenciación Crítica (No confundir):**\n*   **Radio FM (Difusión):** Eliminada (DT-TM01-002) -> Modelo OPEX (Convenios).\n*   **Radio VHF (Operativo):** Requerido (AT1) -> Modelo CAPEX Híbrido ($85k USD).\n\n**CAPEX Validado:** **$85,000 USD** (Ahorro vs $212k original).\n\n---',
  contractual: '## 1. FUNDAMENTO CONTRACTUAL\n\n### 1.1 Obligación de Comunicaciones (AT1)\n**Fuente:** AT1 Alcance General.\n*   **Texto:** "El Concesionario deberá proveer... radiocomunicación... asegurando la capacidad de intercomunicarse de forma inmediata y permanente".\n*   **Interpretación:** Obligación de **Resultado** (Comunicación Inmediata), no de **Tecnología** (VHF).\n*   **Viabilidad:** La tecnología PoC (PTT sobre Celular) cumple el requisito de inmediatez y cobertura donde hay red 4G.\n\n### 1.2 Riesgo de "Zonas Oscuras" (Puerto Salgar)\n*   **Problema:** El corredor tiene tramos de montaña con sombra celular (Puerto Salgar).\n*   **Solución Híbrida:** Se requiere **1 Repetidora VHF** en el punto alto para cubrir el hueco.\n*   **Integración Crítica (Gateway RoIP):** Para que el CCO hable con todos, es **MANDATORIO** instalar una Pasarela (Gateway) RoIP que inyecte el audio VHF a la red PoC. Sin esto, la operación se fragmenta.\n\n---',
  technical: '## 2. ESPECIFICACIONES TÉCNICAS (HARD DECK)\n\n### 2.1 Tecnología PoC (Principal)\n*   **Plataforma:** Servidor PTT dedicado (Wave, Zello Work, o propietario Motorola).\n*   **Terminales:** Radios IP robustos (IP67) con SIM Multi-operador.\n*   **Prioridad:** QCI (Quality Class Indicator) para priorizar voz sobre datos.\n\n### 2.2 Tecnología VHF (Respaldo)\n*   **Modo:** DMR Tier II (Digital).\n*   **Uso:** Talkaround (Directo) en zonas sin señal 4G.\n*   **Infraestructura:** 1 Repetidora VHF (Gap Filler) en Puerto Salgar + Gateway RoIP.\n\n---',
  financial: '## 💰 ANÁLISIS FINANCIERO\n\n### Presupuesto Reconciliado (Híbrido)\n\n| Ítem | Componente | Cantidad | Costo Unit. | Total (USD) |\n|:-----|:-----------|:---------|:------------|:------------|\n| **1. Terminales Híbridos** | Radios Portátiles LTE/VHF | 30 | $1,200 | $36,000 |\n| **2. Radios Móviles** | Vehiculares LTE/VHF | 25 | $800 | $20,000 |\n| **3. Consola Despacho** | Software CCO + Gateway RoIP | 1 | $5,000 | $5,000 |\n| **4. Infraestructura** | Repetidora VHF + Torre + RETIE | 1 | $15,000 | $15,000 |\n| **5. Licencias/Config** | Setup Inicial | 1 | $9,000 | $9,000 |\n| **TOTAL CAPEX RADIO** | **Solución Híbrida** | | | **$85,000** |\n\n**Ahorro Generado:** $212,500 (Base) - $85,000 (Híbrido) = **$127,500 USD**.\n\n---',
  risks: '## ⚠️ MATRIZ DE RIESGOS\n\n1.  **Caída de Red Celular:**\n    *   *Riesgo:* Pérdida de comunicación en gran escala.\n    *   *Mitigación:* SIM Multi-operador (Roaming nacional automático). En fallo total, uso de VHF modo directo (alcance 3-5km).\n2.  **Latencia PTT:**\n    *   *Riesgo:* Retraso en voz (>1s).\n    *   *Mitigación:* Servidores PTT alojados localmente o proveedores de baja latencia.\n\n---\n\n**Estado:** ✅ VALIDADO (SOLUCIÓN HÍBRIDA)  \n**Documento Fuente:** Análisis Cobertura v1.0'
};

// Exportar para uso en módulos
if (typeof module !== 'undefined' && module.exports) {
  module.exports = validaciones_RADIO;
}

// Exponer al objeto window para uso en navegador
if (typeof window !== 'undefined') {
  window.validaciones_RADIO = validaciones_RADIO;
}
