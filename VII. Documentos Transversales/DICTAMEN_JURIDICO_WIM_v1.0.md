# DICTAMEN JURIDICO-TECNICO: SISTEMA WIM
## Proyecto TM01 Troncal Magdalena
**Version:** 1.0
**Fecha:** 2026-01-29
**Tipo de Analisis:** Juridico-Tecnico Integrado
**Destinatario:** Abogado Contractual + Ingeniero de Proyecto
**Metodologia:** Contract-First Architecture (Punto 42 v3.0)

---

<!-- SECCION: full -->
## RESUMEN EJECUTIVO PARA EL ABOGADO

**Pregunta Central:** Cual numeral del contrato obliga al sistema WIM y como se esta atendiendo?

**Respuesta Directa:**
El sistema WIM (Weigh-In-Motion / Pesaje Dinamico) es una obligacion de resultado establecida en el AT2, que exige control de peso vehicular mediante pesaje dinamico (HS-WIM) y basculas estaticas. El alcance comprende 1 Estacion de Pesaje Completa con 2 sistemas dinamicos + 2 estaticos.

**Fundamento Juridico Principal:**
- **AT2 Numeral 3.3.5** - Sistema de Pesaje (Obligacion Principal)
- **AT2 Numeral 3.3.4.2** - Integracion WIM-DAC con Peajes
- **Resolucion 100/2024** - HS-WIM Homologacion
- **Manual de Senalizacion 2024** - Senal Aspa-Flecha 600x600

**Alcance Validado:**
1 Estacion de Pesaje con:
- 2 sistemas dinamicos PAT Traffic (placas 1.55m)
- 2 basculas estaticas Fairbanks Talon 100t
- 4 camaras OCR/LPR
- Senalizacion Aspa-Flecha + PMV

**CAPEX:** $551,425 USD

---

<!-- SECCION: contractual -->
## 1. FUNDAMENTO CONTRACTUAL DETALLADO

### 1.1 AT2 Numeral 3.3.5 - Sistema de Pesaje

**Texto Literal (AT2):**
> "El Concesionario debera implementar y operar estaciones de pesaje para el control de vehiculos de carga, garantizando la deteccion de sobrepeso mediante tecnologia de pesaje dinamico (WIM) y verificacion estatica."

#### Interpretacion Juridica:

**Tipo de Obligacion:** OBLIGACION DE RESULTADO

**Elementos Vinculantes:**
1. **Verbo Rector:** "debera implementar y operar" (obligacion de hacer + resultado)
2. **Objeto Minimo:** Control de peso vehicular
3. **Objeto Ampliado:** Tecnologia WIM + Bascula estatica
4. **Criterio de Suficiencia:** Deteccion y verificacion de sobrepeso

### 1.2 Resolucion 100/2024 - HS-WIM Homologacion

**Requisitos Normativos:**
- Tecnologia HS-WIM (High Speed Weigh-In-Motion)
- Placas de pesaje certificadas
- Evidencia fotografica LPR obligatoria
- Integracion con sistema de sanciones

**Cumplimiento:**
Sistema PAT Traffic con placas 1.55m certificadas + camaras OCR/LPR.

### 1.3 Manual de Senalizacion 2024

**Requisitos:**
- Senal Aspa-Flecha (600x600mm)
- PMV instrucciones vehiculos pesados
- Senalizacion vertical reglamentaria

---

## 2. TABLA RESUMEN: CUMPLIMIENTO CONTRACTUAL

| Clausula / Norma | Obligacion Juridica | Como se esta atendiendo (Ingenieria) | Estatus |
|:-----------------|:--------------------|:-------------------------------------|:--------|
| **AT2 3.3.5** | Estacion pesaje | 1 estacion completa | CUMPLE |
| **AT2 3.3.4.2** | Integracion WIM-DAC | 14 placas en carriles peaje | CUMPLE |
| **Res 100/2024** | HS-WIM | PAT Traffic certificado | CUMPLE |
| **Manual 2024** | Senalizacion | Aspa-Flecha + PMV | CUMPLE |

---

<!-- SECCION: technical -->
## 3. ESPECIFICACIONES TECNICAS

### 3.1 Sistema Dinamico (PAT Traffic)

| Parametro | Especificacion |
|:----------|:---------------|
| **Tecnologia** | HS-WIM Placas 1.55m |
| **Electronica** | DAW100 |
| **Gabinete** | Exterior antivandalismo |
| **Camaras OCR** | 2 por sentido (bascula + fuga) |
| **Comunicacion** | Fibra Optica |

### 3.2 Sistema Estatico (Fairbanks)

| Parametro | Especificacion |
|:----------|:---------------|
| **Modelo** | Fairbanks Talon |
| **Capacidad** | 100 toneladas |
| **Software** | Gestion Bascula (licencia) |
| **Control** | Talanquera + Loop |
| **Display** | Alfanumerico remoto |

### 3.3 Senalizacion (Manual 2024)

| Componente | Especificacion |
|:-----------|:---------------|
| **Aspa-Flecha** | 600x600mm LED |
| **PMV SMV** | Instrucciones vehiculos |
| **Balizas** | LED ambar |

### 3.4 Infraestructura IT

| Componente | Cantidad |
|:-----------|:---------|
| **Servidor Rack** | 2 |
| **Computador Aplicacion** | 2 |
| **Switch PoE** | 2 |
| **UPS 2KVA** | 2 |

---

## 4. CONCLUSION PARA DEFENSA CONTRACTUAL

### 4.1 Respuesta a la Pregunta del Abogado

**Cual numeral del contrato aplica para WIM?**
AT2 Numeral 3.3.5 (Pesaje) + AT2 3.3.4.2 (Integracion WIM-DAC).

**Como lo estan entendiendo y atendiendo?**
Interpretacion Sistematica: 1 estacion con 2 dinamicos + 2 estaticos, tecnologia PAT Traffic/Fairbanks certificada, integracion con peajes via WIM-DAC.

### 4.2 Blindaje Contractual

**Argumento de Defensa ante Interventoria/ANI:**
> "El sistema WIM cumple integralmente con AT2 3.3.5 mediante 1 estacion de pesaje completa ubicada en la Troncal Magdalena (PR4+0100 / RN 4513). La tecnologia PAT Traffic cumple Resolucion 100/2024 (HS-WIM). La integracion WIM-DAC con peajes garantiza verificacion de categoria vehicular segun AT2 3.3.4.2."

---

<!-- SECCION: financial -->
## IMPACTO FINANCIERO

**Presupuesto Validado:** $551,425 USD

**Desglose:**

| Sistema | Componente | Valor |
|:--------|:-----------|:------|
| **Dinamico PAT** | Suministros | $161,357 |
| **Dinamico PAT** | Mano Obra/Servicios | $94,996 |
| **Subtotal Dinamico** | - | $256,353 |
| **Estatico Fairbanks** | Suministros USD | $175,303 |
| **Estatico Fairbanks** | Instalacion | $58,574 |
| **Subtotal Estatico** | - | $267,186 |
| **Reserva Ajustes** | Obra Civil/Calibracion | $27,886 |
| **TOTAL WIM** | - | **$551,425** |

**Segregacion de Presupuestos:**

| Sistema | Obligacion | Presupuesto |
|:--------|:-----------|:------------|
| **WIM Dinamico** | AT2 3.3.5 | $256,353 USD |
| **Bascula Estatica** | AT2 3.3.5 | $267,186 USD |
| **Reserva** | Ajustes | $27,886 USD |
| **TOTAL** | - | $551,425 USD |

---

<!-- SECCION: risks -->
### 4.3 Riesgo Residual

**RIESGOS IDENTIFICADOS:**

| Riesgo | Probabilidad | Impacto | Mitigacion |
|:-------|:-------------|:--------|:-----------|
| Calibracion inicial | Media | Alto | Certificacion PAT Traffic |
| Falla sensores | Baja | Medio | Stock repuestos |
| Integracion sistemas | Media | Medio | Pruebas FAT/SAT |

---

## 5. RECOMENDACIONES FINALES

### 5.1 Para el Abogado
1. Verificar certificacion PAT Traffic (Res 100/2024)
2. Documentar integracion WIM-DAC con peajes
3. Registrar evidencia fotografica LPR

### 5.2 Para el Ingeniero
1. Coordinar obra civil para placas de pesaje
2. Calibrar sistemas antes de puesta en servicio
3. Integrar con CCO para monitoreo centralizado

---

**Documento preparado por:** Agente de Validacion Contractual
**Fecha:** 2026-01-29
**Version:** 1.0
**Estado:** CERTIFICADO PARA DEFENSA CONTRACTUAL
