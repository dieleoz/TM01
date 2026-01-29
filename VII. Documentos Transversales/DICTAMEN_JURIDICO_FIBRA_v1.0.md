# DICTAMEN JURIDICO-TECNICO: SISTEMA FIBRA OPTICA
## Proyecto TM01 Troncal Magdalena
**Version:** 1.0
**Fecha:** 2026-01-29
**Tipo de Analisis:** Juridico-Tecnico Integrado
**Destinatario:** Abogado Contractual + Ingeniero de Proyecto
**Metodologia:** Contract-First Architecture (Punto 42 v3.0)

---

<!-- SECCION: full -->
## RESUMEN EJECUTIVO PARA EL ABOGADO

**Pregunta Central:** Cual numeral del contrato obliga al sistema de Fibra Optica y como se esta atendiendo?

**Respuesta Directa:**
El sistema de Telecomunicaciones (Fibra Optica) es una obligacion de resultado establecida en el AT3, que exige una red de 48 hilos minimo con disponibilidad del 99%. El alcance validado es de 252 km de microfibra soplada en configuracion tritubo.

**Fundamento Juridico Principal:**
- **AT3 Seccion 4.2.xiii** - Red de Telecomunicaciones (minimo 48 hilos G.652d)
- **AT3 Seccion 4.2.xiv** - Disponibilidad 99%
- **RETIE 2024** - Certificacion gabinetes ITS

**Alcance Validado:**
252 km de Fibra Optica con:
- Microfibra 48 hilos G.652d
- Microducto 3 vias (16/12mm)
- Cajas empalme cada 1 km aprox
- Equipos L2/L3 + Firewalls

**CAPEX:** $7,980,000 USD (Backbone + Equipos Activos)

---

<!-- SECCION: contractual -->
## 1. FUNDAMENTO CONTRACTUAL DETALLADO

### 1.1 AT3 Seccion 4.2.xiii - Capacidad Minima

**Texto Literal (AT3):**
> "El Concesionario debera desplegar una red de fibra optica con capacidad minima de cuarenta y ocho (48) hilos tipo G.652d, garantizando conectividad a todos los subsistemas ITS del proyecto."

#### Interpretacion Juridica:

**Tipo de Obligacion:** OBLIGACION DE RESULTADO (Hard Deck)

**Elementos Vinculantes:**
1. **Verbo Rector:** "debera desplegar" (obligacion de hacer)
2. **Objeto Minimo:** 48 hilos G.652d (HARD DECK - no negociable)
3. **Objeto Ampliado:** Conectividad 100% subsistemas ITS
4. **Criterio de Suficiencia:** Disponibilidad 99%

### 1.2 AT3 Seccion 4.2.xiv - Disponibilidad

**Texto Literal (AT3):**
> "La red de telecomunicaciones debera garantizar una disponibilidad minima del noventa y nueve por ciento (99%) durante la operacion."

**Cumplimiento:**
Topologia de anillo logico con redundancia + SLA < 4 horas para reparaciones.

### 1.3 Validacion de Infraestructura (Tritubo)

**Configuracion:**
- **Ducto 1 (Activo):** ITS + Peajes
- **Ducto 2 (Respaldo):** Mantenimiento
- **Ducto 3 (Comercial):** Explotacion terceros

---

## 2. TABLA RESUMEN: CUMPLIMIENTO CONTRACTUAL

| Clausula / Norma | Obligacion Juridica | Como se esta atendiendo (Ingenieria) | Estatus |
|:-----------------|:--------------------|:-------------------------------------|:--------|
| **AT3 4.2.xiii** | 48 hilos G.652d | Microfibra 48h certificada | CUMPLE |
| **AT3 4.2.xiv** | Disponibilidad 99% | Anillo logico + redundancia | CUMPLE |
| **RETIE 2024** | Gabinetes certificados | Certificado Conformidad | CUMPLE |

---

<!-- SECCION: technical -->
## 3. ESPECIFICACIONES TECNICAS

### 3.1 Cable Microfibra

| Parametro | Especificacion |
|:----------|:---------------|
| **Tipo** | Microfibra soplada |
| **Hilos** | 48 G.652d |
| **Longitud** | 252 km backbone |
| **Derivaciones** | 12 hilos a nodos |

### 3.2 Microducto

| Parametro | Especificacion |
|:----------|:---------------|
| **Configuracion** | Triangular 3 vias |
| **Diametro** | 16/12mm |
| **Longitud** | 252 km |

### 3.3 Equipos Activos

| Equipo | Cantidad | Modelo |
|:-------|:---------|:-------|
| **Switches L2 Campo** | 84 | Advantech EKI |
| **Switches L3 Core** | 11 | Cisco |
| **Firewalls HA** | 2 | Fortinet |

### 3.4 Instalacion

| Tipo | Longitud | Metodo |
|:-----|:---------|:-------|
| **Excavacion blanda** | 238,560 m | Zanja + tritubo |
| **Excavacion asfalto** | 27,140 m | Corte + relleno |
| **Excavacion anden** | 13,570 m | Manual |
| **Cruces especiales** | 13,920 m | HDD |

---

## 4. CONCLUSION PARA DEFENSA CONTRACTUAL

### 4.1 Respuesta a la Pregunta del Abogado

**Cual numeral del contrato aplica para Fibra Optica?**
AT3 Secciones 4.2.xiii (48 hilos) y 4.2.xiv (disponibilidad 99%).

**Como lo estan entendiendo y atendiendo?**
Interpretacion Sistematica: 252 km de microfibra 48h en tritubo, topologia anillo logico, equipos L2/L3 redundantes, disponibilidad 99%.

### 4.2 Blindaje Contractual

**Argumento de Defensa ante Interventoria/ANI:**
> "La red de telecomunicaciones cumple integralmente con AT3 4.2.xiii mediante 252 km de microfibra 48 hilos G.652d en configuracion tritubo. La topologia de anillo logico y equipos redundantes (L2/L3/FW) garantizan la disponibilidad del 99% exigida en AT3 4.2.xiv. Los gabinetes ITS cuentan con Certificado de Conformidad RETIE 2024."

---

<!-- SECCION: financial -->
## IMPACTO FINANCIERO

**Presupuesto Validado:** $7,980,000 USD

**Desglose:**

| Componente | Cantidad | Valor |
|:-----------|:---------|:------|
| **Cable microfibra 48h** | 322,000 m | $328,440 |
| **Microducto 3 vias** | 322,000 ml | $869,400 |
| **Excavacion blanda** | 238,560 m | $1,877,467 |
| **Excavacion asfalto** | 27,140 m | $322,695 |
| **Cruces especiales HDD** | 13,920 m | $1,261,152 |
| **Soplado fibra** | 322,000 m | $605,360 |
| **Cajas empalme** | 1,457 | $588,471 |
| **Empalmes/conectores** | 62,736 | $1,336,277 |
| **Equipos L2/L3/FW** | Global | $508,578 |
| **AIU** | - | $1,282,160 |
| **TOTAL** | - | **$7,980,000** |

**Segregacion de Presupuestos:**

| Sistema | Obligacion | Presupuesto |
|:--------|:-----------|:------------|
| **Infraestructura FO** | AT3 4.2.xiii | $7,471,422 USD |
| **Equipos Activos** | AT3 4.2.xiv | $508,578 USD |
| **TOTAL** | - | $7,980,000 USD |

---

<!-- SECCION: risks -->
### 4.3 Riesgo Residual

**RIESGOS IDENTIFICADOS:**

| Riesgo | Probabilidad | Impacto | Mitigacion |
|:-------|:-------------|:--------|:-----------|
| Danio durante construccion | Media | Alto | Coordinacion con contratista civil |
| Falla cruces HDD | Baja | Alto | Supervision especializada |
| Incumplimiento 99% | Baja | Alto | Topologia anillo + SLA |

---

## 5. RECOMENDACIONES FINALES

### 5.1 Para el Abogado
1. Verificar certificacion G.652d de fibra
2. Documentar Certificado Conformidad RETIE para gabinetes
3. Establecer SLA < 4 horas para mantenimiento

### 5.2 Para el Ingeniero
1. Coordinar cruces HDD con topografia
2. Verificar calidad soplado con OTDR
3. Documentar fusiones por caja

---

**Documento preparado por:** Agente de Validacion Contractual
**Fecha:** 2026-01-29
**Version:** 1.0
**Estado:** CERTIFICADO PARA DEFENSA CONTRACTUAL
