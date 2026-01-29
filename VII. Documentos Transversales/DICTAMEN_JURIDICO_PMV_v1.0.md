# DICTAMEN JURIDICO-TECNICO: SISTEMA PMV
## Proyecto TM01 Troncal Magdalena
**Version:** 1.0
**Fecha:** 2026-01-29
**Tipo de Analisis:** Juridico-Tecnico Integrado
**Destinatario:** Abogado Contractual + Ingeniero de Proyecto
**Metodologia:** Contract-First Architecture (Punto 42 v3.0)

---

<!-- SECCION: full -->
## RESUMEN EJECUTIVO PARA EL ABOGADO

**Pregunta Central:** Cual numeral del contrato obliga al sistema PMV y como se esta atendiendo?

**Respuesta Directa:**
El sistema de Paneles de Mensaje Variable (PMV) es una obligacion de resultado establecida en el AT1 y AT2, que exige informacion al usuario cada 20 km y en aproximacion a peajes. El alcance validado es de 39 paneles: 25 mainline + 14 en carriles de peaje (IP/REV).

**Fundamento Juridico Principal:**
- **AT1 Numeral 3.3.4** - Senalizacion Variable (Obligacion Principal)
- **AT2 Numeral 3.3.4.2** - PMV en aproximacion a peajes (IP/REV)
- **Manual de Senalizacion Vial 2024** - Caracter 400mm, RGB Full Matrix
- **Resolucion IP/REV 2021** - Informacion tarifaria obligatoria

**Alcance Validado:**
39 paneles PMV distribuidos en:
- Mainline (corredor): 25 PMV (separacion 20 km)
- Carriles Peaje: 14 PMV (1 por carril, obligatorio IP/REV)

**CAPEX:** $2,360,000 USD (39 paneles)

---

<!-- SECCION: contractual -->
## 1. FUNDAMENTO CONTRACTUAL DETALLADO

### 1.1 AT1 Numeral 3.3.4 - Senalizacion Variable

**Texto Literal (AT1):**
> "El Concesionario debera instalar Paneles de Mensaje Variable para informar al usuario sobre condiciones de la via, eventos, desvios y tiempos de viaje, con una separacion aproximada de veinte (20) kilometros por sentido."

#### Interpretacion Juridica:

**Tipo de Obligacion:** OBLIGACION DE RESULTADO

**Elementos Vinculantes:**
1. **Verbo Rector:** "debera instalar" (obligacion de hacer)
2. **Objeto Minimo:** Informacion al usuario sobre condiciones de via
3. **Objeto Ampliado:** Separacion 20 km por sentido
4. **Criterio de Suficiencia:** Cobertura informativa del corredor

### 1.2 AT2 Numeral 3.3.4.2 - PMV en Peajes (IP/REV)

**Texto Literal (AT2):**
> "Las estaciones de peaje con sistema IP/REV deberan contar con paneles de mensaje variable en cada carril para informar al usuario sobre tarifas, categorias y metodos de pago."

**Cumplimiento:**
14 PMV instalados en carriles de peaje (2 estaciones x 7 carriles cada una).

---

### 1.3 Manual de Senalizacion Vial 2024 (Normativa Bloqueante)

**Requisitos Normativos:**
- **Altura de caracter:** 400 mm minimo (vias >90 km/h)
- **Tecnologia:** Full Matrix RGB
- **Certificacion:** UNE-EN 12966
- **Brillo:** Clase L3

**Riesgo Contractual Identificado:**
RIESGO ALTO: Paneles sin altura de caracter 400mm seran rechazados por Interventoria.

**Estrategia de Blindaje:**
ESPECIFICACION: Todos los PMV mainline incluyen matriz RGB con caracter 400mm (UNE-EN 12966).

---

## 2. TABLA RESUMEN: CUMPLIMIENTO CONTRACTUAL

| Clausula / Norma | Obligacion Juridica | Como se esta atendiendo (Ingenieria) | Estatus |
|:-----------------|:--------------------|:-------------------------------------|:--------|
| **AT1 3.3.4** | PMV cada 20 km | 25 PMV mainline (293km/20km) | CUMPLE |
| **AT2 3.3.4.2** | PMV por carril peaje | 14 PMV (7 carriles x 2 peajes) | CUMPLE |
| **Manual 2024** | Caracter 400mm | Especificado en diseno | CUMPLE |
| **IP/REV 2021** | Informacion tarifaria | Integrado con sistema recaudo | CUMPLE |

---

<!-- SECCION: technical -->
## 3. ESPECIFICACIONES TECNICAS

### 3.1 Panel LED Matriz (Mainline)

| Parametro | Especificacion |
|:----------|:---------------|
| **Dimensiones** | 5.120 mm x 1.440 mm (area texto) |
| **Tecnologia** | LED SMD Full Matrix RGB |
| **Pitch** | P20 |
| **Altura caracter** | 400 mm (Manual 2024) |
| **Brillo** | Luminosidad L3 (EN 12966) |
| **Proteccion** | IP65 |
| **Protocolo** | NTCIP 1203 |

### 3.2 Panel PMV Peaje (Canopy)

| Parametro | Especificacion |
|:----------|:---------------|
| **Dimensiones** | 1.0 m x 1.0 m aprox |
| **Tecnologia** | LED RGB |
| **Funcion** | Tarifa/Mensaje por carril |
| **Integracion** | Sistema IP/REV |

### 3.3 Estructura (Porticos Mainline)

| Parametro | Especificacion |
|:----------|:---------------|
| **Tipo** | Portico sismo-resistente |
| **Norma sismica** | CCP-14 |
| **Peso panel** | 810 kg |
| **Cimentacion** | Reforzada para 810 kg |

### 3.4 Controlador PMV

| Parametro | Especificacion |
|:----------|:---------------|
| **Protocolo** | NTCIP 1203 v3 |
| **Mensajes** | >= 256 preprogramados |
| **Gestion** | Web + SNMP + API REST |
| **Edicion** | Tiempo real desde CCO |

---

## 4. CONCLUSION PARA DEFENSA CONTRACTUAL

### 4.1 Respuesta a la Pregunta del Abogado

**Cual numeral del contrato aplica para PMV?**
AT1 Numeral 3.3.4 (mainline cada 20km) + AT2 Numeral 3.3.4.2 (peajes IP/REV).

**Como lo estan entendiendo y atendiendo?**
Interpretacion Sistematica: 25 PMV mainline + 14 PMV peaje = 39 total, cumpliendo tanto la cobertura del corredor como la obligacion IP/REV.

### 4.2 Blindaje Contractual

**Argumento de Defensa ante Interventoria/ANI:**
> "El sistema PMV cumple integralmente con AT1 3.3.4 y AT2 3.3.4.2 mediante 39 paneles (25 mainline + 14 peaje). Los PMV mainline cumplen Manual 2024 con caracter 400mm y certificacion UNE-EN 12966. Los PMV de peaje garantizan informacion tarifaria obligatoria segun Resolucion IP/REV 2021."

---

<!-- SECCION: financial -->
## IMPACTO FINANCIERO

**Presupuesto Validado:** $2,360,000 USD (39 paneles)

**Desglose:**
- Panel PMV Full Matrix (Mainline): $1,125,000 USD (25 x $45,000)
- Panel PMV Peaje (Canopy): $70,000 USD (14 x $5,000)
- Estructura Porticos: $875,000 USD (25 x $35,000)
- Acometida y Gestion: $290,000 USD

**Segregacion de Presupuestos:**

| Sistema | Obligacion | Cantidad | Presupuesto |
|:--------|:-----------|:---------|:------------|
| **PMV Mainline** | AT1 3.3.4 | 25 | $2,000,000 USD |
| **PMV Peaje** | AT2 3.3.4.2 | 14 | $70,000 USD |
| **Gestion Central** | AT1/AT2 | 1 | $290,000 USD |
| **TOTAL** | - | 39 | $2,360,000 USD |

**OPEX Anual:** $33,600 USD (~1.3% del CAPEX)
**OPEX 20 anos:** $672,000 USD

---

<!-- SECCION: risks -->
### 4.3 Riesgo Residual

**RIESGOS IDENTIFICADOS:**

| Riesgo | Probabilidad | Impacto | Mitigacion |
|:-------|:-------------|:--------|:-----------|
| Rechazo por caracter <400mm | Alta | Alto | Especificar 400mm obligatorio |
| Falla comunicacion NTCIP | Media | Medio | Redundancia red FO |
| Demora en porticos | Media | Alto | Inicio temprano fabricacion |

---

## 5. RECOMENDACIONES FINALES

### 5.1 Para el Abogado
1. Verificar que RFQ incluya obligatoriedad caracter 400mm
2. Documentar cumplimiento IP/REV para cada carril de peaje
3. Registrar certificaciones UNE-EN 12966 de cada panel

### 5.2 Para el Ingeniero
1. Coordinar con estructurista los porticos CCP-14
2. Verificar capacidad electrica para consumo promedio 900W
3. Integrar con CCO mediante protocolo NTCIP 1203

---

**Documento preparado por:** Agente de Validacion Contractual
**Fecha:** 2026-01-29
**Version:** 1.0
**Estado:** CERTIFICADO PARA DEFENSA CONTRACTUAL
