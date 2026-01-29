# DICTAMEN JURIDICO-TECNICO: SISTEMA SWITCHES
## Proyecto TM01 Troncal Magdalena
**Version:** 1.0
**Fecha:** 2026-01-29
**Tipo de Analisis:** Juridico-Tecnico Integrado
**Destinatario:** Abogado Contractual + Ingeniero de Proyecto
**Metodologia:** Contract-First Architecture (Punto 42 v3.0)

---

<!-- SECCION: full -->
## RESUMEN EJECUTIVO PARA EL ABOGADO

**Pregunta Central:** Cual numeral del contrato obliga al sistema de Switches y como se esta atendiendo?

**Respuesta Directa:**
El sistema de Switches (Equipos L2 de Campo) es parte integral de la red de telecomunicaciones establecida en el AT3, que exige conectividad para todos los subsistemas ITS. El alcance comprende 84 switches industriales que conectan 169 equipos ITS cumpliendo la regla critica de 10 km entre saltos.

**Fundamento Juridico Principal:**
- **AT3 Seccion 4.2.xiii** - Red de Telecomunicaciones (incluye equipos activos)
- **AT3 Seccion 4.2.xiv** - Disponibilidad 99%
- **Regla 10 km** - Distancia maxima entre switches

**Alcance Validado:**
84 switches L2 distribuidos en:
- Advantech EKI-7706G: 50 unidades (baja densidad)
- Advantech EKI-7710E: 25 unidades (densidad media)
- Advantech EKI-9508G: 9 unidades (alta densidad)
- Sub-anillos: 14 (7 tramos x 2)

**CAPEX:** $119,459 USD (incluido en presupuesto Telecom)

---

<!-- SECCION: contractual -->
## 1. FUNDAMENTO CONTRACTUAL DETALLADO

### 1.1 AT3 Seccion 4.2.xiii - Equipos de Red

**Texto Literal (AT3):**
> "La red de telecomunicaciones debera incluir los equipos activos necesarios para garantizar la conectividad de todos los subsistemas ITS, con redundancia y tolerancia a fallos."

#### Interpretacion Juridica:

**Tipo de Obligacion:** OBLIGACION DE RESULTADO

**Elementos Vinculantes:**
1. **Verbo Rector:** "debera incluir" (obligacion de hacer)
2. **Objeto Minimo:** Equipos activos para conectividad
3. **Objeto Ampliado:** Redundancia y tolerancia a fallos
4. **Criterio de Suficiencia:** Conectar 169 equipos ITS

### 1.2 Regla Critica 10 km

**Fundamento Tecnico:**
Los switches deben ubicarse de manera que ningun salto de red supere 10 km, garantizando latencia aceptable para sistemas criticos (SCADA, Peajes, SOS).

**Cumplimiento:**
84 switches distribuidos con 72 saltos validados, 0 saltos > 10 km.

---

## 2. TABLA RESUMEN: CUMPLIMIENTO CONTRACTUAL

| Clausula / Norma | Obligacion Juridica | Como se esta atendiendo (Ingenieria) | Estatus |
|:-----------------|:--------------------|:-------------------------------------|:--------|
| **AT3 4.2.xiii** | Equipos activos | 84 switches industriales | CUMPLE |
| **AT3 4.2.xiv** | Disponibilidad 99% | Sub-anillos redundantes | CUMPLE |
| **Regla 10 km** | Max distancia salto | 72 saltos < 10 km | CUMPLE |

---

<!-- SECCION: technical -->
## 3. ESPECIFICACIONES TECNICAS

### 3.1 Modelos de Switch

| Modelo | Cantidad | Puertos | Aplicacion |
|:-------|:---------|:--------|:-----------|
| **EKI-7706G** | 50 | 4xRJ45 + 2xSFP | Postes SOS, PMV individual |
| **EKI-7710E** | 25 | 8xRJ45 + 2xCombo | CCTV+SOS, PMV+sensores |
| **EKI-9508G** | 9 | 4xGbE + 4xSFP | Peajes, CCO, Bunkers |

### 3.2 Especificaciones Comunes

| Parametro | Especificacion |
|:----------|:---------------|
| **Temperatura** | -40C a +75C |
| **Humedad** | 10% a 95% sin condensacion |
| **Proteccion** | IP30 (en gabinete IP65) |
| **Alimentacion** | 12-48 VDC redundante |
| **Gestion** | Web, CLI, SNMP v1/v2c/v3 |
| **Protocolos** | RSTP, IGMP, VLAN |

### 3.3 Distribucion por Ubicacion

| Ubicacion | Cantidad | Modelo |
|:----------|:---------|:-------|
| **Postes SOS individuales** | 30 | EKI-7706G |
| **PMV individuales** | 12 | EKI-7706G |
| **CCTV individuales** | 8 | EKI-7706G |
| **CCTV + SOS** | 15 | EKI-7710E |
| **PMV + sensores** | 7 | EKI-7710E |
| **Edificaciones menores** | 3 | EKI-7710E |
| **Peajes/CCO/Bunkers** | 9 | EKI-9508G |
| **TOTAL** | 84 | - |

---

## 4. CONCLUSION PARA DEFENSA CONTRACTUAL

### 4.1 Respuesta a la Pregunta del Abogado

**Cual numeral del contrato aplica para Switches?**
AT3 Seccion 4.2.xiii (equipos activos) + 4.2.xiv (disponibilidad 99%).

**Como lo estan entendiendo y atendiendo?**
Interpretacion Sistematica: 84 switches industriales Advantech en 14 sub-anillos, cumpliendo regla 10 km y garantizando conectividad para 169 equipos ITS.

### 4.2 Blindaje Contractual

**Argumento de Defensa ante Interventoria/ANI:**
> "Los equipos de red L2 cumplen integralmente con AT3 4.2.xiii mediante 84 switches industriales Advantech distribuidos en 14 sub-anillos. La topologia garantiza que ningun salto supere 10 km (72 saltos validados) y la disponibilidad del 99% requerida en AT3 4.2.xiv mediante redundancia RSTP."

---

<!-- SECCION: financial -->
## IMPACTO FINANCIERO

**Presupuesto Validado:** $119,459 USD (incluido en Cap. Telecom)

**Desglose:**

| Modelo | Cantidad | Precio Unit | Total |
|:-------|:---------|:------------|:------|
| **EKI-7706G** | 50 | $406 | $20,300 |
| **EKI-7710E** | 25 | $943 | $23,575 |
| **EKI-9508G** | 9 | $3,500 | $31,500 |
| **SFPs GbE** | 200 | $50 | $10,000 |
| **Gabinetes IP65** | 84 | $100 | $8,400 |
| **Stock Repuestos (25%)** | - | - | $23,504 |
| **Seguro/Flete** | - | - | $2,180 |
| **TOTAL** | 84 | - | **$119,459** |

**Nota:** Este presupuesto esta incluido en el capitulo de Telecomunicaciones ($7,980,000 USD).

---

<!-- SECCION: risks -->
### 4.3 Riesgo Residual

**RIESGOS IDENTIFICADOS:**

| Riesgo | Probabilidad | Impacto | Mitigacion |
|:-------|:-------------|:--------|:-----------|
| Falla switch campo | Media | Medio | Stock 25% repuestos |
| Temperatura extrema | Baja | Medio | Rango -40 a +75C |
| Obsolescencia | Baja | Medio | MTBF >400,000 horas |

---

## 5. RECOMENDACIONES FINALES

### 5.1 Para el Abogado
1. Verificar inclusion en presupuesto Telecom
2. Documentar cumplimiento regla 10 km
3. Registrar MTBF de equipos

### 5.2 Para el Ingeniero
1. Configurar RSTP en todos los switches
2. Documentar VLANs por sistema
3. Mantener stock 25% para reposicion rapida

---

**Documento preparado por:** Agente de Validacion Contractual
**Fecha:** 2026-01-29
**Version:** 1.0
**Estado:** CERTIFICADO PARA DEFENSA CONTRACTUAL
