# DICTAMEN JURÍDICO-TÉCNICO: ESTACIONES METEOROLÓGICAS
## Proyecto TM01 Troncal Magdalena

**Versión:** 1.0 (FORENSIC AUDIT)  
**Fecha:** 29 de Enero 2026  
**Tipo de Análisis:** Validación de Alcance y Cumplimiento Normativo  
**Destinatario:** Gerencia de Proyecto + Presupuestos  
**Metodología:** Contract-First Architecture (Punto 42 v3.0)

---

<!-- SECCIÓN: full -->
## 📋 RESUMEN EJECUTIVO (HARD DECK)

**Veredicto:** 🟢 **VALIDADO (OPTIMIZADO)**

Se certifica el alcance del Subsistema de Meteorología basándose en la **Resolución IP/REV** y el **Apéndice Técnico 2**.

**Parámetros de Validación (Hard Deck):**
1.  **Cantidad Física:** **2 Estaciones Compactas (Tipo Davis)**. Ubicación Mandatoria en Peajes (Zambito + Aguas Negras).
2.  **Sensor de Niebla:** **VIRTUALIZADO**. Se acoge a la cláusula contractual **"Se recomienda"** (No obligatorio). Se cumple con Webservice.
3.  **Cobertura UF:** Se cumple mediante **Webservice Georreferenciado** integrado al SCADA, eliminando estaciones físicas en vía abierta.

**CAPEX Validado:** **$16,500 USD** (Ahorro Masivo vs $114k con Visibilímetros).

---

<!-- SECCIÓN: contractual -->
## 1. FUNDAMENTO CONTRACTUAL

### 1.1 Obligación IP/REV (Peajes)
**Fuente:** Resolución 20213040035125 (IP/REV), Anexo Técnico.
*   **Mandato:** "El Sistema ITS en las estaciones de peaje deberá disponer de sensores y equipos de monitoreo ambiental".
*   **Interpretación:** La instalación física es **OBLIGATORIA** en cada peaje para la operación del recaudo y seguridad vial local.

### 1.2 Obligación CCO (AT2)
**Fuente:** AT2, Numeral 3.3.11.2.
*   **Mandato:** "Información sobre las condiciones meteorológicas... en el Centro de Control de Operaciones".
*   **Interpretación:** Es una obligación de **INFORMACIÓN**, no de INSTALACIÓN. El CCO recibe datos; no necesita un sensor en su techo si ya tiene cobertura en la vía.

### 1.3 Exclusiones Contractuales (Blindaje Jurídico)
*   **Estaciones de Pesaje (Básculas):** **EXCLUIDAS**.
    *   *Fundamento:* El Numeral 3.3.9 del AT2 (Sistemas de Pesaje) NO lista equipos meteorológicos.
    *   *Defensa:* La obligación de reporte es "por Unidad Funcional" (cubierta por los Peajes), no por "sitio de pesaje".
*   **Torres SOS/Tramo:** **SUSTITUIDAS**.
    *   *Estrategia:* Cobertura por "Unidad Funcional" usando la data de los Peajes. Se instala en vía solo si hay "Gaps" de cobertura (Microclimas) no cubiertos por los peajes.

---

<!-- SECCIÓN: technical_notes -->
## 2. BLINDAJE TÉCNICO Y LEGAL (ESTRATEGIA "DAVIS + WEB")

### 2.1 La Defensa de la "No Obligatoriedad" (Niebla)
Se valida el uso de estaciones tipo **Davis Vantage Pro2 Plus** (Agro) sin sensor de visibilidad físico, bajo el siguiente amparo legal:
*   **Fuente:** Manual de Señalización 2024 (Num 1.2.C) y Res. IP/REV (Num 2.9.16).
*   **Argumento:** Ambas normas usan la frase "**Se recomienda** contar con equipos... de neblina". El Manual define "Recomendar" como no obligatorio.
*   **Cumplimiento:** La variable Niebla se entrega vía **Webservice** al SCADA, superando la recomendación sin comprar hardware costoso.

### 2.2 Especificaciones Físicas (Peajes)
La estación instalada en Peajes debe medir obligatoriamente (IP/REV):
1.  **Viento (Vel/Dir), Lluvia, Temperatura, Humedad.**
2.  **Radiación Solar:** Para cálculo de ETo (Exigencia IDEAM). La Davis Pro2 Plus cumple esto nativamente con fotodiodo.
3.  **Energía:** UPS/Solar 48h (Manual 2024).

### 2.2 Integración
*   **Protocolo:** Modbus TCP / NTCIP 1204 para integración nativa con SCADA.
*   **Alerta Temprana:** Configuración de umbrales (Viento > 40km/h, Visibilidad < 200m) para disparo automático de PMVs.

---

<!-- SECCIÓN: financial -->
## 💰 ANÁLISIS FINANCIERO

### Presupuesto Validado (Hard Deck)

| Ítem | Descripción | Cantidad | Unitario (USD) | Total (USD) |
|:-----|:------------|:---------|:---------------|:------------|
| **1** | **Estación Compacta (Tipo Davis)** | 2 | $6,250 | $12,500 |
| **2** | **Integración Software / API Niebla** | 1 | $4,000 | $4,000 |
| **TOTAL** | **METEOROLOGÍA (v1.0)** | | | **$16,500** |

**Justificación Financiera:** Se logra una reducción masiva del CAPEX al evitar la compra de sensores de visibilidad físicos ($39k/u). La robustez se garantiza mediante redundancia de fuentes de datos web y el cumplimiento normativo se ampara en la naturaleza "Recomendada" de la medición de niebla física en el Manual de 2024.

---

<!-- SECCIÓN: risks -->
## ⚠️ MATRIZ DE RIESGOS

1.  **Rechazo Interventoría (Virtualización):**
    *   *Riesgo:* Exigencia de medición MOR in-situ.
    *   *Defensa:* Manual de Señalización 2024 (Num 1.2.C) define "Recomendar" como no obligatorio.
    *   *Mitigación:* Certificar SLA del servicio de API climática.
2.  **Ubicación Peaje 2:**
    *   *Riesgo:* Coordenadas Aguas Negras.
    *   *Mitigación:* PK 80+000 validado.

---

**Estado:** ✅ VALIDADO  
**Firma:** Consultoría Forense de Sistemas ITS
