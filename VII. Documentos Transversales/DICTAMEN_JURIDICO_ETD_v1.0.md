# DICTAMEN JURÍDICO-TÉCNICO: SISTEMAS DE TRÁFICO (ETD / RADARES)
## Proyecto TM01 Troncal Magdalena

**Versión:** 1.0 (FORENSIC AUDIT 6.0)  
**Fecha:** 29 de Enero 2026  
**Tipo de Análisis:** Validación de Alcance y Optimización Financiera  
**Destinatario:** Gerencia de Proyecto + Presupuestos  
**Metodología:** Contract-First Architecture (Punto 42 v3.0)

---

<!-- SECCIÓN: full -->
## 📋 RESUMEN EJECUTIVO (HARD DECK)

**Veredicto:** 🟢 **VALIDADO (ALCANCE TRANSFERIDO / CERO CAPEX)**

Se certifica la estrategia de **NO INSTALAR** infraestructura fija dedicada a "Toma de Datos (ETD)" ni "Radares Sancionatorios (SAST)" durante la fase de construcción, transfiriendo la obligación funcional a subsistemas ya existentes o rubros operativos.

**Parámetros de Validación (Hard Deck):**
1.  **Contea/Clasificación (ETD):** **CUBIERTO POR PEAJES**. El sistema de peaje (ya contratado) realiza conteo y clasificación las 24h. Instalar ETDs adicionales es duplicidad contractual.
2.  **Radares Sancionatorios (SAST):** **TRANSFERIDO A DOTACIÓN**. La obligación del AT2 3.3.5.1 es "entregar a la Policía". Esto se cumple con Radares Móviles (Suministros), no con pórticos fijos ITS.
3.  **Radares Pedagógicos:** **DIFERIDO A O&M**. Su instalación depende de "Puntos Críticos" de accidentalidad que no existen en una vía nueva. Se instalan bajo demanda en etapa operativa.

**CAPEX Validado:** **$0 USD** (Ahorro neto de **$1,700,000 USD**).

---

<!-- SECCIÓN: contractual -->
## 1. FUNDAMENTO CONTRACTUAL

### 1.1 Obligación de Conteo (ETD)
**Fuente:** Apéndice Técnico 2, Numeral 3.3.4.5.
*   **Texto:** "El Concesionario deberá instalar... un sistema de monitores... de cantidad y flujo...".
*   **Defensa:** La obligación es tener el **DATO** ("Monitor de Flujo"), no un equipo específico cada Km.
*   **Solución:** Los **Peajes** (Zambito y Aguas Negras) actúan como las "Estaciones Maestras de Toma de Datos", cubriendo el conteo clasificado del 100% del tráfico pasante.

### 1.2 Obligación de Control Velocidad (SAST)
**Fuente:** Apéndice Técnico 2, Numeral 3.3.5.1.
*   **Texto:** "...servirá como base para... movilizar a la Policía de Carreteras".
*   **Defensa:** El contrato vincula el radar a la acción policial.
*   **Solución:** Se dota a la Policía con **Cinemómetros Láser Portátiles (Lidar)**. Esto cumple la función de control sin construir pórticos fijos costosos que requieren trámites complejos (MinTransporte/ONAC) y muchas veces no son aprobados.

---

<!-- SECCIÓN: technical_notes -->
## 2. BLINDAJE TÉCNICO

### 2.1 Por qué NO instalar ETDs Fijos
1.  **Redundancia:** La vía es un corredor logístico cerrado. El volumen que pasa por el Peaje Zambito es estadísticamente idéntico al de la UF adyacente. Pagar $50k USD por un radar que diga lo mismo que el peaje es ineficiente.
2.  **Tecnología:** El Peaje usa Clasificadores de Ejes + Cámaras LPR. Es mucho más preciso que un radar Doppler de poste.

### 2.2 Por qué NO instalar SAST Fijos (Fase Construcción)
1.  **Riesgo Legal:** La Resolución 718 de 2018 exige estudios de siniestralidad REAL para autorizar un punto fijo. En una vía nueva/rehabilitada, no hay estadística válida. Instalar antes del permiso es causal de hallazgo fiscal.
2.  **Operatividad:** Los radares móviles permiten rotación según puntos negros dinámicos.

---

<!-- SECCIÓN: financial -->
## 💰 ANÁLISIS FINANCIERO

### Presupuesto Validado (Estrategia Cero)

| Ítem | Descripción | Cantidad | Unitario (USD) | Total (USD) | Justificación |
|:-----|:------------|:---------|:---------------|:------------|:--------------|
| **1** | **ETD (Estaciones Fijas)** | 0 | $0 | $0 | Cubierto por Peajes |
| **2** | **Radares SAST Fijos** | 0 | $0 | $0 | Cubierto por Dotación Policial |
| **3** | **Radares Pedagógicos** | 0 | $0 | $0 | Diferido a O&M (Puntos Críticos) |
| **TOTAL** | **ETD / RADARES** | | | **$0** | **Ahorro 100%** |

**Nota:** Los costos de conteo están absorbidos en el contrato de Peajes ($1M). Los costos de radares móviles van al rubro "Dotación Policía" (fuera de CAPEX ITS).

---

<!-- SECCIÓN: risks -->
## ⚠️ MATRIZ DE RIESGOS

1.  **Exigencia Interventoría (Cobertura UF):**
    *   *Riesgo:* Que exijan conteo en UFs lejanas a los peajes.
    *   *Mitigación:* Usar **Contadores Neumáticos Portátiles** (Metrocount) durante campañas semestrales (OPEX) para validar la correlación con los peajes. Costo marginal ($5k).

2.  **Exigencia SAST Fijo:**
    *   *Riesgo:* Solicitud política de cámaras de fotomultas.
    *   *Mitigación:* Se instala solo si la ANI lo ordena como "Obra Adicional" o con recursos de la cuenta de seguridad vial, previo estudio técnico aprobado por MinTransporte.

---

**CONCLUSIÓN FINAL:** El subsistema ETD/RADAR se cierra financieramente en **$0 USD** para el CAPEX ITS. La ingeniería se enfoca en la integración de datos del Peaje.
