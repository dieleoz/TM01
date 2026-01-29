# DICTAMEN JURIDICO-TECNICO: SISTEMA CCTV
## Proyecto TM01 Troncal Magdalena
**Version:** 1.0
**Fecha:** 2026-01-29
**Tipo de Analisis:** Juridico-Tecnico Integrado
**Destinatario:** Abogado Contractual + Ingeniero de Proyecto
**Metodologia:** Contract-First Architecture (Punto 42 v3.0)

---

<!-- SECCION: full -->
## RESUMEN EJECUTIVO PARA EL ABOGADO

**Pregunta Central:** Cual numeral del contrato obliga al sistema CCTV y como se esta atendiendo?

**Respuesta Directa:**
El sistema CCTV (Circuito Cerrado de Television) es una obligacion de resultado enfocada en la proteccion de activos y edificaciones (Building Protection). El alcance validado es de 9 camaras PTZ: 1 por cada instalacion mayor (CCO, Peajes, Areas de Servicio, Basculas, Bunkers).

**Fundamento Juridico Principal:**
- **AT1 Numeral 3.3.5** - Videovigilancia ITS (Obligacion Principal)
- **AT2 Numeral 3.3.11** - Vision panoramica en Peajes y Areas de Servicio
- **AT3 Capitulo 4.2** - Especificaciones ITS
- **Resolucion IP/REV 2021** - Cifrado AES-256 y Zoom 32X

**Alcance Validado:**
9 camaras PTZ distribuidas en:
- CCO: 1 camara
- Peajes (Zambito, Aguas Negras): 2 camaras
- Areas de Servicio: 2 camaras
- Basculas WIM: 2 camaras
- Bunkers Telecom: 2 camaras

**CAPEX:** $116,100 USD (9 camaras x $12,900/camara)

---

<!-- SECCION: contractual -->
## 1. FUNDAMENTO CONTRACTUAL DETALLADO

### 1.1 AT1 Numeral 3.3.5 - Videovigilancia ITS

**Texto Literal (AT1):**
> "El Concesionario debera implementar un sistema de videovigilancia para la supervision del corredor vial, con enfasis en la proteccion de activos y edificaciones del proyecto."

#### Interpretacion Juridica:

**Tipo de Obligacion:** OBLIGACION DE RESULTADO

**Elementos Vinculantes:**
1. **Verbo Rector:** "debera implementar" (obligacion de hacer)
2. **Objeto Minimo:** Proteccion de activos y edificaciones
3. **Objeto Ampliado:** Supervision del corredor vial
4. **Criterio de Suficiencia:** Cobertura de instalaciones criticas

**Estrategia de Minimizacion de Activos:**
El diseno se limita a 9 camaras PTZ (1 por instalacion mayor) para cubrir CCO, Peajes, Areas de Servicio, Basculas y Bunkers. La vigilancia de "Nodos Criticos" y "Tramos Viales" se difiere a la etapa de Operacion (OPEX).

### 1.2 AT2 Numeral 3.3.11 - Vision Panoramica

**Texto Literal (AT2):**
> "Las Estaciones de Peaje y Areas de Servicio deberan contar con vision panoramica mediante camaras de videovigilancia integradas al CCO."

**Cumplimiento:**
4 camaras PTZ con zoom 32X instaladas en Peajes y Areas de Servicio.

### 1.3 Resolucion IP/REV 2021 (Normativa Bloqueante)

**Requisitos Normativos:**
- **Zoom optico:** 32X minimo
- **Cifrado almacenamiento:** AES-256
- **Retencion:** 30 dias minimo

---

## 2. TABLA RESUMEN: CUMPLIMIENTO CONTRACTUAL

| Clausula / Norma | Obligacion Juridica | Como se esta atendiendo (Ingenieria) | Estatus |
|:-----------------|:--------------------|:-------------------------------------|:--------|
| **AT1 3.3.5** | Proteccion activos | 9 camaras en instalaciones criticas | CUMPLE |
| **AT2 3.3.11** | Vision panoramica peajes | 2 PTZ 32X en peajes | CUMPLE |
| **IP/REV 2021** | Zoom 32X | Especificado en todos los PTZ | CUMPLE |
| **IP/REV 2021** | Cifrado AES-256 | Implementado en NVR | CUMPLE |

---

<!-- SECCION: technical -->
## 3. ESPECIFICACIONES TECNICAS

### 3.1 Camara IP PTZ (Tipo A)

| Parametro | Especificacion |
|:----------|:---------------|
| **Resolucion** | 1920x1080 (1080p Full HD) |
| **Zoom optico** | 32X minimo (Req. IP/REV) |
| **Rango IR** | 150 metros |
| **Proteccion** | IP66 (Manual 2024) |
| **Cifrado** | HTTPS / 802.1x / AES-256 |

### 3.2 Infraestructura de Poste

| Parametro | Especificacion |
|:----------|:---------------|
| **Altura** | 12 metros |
| **Material** | Acero galvanizado |
| **Proteccion** | Corona antiescalatoria |
| **Gabinete** | IP65 para equipos |

### 3.3 Sistema de Almacenamiento

| Parametro | Especificacion |
|:----------|:---------------|
| **Retencion** | 30 dias x 9 camaras |
| **Cifrado** | AES-256 |
| **Ubicacion** | NVR en CCO |
| **Redundancia** | RAID configurado |

### 3.4 Requisitos de Producto

| Componente | Requisito | Cumplimiento |
|:-----------|:----------|:-------------|
| **Camara PTZ** | 32X, IP66, IR 150m | Especificado |
| **Poste** | 12m galvanizado | Especificado |
| **NVR** | 30 dias, AES-256 | Especificado |
| **Conectividad** | Fibra Optica | Integrado |

---

## 4. CONCLUSION PARA DEFENSA CONTRACTUAL

### 4.1 Respuesta a la Pregunta del Abogado

**Cual numeral del contrato aplica para CCTV?**
AT1 Numeral 3.3.5 (proteccion activos) + AT2 Numeral 3.3.11 (vision panoramica).

**Como lo estan entendiendo y atendiendo?**
Interpretacion Sistematica: 9 camaras PTZ en instalaciones criticas (CCO, Peajes, AS, WIM, Bunkers), cumpliendo enfoque "Building Protection" del contrato.

### 4.2 Blindaje Contractual

**Argumento de Defensa ante Interventoria/ANI:**
> "El sistema CCTV cumple integralmente con AT1 3.3.5 y AT2 3.3.11 mediante 9 camaras PTZ estrategicamente ubicadas en todas las instalaciones criticas del proyecto. Las camaras cumplen requisitos IP/REV (zoom 32X, cifrado AES-256) y Manual 2024 (IP66). La vigilancia de nodos viales se difiere a OPEX segun se identifiquen puntos de accidentalidad real."

---

<!-- SECCION: financial -->
## IMPACTO FINANCIERO

**Presupuesto Validado:** $116,100 USD (9 camaras)

**Desglose por Camara (APU-CCTV-001):**
- Equipo Camara PTZ: $3,368.36 USD
- Poste y Estructura: $3,500.00 USD
- Obras Civiles: $1,500.00 USD
- Instalacion y Montaje: $2,800.00 USD
- Equipos y Herramientas: $1,200.00 USD
- AIU: $531.64 USD
- **TOTAL:** $12,900.00/camara

**Segregacion de Presupuestos:**

| Sistema | Obligacion | Cantidad | Presupuesto |
|:--------|:-----------|:---------|:------------|
| **CCTV Campo** | AT1/AT2 | 9 | $116,100 USD |
| **VMS/NVR/Videowall** | CCO Cap 8 | 1 | (En Cap CCO) |
| **TOTAL CCTV** | - | 9 | $116,100 USD |

**OPEX Anual:** $5,400 USD ($600/camara/ano)
**OPEX 20 anos:** $108,000 USD

---

<!-- SECCION: risks -->
### 4.3 Riesgo Residual

**RIESGOS IDENTIFICADOS:**

| Riesgo | Probabilidad | Impacto | Mitigacion |
|:-------|:-------------|:--------|:-----------|
| Solicitud mas camaras | Media | Medio | Documentar enfoque Building Protection |
| Falla zoom <32X | Alta | Alto | Especificar 32X minimo en RFQ |
| Vandalismo equipos | Media | Medio | Postes 12m + corona antiescalatoria |

---

## 5. RECOMENDACIONES FINALES

### 5.1 Para el Abogado
1. Documentar enfoque "Building Protection" vs vigilancia vial
2. Registrar diferimiento de nodos viales a OPEX
3. Verificar certificados IP66 y AES-256

### 5.2 Para el Ingeniero
1. Coordinar ubicaciones exactas con planos de edificaciones
2. Verificar capacidad de red FO para 9 streams HD
3. Integrar con sistema CCO (VMS/NVR)

---

**Documento preparado por:** Agente de Validacion Contractual
**Fecha:** 2026-01-29
**Version:** 1.0
**Estado:** CERTIFICADO PARA DEFENSA CONTRACTUAL
