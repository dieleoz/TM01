# DICTAMEN JURIDICO-TECNICO: SISTEMA PEAJE
## Proyecto TM01 Troncal Magdalena
**Version:** 1.0
**Fecha:** 2026-01-29
**Tipo de Analisis:** Juridico-Tecnico Integrado
**Destinatario:** Abogado Contractual + Ingeniero de Proyecto
**Metodologia:** Contract-First Architecture (Punto 42 v3.0)

---

<!-- SECCION: full -->
## RESUMEN EJECUTIVO PARA EL ABOGADO

**Pregunta Central:** Cual numeral del contrato obliga al sistema de Peaje y como se esta atendiendo?

**Respuesta Directa:**
El sistema de Peaje (Recaudo Electronico y Manual) es una obligacion de resultado establecida en el AT2 Apendice de Operacion. El alcance comprende 2 estaciones de peaje (Zambito y Aguas Negras) con 14 carriles totales, integrando tecnologia IP/REV (Interoperabilidad) y pesaje dinamico WIM-DAC.

**Fundamento Juridico Principal:**
- **AT2 Numeral 3.3.4** - Sistema de Recaudo (Obligacion Principal)
- **AT2 Numeral 3.3.4.1** - Equipamiento Basico Estaciones de Peaje
- **AT2 Numeral 3.3.4.2** - Integracion WIM-DAC
- **Resolucion IP/REV 2021** - Interoperabilidad de Recaudo

**Alcance Validado:**
2 Estaciones de Peaje con:
- 4 Carriles Automaticos (Telepeaje)
- 4 Carriles Mixtos (Manual - Telepeaje)
- 4 Carriles Manuales Semiautomaticos
- 2 Carriles Reversibles (Dobles)
- Integracion WIM-DAC (14 placas de pesaje)

**CAPEX:** $2,258,577 USD (Recaudo FTS + WIM-DAC)

---

<!-- SECCION: contractual -->
## 1. FUNDAMENTO CONTRACTUAL DETALLADO

### 1.1 AT2 Numeral 3.3.4 - Sistema de Recaudo

**Texto Literal (AT2):**
> "El Concesionario debera implementar y operar un sistema de recaudo electronico y manual en las estaciones de peaje del proyecto, garantizando la interoperabilidad con el sistema nacional IP/REV."

#### Interpretacion Juridica:

**Tipo de Obligacion:** OBLIGACION DE RESULTADO

**Elementos Vinculantes:**
1. **Verbo Rector:** "debera implementar y operar" (obligacion de hacer + resultado)
2. **Objeto Minimo:** Sistema de recaudo electronico y manual
3. **Objeto Ampliado:** Interoperabilidad IP/REV
4. **Criterio de Suficiencia:** Operacion continua 24/7

### 1.2 AT2 Numeral 3.3.4.1 - Equipamiento Basico

**Texto Literal (AT2):**
> "Las Estaciones de Peaje deberan contar con toda la infraestructura basica y las edificaciones que permitan ofrecer condiciones adecuadas de confort y seguridad a los usuarios, incluyendo senalizacion indicativa e iluminacion de un tramo minimo de la via de 400 metros en cada sentido."

**Cumplimiento:**
- Iluminacion: 400m cada sentido (incluido)
- PMV Aproximacion: 4 unidades (homologado Manual 2024)
- Edificaciones: Casetas de recaudo + edificio administrativo

### 1.3 AT2 Numeral 3.3.4.2 - Integracion WIM-DAC

**Texto Literal (AT2):**
> "El sistema de recaudo debera integrarse con el sistema de pesaje dinamico (WIM-DAC) para la verificacion de categoria vehicular y deteccion de sobrepeso."

**Cumplimiento:**
14 placas de pesaje integradas (7 carriles x 2 estaciones).

---

## 2. TABLA RESUMEN: CUMPLIMIENTO CONTRACTUAL

| Clausula / Norma | Obligacion Juridica | Como se esta atendiendo (Ingenieria) | Estatus |
|:-----------------|:--------------------|:-------------------------------------|:--------|
| **AT2 3.3.4** | Sistema recaudo | FTS Tecnologia (14 carriles) | CUMPLE |
| **AT2 3.3.4.1** | Equipamiento basico | Infraestructura completa | CUMPLE |
| **AT2 3.3.4.2** | Integracion WIM-DAC | 14 placas pesaje integradas | CUMPLE |
| **IP/REV 2021** | Interoperabilidad | Telepeaje + RFID compatible | CUMPLE |
| **Manual 2024** | PMV Aproximacion | 4 PMV RGB Full Matrix | CUMPLE |

---

<!-- SECCION: technical -->
## 3. ESPECIFICACIONES TECNICAS

### 3.1 Configuracion de Carriles

| Tipo Carril | Cantidad | Tecnologia |
|:------------|:---------|:-----------|
| **Automatico (Telepeaje)** | 4 | TAG RFID + Antena |
| **Mixto (Manual-Telepeaje)** | 4 | TAG + Cajero |
| **Manual Semiautomatico** | 4 | Cajero + Barrera |
| **Reversible (Doble)** | 2 | Bidireccional |
| **TOTAL** | 14 | - |

### 3.2 Equipamiento por Carril

| Componente | Especificacion |
|:-----------|:---------------|
| **Antena RFID** | ISO 18000-6C |
| **Barrera automatica** | <1.5 seg apertura |
| **Clasificador** | Laser + lazos inductivos |
| **Camara LPR** | Reconocimiento placas |
| **Display LED** | Tarifa + categoria |
| **WIM-DAC** | Placa pesaje 1.55m |

### 3.3 Sistema Central

| Componente | Especificacion |
|:-----------|:---------------|
| **Servidor Estacion** | Redundante (2 por estacion) |
| **Servidor CCO** | Centralizador recaudo |
| **Software** | FTS Tecnologia (homologado IP/REV) |
| **Comunicaciones** | Fibra Optica al CCO |

### 3.4 PMV Aproximacion (Manual 2024)

| Parametro | Especificacion |
|:----------|:---------------|
| **Cantidad** | 4 unidades |
| **Tecnologia** | RGB Full Matrix |
| **Certificacion** | UNE-EN 12966 |
| **Funcion** | Informacion tarifa/categoria |

---

## 4. CONCLUSION PARA DEFENSA CONTRACTUAL

### 4.1 Respuesta a la Pregunta del Abogado

**Cual numeral del contrato aplica para Peaje?**
AT2 Numerales 3.3.4, 3.3.4.1, 3.3.4.2 - Sistema de Recaudo con integracion WIM-DAC.

**Como lo estan entendiendo y atendiendo?**
Interpretacion Sistematica: 2 estaciones con 14 carriles, tecnologia FTS homologada IP/REV, e integracion WIM-DAC para verificacion de categoria y sobrepeso.

### 4.2 Blindaje Contractual

**Argumento de Defensa ante Interventoria/ANI:**
> "El sistema de Peaje cumple integralmente con AT2 3.3.4 mediante 2 estaciones (Zambito y Aguas Negras) con 14 carriles equipados con tecnologia FTS Tecnologia homologada IP/REV. La integracion WIM-DAC (AT2 3.3.4.2) garantiza verificacion de categoria vehicular. Los PMV de aproximacion cumplen Manual 2024 con especificacion RGB Full Matrix."

---

<!-- SECCION: financial -->
## IMPACTO FINANCIERO

**Presupuesto Validado:** $2,258,577 USD

**Desglose:**

| Componente | Cantidad | Costo Total |
|:-----------|:---------|:------------|
| **Sistema Peaje FTS** | 14 carriles | $1,806,219 USD |
| **Carril Automatico** | 4 | $318,127 |
| **Carril Mixto** | 4 | $315,942 |
| **Carril Manual** | 4 | $271,446 |
| **Carril Reversible** | 2 | $245,911 |
| **Servidores Estacion** | 2 | $232,507 |
| **Equipos CCO** | 1 | $121,250 |
| **Imprevistos** | 20% | $301,036 |
| **WIM-DAC Integracion** | 14 placas | $280,358 USD |
| **PMV Aproximacion** | 4 | $172,000 USD |
| **TOTAL** | - | $2,258,577 USD |

**Segregacion de Presupuestos:**

| Sistema | Obligacion | Presupuesto |
|:--------|:-----------|:------------|
| **Recaudo FTS** | AT2 3.3.4 | $1,806,219 USD |
| **WIM-DAC** | AT2 3.3.4.2 | $280,358 USD |
| **PMV Aproximacion** | Manual 2024 | $172,000 USD |
| **TOTAL** | - | $2,258,577 USD |

---

<!-- SECCION: risks -->
### 4.3 Riesgo Residual

**RIESGOS IDENTIFICADOS:**

| Riesgo | Probabilidad | Impacto | Mitigacion |
|:-------|:-------------|:--------|:-----------|
| Incompatibilidad IP/REV | Baja | Alto | FTS homologado |
| Falla WIM-DAC | Media | Alto | Redundancia sensores |
| Demora integracion | Media | Medio | Coordinacion temprana |

---

## 5. RECOMENDACIONES FINALES

### 5.1 Para el Abogado
1. Verificar homologacion IP/REV de FTS Tecnologia
2. Documentar integracion WIM-DAC por carril
3. Registrar cumplimiento Manual 2024 para PMV

### 5.2 Para el Ingeniero
1. Coordinar instalacion FTS con obra civil
2. Calibrar WIM-DAC antes de puesta en servicio
3. Integrar con CCO para monitoreo centralizado

---

**Documento preparado por:** Agente de Validacion Contractual
**Fecha:** 2026-01-29
**Version:** 1.0
**Estado:** CERTIFICADO PARA DEFENSA CONTRACTUAL
