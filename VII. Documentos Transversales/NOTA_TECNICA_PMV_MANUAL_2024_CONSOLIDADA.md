# 📘 NOTA TÉCNICA CONSOLIDADA: ESPECIFICACIONES PMV - MANUAL 2024
## Proyecto TM01 Troncal Magdalena

**Fecha:** 27 de Enero 2026  
**Versión:** 1.0  
**Aplicación:** Concesiones Viales 4G/5G, Vías de Alta Velocidad (>90 km/h)  
**Marco Legal:** Manual de Señalización Vial 2024 (Cap. 2.7), Contrato de Concesión (AT1/AT2/AT3)

---

## 🎯 RESUMEN EJECUTIVO

**Especificación para RFQ:**

> "Suministro de Sistema de Mensajería Variable (SMV) para vía de 120 km/h, cumpliendo Manual de Señalización 2024. Tecnología LED Matriz Completa o Híbrida (Texto + 1 Gráfico a color). Capacidad para 3 líneas de texto con altura de carácter mínima de 400 mm. Certificación UNE-EN 12966 y gabinete IP65. Incluye estructura de soporte tipo Pórtico con gálibo >5.5m."

---

## 📋 TABLA DE CONTENIDO

1. [Justificación Contractual](#1-justificación-contractual)
2. [Especificaciones del Panel LED](#2-especificaciones-del-panel-led)
3. [Especificaciones de Estructura de Soporte](#3-especificaciones-de-estructura-de-soporte)
4. [Normativa UNE-EN 12966](#4-normativa-une-en-12966)
5. [Normativa CCP-14 y AASHTO](#5-normativa-ccp-14-y-aashto)
6. [Requisitos RETIE 2024](#6-requisitos-retie-2024)
7. [Señalización y Protección del Pórtico](#7-señalización-y-protección-del-pórtico)
8. [Requisitos Documentales](#8-requisitos-documentales)
9. [Preguntas Frecuentes](#9-preguntas-frecuentes)

---

## 1. JUSTIFICACIÓN CONTRACTUAL

### 1.1 Base Legal

La implementación de estas especificaciones es **obligatoria** bajo la cláusula de actualización normativa (Sección 4.11 de la Parte General del Contrato).

**Apéndice Técnico 2** exige que los paneles cumplan con:
- Manual vigente o "la norma que lo sustituya"
- Esto hace **mandatorio** el uso de los parámetros del Manual 2024 sobre versiones anteriores (2015)

### 1.2 Normativa Sobreviniente

**Resolución 20213040035125 (IP/REV 2021), Art 2.9.9:**
> "Los carriles IP/REV del peaje deben contar con pantallas de información alfanuméricas LED... (al menos uno por cada carril de peaje)."

**Implicación:** Esto explica el salto de 25 unidades (contractual AT1) a 39 unidades (real):
- **25 PMV de vía** (Contractual AT1): Paneles grandes en pórticos/banderolas
- **+14 Displays de carril** (IP/REV 2021): Pantallas alfanuméricas LED obligatorias por carril de peaje

---

## 2. ESPECIFICACIONES DEL PANEL LED (EQUIPO ITS)

### 2.1 Parámetros Críticos para Vías de 120 km/h

| Parámetro | Especificación | Fuente Normativa |
|:----------|:---------------|:-----------------|
| **Tipología** | Panel de Matriz Completa (Full Matrix) o Tipo 1 (Híbrido) | Manual 2024, Sec 2.7.3 |
| **Capacidad de Texto** | Mínimo 3 líneas × 15-16 caracteres por línea | Manual 2024, Tabla 2-20 |
| **Zona Gráfica** | Obligatoria. Pictogramas a todo color. Ubicación: izquierda del texto | Manual 2024, Sec 2.7.4.3 |
| **Altura de Carácter** | **Mínimo 400 mm** | Manual 2024, Tabla 2-20 ⭐ **CRÍTICO** |
| **Luminancia** | **Clase L3** (máxima brillantez) | UNE-EN 12966 |
| **Protección** | Gabinete **IP65** o superior | UNE-EN 12966 |
| **Protocolo** | NTC-ISO 15784 **O** DATEX II (UNE-EN 16157-4) | Manual 2024, Sec 2.7.5 |

### 2.2 Justificación Altura de Carácter (400 mm)

**Según Tabla 2-20 y 2-22 del Manual 2024:**

Para velocidades **>90 km/h**, se requiere:
- **Altura de carácter:** 400 mm
- **Distancia de legibilidad:** h × 500 a 620 = 400 mm × 500 = **200 metros**
- **Tiempo de reconocimiento:** **~6 segundos** (Tabla 2-22)

**Esto hace obligatorio:**
- Panel grande
- Pórtico (no banderola lateral)
- Zona despejada
- Cálculo de viento riguroso

### 2.3 Certificación de Desempeño

**Norma:** UNE-EN 12966 (Desempeño visual y estructural del panel)

**Parámetros certificados:**
- **Luminancia:** Clase L3
- **Ángulo de visión:** Clase B6/B7
- **Protección:** IP65 (polvo + chorros de agua)
- **Hermeticidad:** Gabinete con cerradura antivandálica

---

## 3. ESPECIFICACIONES DE ESTRUCTURA DE SOPORTE (PÓRTICO)

### 3.1 Tipo de Estructura

**Dado:**
- Ancho de calzada: 2 carriles + berma
- Velocidad: 120 km/h

**Se requiere:** Estructura tipo **pórtico**

### 3.2 Normativa de Diseño

⚠️ **IMPORTANTE:** El diseño **NO** se rige por NSR-10 únicamente, sino por normas de puentes y estructuras viales especiales.

| Aspecto | Norma Aplicable | Alcance |
|:--------|:----------------|:--------|
| **Diseño Sísmico** | **CCP-14** (Norma Colombiana de Diseño de Puentes) | Parámetros sísmicos, cimentación |
| **Cargas de Viento y Fatiga** | **AASHTO LRFD** Specifications for Structural Supports for Highway Signs (2015+) | Carga de vela, dimensionamiento estructura metálica |
| **Gálibo (Altura libre)** | Manual 2024 | Mínimo 5.50 m + 30 cm margen = **5.80 m** |
| **Seguridad Pasiva** | Manual 2024 + ANSV | Barreras de contención vehicular certificadas |

### 3.3 Jerarquía Normativa

```
┌─────────────────────────────────────────────────────────────┐
│  ESTRUCTURAS ESPECIALES (Pórticos PMV)                      │
└─────────────────────┬───────────────────────────────────────┘
                      ↓
        ┌─────────────┴─────────────┐
        ↓                           ↓
┌───────────────┐         ┌──────────────────┐
│   CCP-14      │         │  AASHTO LRFD     │
│   (Sismo)     │         │  (Viento/Fatiga) │
└───────────────┘         └──────────────────┘
```

**Error común que debe evitar:** Usar NSR-10 sola (incorrecto para estructuras viales)

### 3.4 Gálibo y Protección

**Gálibo:**
- Gálibo máximo de la vía: 5.50 m
- **+ 30 cm obligatorios** (margen de seguridad)
- **Total:** 5.80 m desde rasante

**Protección:**
- Barreras de contención vehicular **recomendadas** → en práctica **obligatorias** en vías ≥90 km/h
- Diseño según **Metodología ANSV** para sistemas de contención vehicular

---

## 4. NORMATIVA UNE-EN 12966

### 4.1 ¿Qué es la norma UNE-EN 12966?

**Definición:**
> Normativa europea que regula los requisitos de rendimiento para las señales de mensaje variable utilizadas para la instrucción y orientación de los usuarios en la vía (terrenos públicos, privados y túneles).

**Aspectos regulados:**
1. **Rendimiento Visual:** Luminancia (brillo), razón de luminancia (contraste), ancho del haz de luz (ángulo de visión), uniformidad del color
2. **Rendimiento Ambiental:** Resistencia a temperatura, agua y polvo
3. **Desempeño Estructural y Electromagnético (EMC)**

### 4.2 ¿Dónde se referencia en el Manual 2024?

**Capítulo 2 (Señales Verticales), Sección 2.7 (Sistema de señalización variable)**

#### 4.2.1 Parámetros de Luminancia y Color (Sección 2.7.4.1 y 2.7.4.3)

**Exigencia:**
- Ajustar parámetros de luminancia (intensidad de luz) y color según UNE-EN 12966
- **Luminancia clase L3** (más brillante) para visibilidad en condiciones climáticas adversas

#### 4.2.2 Dimensiones y Diseño de Caracteres (Sección 2.7.4.3)

**Exigencia:**
- Dimensiones típicas y tolerancias de textos y pictogramas
- **Ejemplo:** Pictogramas circulares requieren mínimo **32×32 píxeles**

#### 4.2.3 Cálculo de Distancias de Legibilidad (Sección 2.7.4.3)

**Fórmula:**
```
Distancia de legibilidad = Altura de carácter × Factor (500-620)
```

**Para PMV de 400 mm:**
```
Distancia = 400 mm × 500 = 200 metros
```

#### 4.2.4 Ancho de Haz (Ángulo de Visión)

**Clasificación:** Clases B1 a B7

**Exigencia para vías de 120 km/h:** Clase **B6** o **B7**

**Determina:** Ángulo horizontal y vertical desde el cual la señal se ve correctamente sin perder brillo o contraste

#### 4.2.5 Tiempo de Reconocimiento

**Cálculo:** Basado en ejemplos y fórmulas de UNE-EN 12966

**Estimado:** Entre **4 y 6 segundos** para vías de 120 km/h

### 4.3 Resumen para Proveedores

**Para cumplir con el contrato y el Manual 2024, debe exigir:**

✅ **Certificación de conformidad con UNE-EN 12966**, especialmente:
- Clases de luminancia (L3)
- Color (uniformidad)
- Ancho de haz (B6/B7)

---

## 5. NORMATIVA CCP-14 Y AASHTO

### 5.1 Norma CCP-14 (Diseño Sísmico)

**Nombre completo:** Norma Colombiana de Diseño de Puentes LRFD 2014

**Aplicación:** Parámetros sísmicos para pórticos PMV

**Alcance:**
- Cimentación
- Sismo-resistencia
- Cargas verticales y horizontales

### 5.2 Norma AASHTO LRFD (Soportes Estructurales)

**Nombre completo:** AASHTO LRFD Specifications for Structural Supports for Highway Signs, Luminaires, and Traffic Signals (2015+)

⚠️ **IMPORTANTE:** NO es la AASHTO general de puentes, sino una versión **especializada** para soportes de señales.

**Aplicación:** Diseño de estructura metálica del pórtico

**Alcance:**
- Cargas de viento (carga de vela)
- Fatiga
- Especificaciones de fabricación
- Especificaciones de montaje

### 5.3 Función de la Norma (Complementariedad)

**El Manual 2024 establece:**

> Dado que los pórticos para paneles de mensajería variable son "estructuras especiales", el diseño debe basarse primordialmente en la **Norma Colombiana de Diseño Sísmico de Puentes (CCP-14)** para los parámetros sísmicos, utilizando la norma **AASHTO LRFD** mencionada anteriormente como complemento técnico para los demás aspectos de diseño.

### 5.4 Alcance Técnico (Tabla 2-17 del Manual)

**AASHTO LRFD sirve como guía para:**
- Diseñar
- Fabricar
- Erigir

**Cubre:**
- Especificaciones estructurales no detalladas en normativa de edificaciones generales

### 5.5 Resumen para Ingeniero Estructural

**Para pórticos de PMV en vía de 120 km/h:**

1. **Cimentación y sismo-resistencia:** CCP-14 + NSR-10
2. **Estructura metálica (vigas, columnas, anclajes):** AASHTO LRFD
3. **Verificación de cargas de viento:** AASHTO LRFD

---

## 6. REQUISITOS RETIE 2024

### 6.1 Aplicabilidad

**Resolución 40117 de 2024 (Nuevo RETIE)**

⚠️ **IMPORTANTE:** Aunque el panel opera a 24 Vcc (muy baja tensión), **SÍ requiere certificación RETIE** por:

1. **Fuente de alimentación:**
   - Si es solar: Paneles fotovoltaicos, reguladores, baterías (Libro 2 RETIE)
   - Si es red (110V/220V): Acometida, tablero, rectificador (baja tensión regulada)

2. **Exigencia explícita del Manual 2024 (Numeral 2.7.6):**
   > "Las instalaciones eléctricas de todos los componentes deben cumplir con la Norma RETIE"

3. **Estructura metálica:** Pórtico es un pararrayos natural → Requiere puesta a tierra

### 6.2 Tipo de Certificación Requerida

**Certificación Plena** (Artículo 4.3.2 RETIE 2024)

**Razones:**
1. Infraestructura vial (estatal/concesionada)
2. Instalación en espacio público
3. Riesgo de responsabilidad fiscal y seguridad pública

### 6.3 Documentos Requeridos

#### 6.3.1 Declaración de Cumplimiento del Constructor

**Quién la firma:** Ingeniero competente que dirigió o construyó la instalación eléctrica

**Formato:** Artículo 4.3.6.2 RETIE 2024

#### 6.3.2 Dictamen de Inspección (Organismo ONAC)

**Formato:** **Anexo 5** - Formato para dictamen de inspección uso final

**Emitido por:** Inspector de organismo acreditado por ONAC

**Valida:**
- Acometida (si hay)
- Sistema de puesta a tierra (obligatorio)
- Protecciones (DPS, breakers)

### 6.4 Certificados de Producto

**Según Tabla 2.1.2.1.a del RETIE 2024:**

| Ítem | Componente | Certificado Requerido |
|:-----|:-----------|:----------------------|
| 52 | Tableros/Gabinetes | Certificado de producto |
| 5 | Conductores/Cables | Certificado de producto |
| 28 | Interruptores/Breakers | Certificado de producto |
| 17 | DPS (Protecciones contra sobretensión) | Certificado de producto |
| - | Paneles solares y baterías (si aplica) | Certificado de producto |

### 6.5 Sistema de Puesta a Tierra (SPT)

**Obligatorio** para:
- Estructura metálica del pórtico (protección contra rayos)
- Gabinete electrónico (protección contra fallas)

**Requisitos:**
- Resistencia de tierra: **≤ 10 ohmios** (típico para electrónicos)
- Protocolo de medición certificado
- Conexión de todas las partes metálicas expuestas

### 6.6 Protección DPS

**Dispositivos de Protección contra Sobretensiones**

**Ubicación:**
- Acometida (AC o DC)
- Líneas de datos
- Todos conectados a barra de tierra

### 6.7 Autonomía (Si es Solar)

**Manual 2024 exige:**
> "La solución de alimentación ininterrumpida [...] por panel fotovoltaico con respaldos de baterías con autonomía de por lo menos **48 horas**"

### 6.8 Resumen para Interventoría

**Para recibo del ítem de pago, entregar:**

1. ✅ **Certificado RETIE:** Dictamen de inspección (Anexo 5) por organismo ONAC
2. ✅ **Medición de Tierras:** Protocolo de resistencia de malla de tierra (≤ 5-10 ohmios)
3. ✅ **Protección DPS:** Dispositivos instalados y conectados a tierra
4. ✅ **Certificados de Producto:** Todos los componentes críticos

---

## 7. SEÑALIZACIÓN Y PROTECCIÓN DEL PÓRTICO

### 7.1 Señalización Retrorreflectiva del Pórtico (Columnas)

**No basta con pintar el poste.** El Manual exige tratar las columnas como un objeto contundente visible de noche.

**Requisitos:**
- **Material:** Pintura o láminas flexibles retrorreflectivas
- **Patrón:** Franjas alternadas **amarillo y negro**
- **Diseño:** Franjas de **30 cm de ancho**, inclinación **45°** (descendiendo hacia el carril)
- **Altura de aplicación:** Desde el piso hasta **2.0 metros**
- **Tipo de Material:** Retrorreflectivo **Tipo IV** o superior (Alta Intensidad Prismática)

### 7.2 Protección "Pasiva" de la Base (Defensas Metálicas)

**Exigencia:**

Si el pórtico se encuentra dentro de la **zona despejada** (zona de seguridad lateral), es **obligatoria** la instalación de **barreras de contención vehicular** (defensas metálicas certificadas).

**Criterio de Diseño:**
- Aplicar **Metodología ANSV** para diseño, selección e instalación de sistemas de contención vehicular
- No usar cualquier defensa (debe ser certificada)

### 7.3 El Gabinete (Caja de Control)

**Requisitos:**

| Aspecto | Especificación |
|:--------|:---------------|
| **Hermeticidad** | **IP65** (protección total contra polvo y chorros de agua) |
| **Cerradura** | Seguridad antivandálica |
| **Autonomía (Solar)** | Respaldo de baterías con autonomía mínima **48 horas** |

### 7.4 Items Adicionales para Presupuesto

**Calcular:**

1. **Lámina Retrorreflectiva Tipo IV (Amarilla/Negra):** Aprox. **3-4 m²** por pórtico (cubrir patas hasta 2.0m)
2. **Defensas Metálicas Certificadas:** **30-50 metros lineales** de defensa + terminales
3. **Sistema de Puesta a Tierra:** Varillas, cableado desnudo, soldadura exotérmica (RETIE)

---

## 8. REQUISITOS DOCUMENTALES

### 8.1 Para Compras/Interventoría (No Objeción)

**El proveedor debe entregar:**

1. ✅ **Certificados de Conformidad de Producto (UNE-EN 12966):** Expedidos por organismo acreditado
2. ✅ **Memorias de cálculo estructural del pórtico:** Avaladas por ingeniero civil, citando **CCP-14** y **AASHTO LRFD**
3. ✅ **Pruebas de integración:** Comunicación nativa bajo protocolo **NTC-ISO 15784/DATEX II**
4. ✅ **Certificado RETIE:** Dictamen de inspección (Anexo 5) por organismo ONAC
5. ✅ **Medición de Tierras:** Protocolo de resistencia (≤ 10 ohmios)
6. ✅ **Certificados de Producto:** Tableros, cables, breakers, DPS, paneles solares (si aplica)

### 8.2 Documentación "As-Built"

**Entregar:**
- Planos de instalación final
- Fichas técnicas de equipos instalados
- Manuales de operación y mantenimiento
- Garantías registradas

---

## 9. PREGUNTAS FRECUENTES

### 9.1 ¿Cuál es el ancho mínimo de berma?

**Respuesta:** El Manual de Señalización 2024 **no especifica** un ancho mínimo de berma para PMV.

**Referencia:** Consultar **Manual de Diseño Geométrico de Carreteras** (INVÍAS) para anchos de berma según tipo de vía.

**Para vías de 120 km/h (Autopista):**
- Berma exterior: **2.50 m** (típico)
- Berma interior: **1.00 m** (típico)

### 9.2 ¿Qué norma rige diseños sísmicos de puentes?

**Respuesta:** **CCP-14** (Norma Colombiana de Diseño de Puentes LRFD 2014)

**Aplicación para PMV:**
- Diseño sísmico del pórtico
- Cimentación
- Cargas verticales y horizontales

### 9.3 ¿Cuál es el tiempo de atención de incidentes?

**Respuesta:** El Manual de Señalización 2024 **no especifica** tiempos de atención de incidentes.

**Referencia:** Consultar **AT4 (Indicadores)** del contrato de concesión.

**Típico para concesiones 4G:**
- Incidente menor: **30 minutos**
- Incidente mayor: **60 minutos**
- Accidente con víctimas: **15 minutos** (llegada primera unidad)

### 9.4 ¿Qué es la UNE-EN 12966 y dónde se referencia?

**Respuesta:** Ver [Sección 4: Normativa UNE-EN 12966](#4-normativa-une-en-12966)

**Resumen:**
- Norma europea para rendimiento de paneles de mensaje variable
- Referenciada en Manual 2024, Capítulo 2, Sección 2.7
- Regula luminancia (L3), ángulo de visión (B6/B7), protección (IP65)

### 9.5 ¿Necesito RETIE si el panel opera a 24 Vcc?

**Respuesta:** **SÍ**, ver [Sección 6: Requisitos RETIE 2024](#6-requisitos-retie-2024)

**Razones:**
1. Fuente de alimentación (solar o red) opera en baja tensión regulada
2. Exigencia explícita del Manual 2024 (Numeral 2.7.6)
3. Estructura metálica requiere puesta a tierra (protección contra rayos)

### 9.6 ¿Autodeclaración o Dictamen ONAC?

**Respuesta:** **AMBOS**

1. **Declaración de Cumplimiento:** Firmada por ingeniero constructor (obligatoria)
2. **Dictamen de Inspección (ONAC):** Validación por tercero independiente (obligatoria para infraestructura pública)

**Formato:** Anexo 5 - Formato para dictamen de inspección uso final

### 9.7 ¿Puedo usar NSR-10 para diseñar el pórtico?

**Respuesta:** **NO** (solo NSR-10)

**Correcto:**
- **CCP-14** (sismo) + **AASHTO LRFD** (viento/fatiga)
- NSR-10 se usa como complemento, no como norma principal

**Razón:** Pórticos PMV son "estructuras especiales" viales, no edificaciones

---

## 📎 ANEXOS Y REFERENCIAS

### Documentos del Proyecto

- `II. Apendices Tecnicos/AT1_Alcance_Proyecto_v1.0.md`
- `II. Apendices Tecnicos/AT2_Especificaciones_Tecnicas_v1.0.md`
- `II. Apendices Tecnicos/AT4_Indicadores_v1.0.md`
- `IV. Ingenieria Basica/04_T04_Especificaciones_Tecnicas_PMV_v1.0.md`
- `V. Ingenieria de Detalle/06_T05_Ingenieria_Detalle_PMV_v1.0.md`
- `VII. Documentos Transversales/38_VALIDACION_CONTRACTUAL_PMV_v1.0.md`

### Normativa Externa

- Manual de Señalización Vial 2024 (Capítulo 2, Sección 2.7)
- UNE-EN 12966 (Paneles de Mensaje Variable - Rendimiento visual)
- UNE-EN 16157-4 (DATEX II - Intercambio de datos)
- CCP-14 (Norma Colombiana de Diseño de Puentes LRFD 2014)
- AASHTO LRFD Specifications for Structural Supports for Highway Signs (2015+)
- Resolución 40117 de 2024 (RETIE)
- Resolución 20213040035125 (IP/REV 2021)

---

**Última actualización:** 27 de Enero 2026  
**Estado:** ✅ DOCUMENTO CONSOLIDADO Y VALIDADO  
**Autor:** Equipo Técnico TM01
