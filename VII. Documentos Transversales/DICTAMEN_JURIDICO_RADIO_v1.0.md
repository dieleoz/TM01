# DICTAMEN JURÍDICO-TÉCNICO: SISTEMA RADIOCOMUNICACIÓN (VHF/LTE)
## Proyecto TM01 Troncal Magdalena

**Versión:** 1.0 (FORENSIC AUDIT)  
**Fecha:** 29 de Enero 2026  
**Tipo de Análisis:** Jurídico-Técnico Integrado  
**Destinatario:** Gerencia de Proyecto + Abogado Contractual  
**Metodología:** Contract-First Architecture (Punto 42 v3.0)

---

<!-- SECCIÓN: full -->
## 📋 RESUMEN EJECUTIVO

**Alcance Validado:**  
El sistema de **Radiocomunicación** (Voz Operativa) es una obligación contractual (AT1 Numeral 3) de cobertura total. Tras el análisis de "Cobertura Celular vs VHF", se valida una **Solución Híbrida** costo-efectiva que elimina la necesidad de una red VHF troncalizada obsoleta ($212k USD).

**Estrategia Híbrida (Hard Deck):**
1.  **Red Principal:** **PoC (Push-to-Talk over Cellular)** usando redes 4G/LTE de operadores existentes (Claro/Movistar).
2.  **Red de Respaldo (Zonas Grises):** **VHF Digital (DMR)** solo en puntos críticos sin cobertura celular (Puntos ciegos).
3.  **Equipos:** Radios Híbridos (LTE+VHF) para Operaciones y Auxilio Vial.

**Diferenciación Crítica (No confundir):**
*   **Radio FM (Difusión):** Eliminada (DT-TM01-002) -> Modelo OPEX (Convenios).
*   **Radio VHF (Operativo):** Requerido (AT1) -> Modelo CAPEX Híbrido ($85k USD).

**CAPEX Validado:** **$85,000 USD** (Ahorro vs $212k original).

---

<!-- SECCIÓN: contractual -->
## 1. FUNDAMENTO CONTRACTUAL

### 1.1 Obligación de Comunicaciones (AT1)
**Fuente:** AT1 Alcance General.
*   **Texto:** "El Concesionario deberá proveer... radiocomunicación... asegurando la capacidad de intercomunicarse de forma inmediata y permanente".
*   **Interpretación:** Obligación de **Resultado** (Comunicación Inmediata), no de **Tecnología** (VHF).
*   **Viabilidad:** La tecnología PoC (PTT sobre Celular) cumple el requisito de inmediatez y cobertura donde hay red 4G.

### 1.2 Riesgo de "Zonas Oscuras"
*   **Problema:** El corredor tiene tramos de montaña (Puerto Salgar) con sombra celular.
*   **Solución:** Si se usa solo Celular, se incumple la "permanencia". Se requiere VHF punto a punto (Simplex/Repetidor Local) en esos tramos.

---

<!-- SECCIÓN: technical -->
## 2. ESPECIFICACIONES TÉCNICAS (HARD DECK)

### 2.1 Tecnología PoC (Principal)
*   **Plataforma:** Servidor PTT dedicado (Wave, Zello Work, o propietario Motorola).
*   **Terminales:** Radios IP robustos (IP67) con SIM Multi-operador.
*   **Prioridad:** QCI (Quality Class Indicator) para priorizar voz sobre datos.

### 2.2 Tecnología VHF (Respaldo)
*   **Modo:** DMR Tier II (Digital).
*   **Uso:** Talkaround (Directo) en zonas sin señal 4G.
*   **Infraestructura:** 0 Repetidoras Troncales (Ahorro masivo). Solo repetidoras ligeras si fuese estrictamente necesario en túneles o cortes profundos.

---

<!-- SECCIÓN: financial -->
## 💰 ANÁLISIS FINANCIERO

### Presupuesto Reconciliado (Híbrido)

| Ítem | Componente | Cantidad | Costo Unit. | Total (USD) |
|:-----|:-----------|:---------|:------------|:------------|
| **1. Terminales Híbridos** | Radios Portátiles LTE/VHF | 30 | $1,200 | $36,000 |
| **2. Radios Móviles** | Vehiculares LTE/VHF | 25 | $800 | $20,000 |
| **3. Consola Despacho** | Software CCO + PC | 1 | $5,000 | $5,000 |
| **4. Infraestructura** | Instalación Repetidora "Gap Filler" | 1 | $15,000 | $15,000 |
| **5. Licencias/Config** | Setup Inicial | 1 | $9,000 | $9,000 |
| **TOTAL CAPEX RADIO** | **Solución Híbrida** | | | **$85,000** |

**Ahorro Generado:** $212,500 (Base) - $85,000 (Híbrido) = **$127,500 USD**.

---

<!-- SECCIÓN: risks -->
## ⚠️ MATRIZ DE RIESGOS

1.  **Caída de Red Celular:**
    *   *Riesgo:* Pérdida de comunicación en gran escala.
    *   *Mitigación:* SIM Multi-operador (Roaming nacional automático). En fallo total, uso de VHF modo directo (alcance 3-5km).
2.  **Latencia PTT:**
    *   *Riesgo:* Retraso en voz (>1s).
    *   *Mitigación:* Servidores PTT alojados localmente o proveedores de baja latencia.

---

**Estado:** ✅ VALIDADO (SOLUCIÓN HÍBRIDA)  
**Documento Fuente:** Análisis Cobertura v1.0
