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

**Veredicto:** 🟢 **VALIDADO (HARDWARE UNIFICADO)**

Se certifica la implementación de tecnología **All-in-One (Dahua ITC Series)** que unifica "Toma de Datos", "Radar Sancionatorio" y "Cámara LPR" en un solo dispositivo. Esta solución técnica "Todo en Uno" reactiva el alcance fijo pero con eficiencia costos.

**Parámetros de Validación (Hard Deck):**
1.  **Tecnología:** **Cámara ITS con Radar Integrado (Dahua ITC431/9541)**. Cumple AT2 3.3.4.5 (Flujo) y 3.3.5.1 (Velocidad).
2.  **Cantidad:** **2 Unidades** (Ubicación: Puntos Críticos / Tramos de Alta Accidentalidad).
3.  **Funcionalidad:** Un solo equipo realiza:
    *   Conteo y Clasificación (ETD).
    *   Detección de Velocidad (Radar).
    *   Lectura de Placas (ANPR Seguridad).

**CAPEX Validado:** **$22,500 USD** (2 Sitios + Licencia DSS Pro Central).

---

<!-- SECCIÓN: contractual -->
## 1. FUNDAMENTO CONTRACTUAL

### 1.1 Obligación de Conteo (ETD)
**Fuente:** Apéndice Técnico 2, Numeral 3.3.4.5.
*   **Texto:** "El Concesionario deberá instalar... un sistema de monitores... de cantidad y flujo...".
*   **Defensa:** La obligación es tener el **DATO** ("Monitor de Flujo"), no un equipo específico cada Km.
*   **Solución:** Los **Peajes** (Zambito y Aguas Negras) actúan como las "Estaciones Maestras de Toma de Datos", cubriendo el conteo clasificado del 100% del tráfico pasante.

### 1.2 Solución Técnica "Todo en Uno"
**Fuente:** Ficha Técnica Dahua ITC Series (Usuario).
*   **Capacidad:** El equipo integra microondas (Radar) y video en una sola carcasa IP67.
*   **Eficiencia:** Reemplaza la necesidad de tener 1 ETD + 1 Radar + 1 Cámara LPR por separado.
*   **Cumplimiento:** Cubre la obligación de "Sistema de Monitores de Velocidad" y base para "Movilizar a la Policía" (AT2).

---

<!-- SECCIÓN: technical_notes -->
## 2. BLINDAJE TÉCNICO (FICHA TÉCNICA DAHUA)

### 2.1 Especificaciones Validadas (Dahua ITC431-KW4F)
**Fuente:** Datasheet Oficial (Suministrado por Usuario).

| Componente | Especificación Validada |
|:-----------|:------------------------|
| **Modelo** | **ITC431-KW4F** - 4MP All-in-One Enforcement Camera |
| **Radar** | Integrado **61-62 GHz** Millimeter-wave. Rango 5-180 km/h. Precisión ±2 km/h. |
| **Cobertura** | **1-2 Carriles** por dispositivo (Requiere 1 por sentido en doble calzada). |
| **ANPR** | Deep Learning integrado. Reconoce Placa, Color, Marca (Logo), Tipo Vehículo. |
| **Tráfico** | Conteo, Velocidad Promedio, Ocupación, Longitud de Cola (Traffic Flow Mode). |
| **Protección** | **IP68** (Inmersión) + **IK10** (Antivandálico). |
| **Iluminación**| Dual (IR 850nm + Luz Cálida) integrada. |

### 2.2 Estrategia de Ubicación (2 Sitios)
Se instalan **2 Unidades Fijas** en los "Puntos Críticos" contractuales. Dado que cada cámara cubre 1-2 carriles, se asume una configuración de **un sentido crítico por sitio** o **gudied coverage**:
1.  **Punto A:** Acceso Zona Escolar/Urbana (Control Velocidad).
2.  **Punto B:** Tramo Recto (Control Velocidad Máxima).
*Nota:* El equipo cumple la función de ETD (Estadística de Flujo) y SAST (Sanción/Seguridad) simultáneamente.

---

<!-- SECCIÓN: financial -->
## 💰 ANÁLISIS FINANCIERO

### Presupuesto Validado (Dahua All-in-One)

| Ítem | Descripción | Cantidad | Unitario (USD) | Total (USD) | Notas |
|:-----|:------------|:---------|:---------------|:------------|:------|
| **1** | **Kit Dahua ITC All-in-One** | 2 | $3,500 | $7,000 | Cam ITC431 + Flash + Switch + Brazo |
| *1.1* | *Cámara ITC431 Radar/ANPR* | *2* | *$1,427* | *(Incluido)* | ref. Cotización |
| *1.2* | *Iluminador IR/White* | *2* | *$1,169* | *(Incluido)* | ref. Cotización |
| *1.3* | *Switch Industrial PoE* | *2* | *$324* | *(Incluido)* | ref. Cotización |
| **2** | **Software Central (DSS Pro)** | 1 | $11,500 | $11,500 | Base + Licencias Video/ANPR |
| **3** | **Obra Civil/Montaje (Pórtico/Poste)** | 2 | $2,000 | $4,000 | Acometidas y Poste |
| **TOTAL** | **ETD / RADARES** | | | **$22,500** | **Solución Completa** |

**Nota de Validación:** Se toma la cotización del proveedor (Dahua) como "Fuente de Verdad" financiera. El Hardware centraliza todas las funciones ITS de tráfico.

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
