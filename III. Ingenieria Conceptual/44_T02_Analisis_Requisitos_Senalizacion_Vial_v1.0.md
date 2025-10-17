# T02: ANÁLISIS DE REQUISITOS - SISTEMA DE SEÑALIZACIÓN VIAL
## Proyecto APP Puerto Salgar - Barrancabermeja

**Fecha:** 17/10/2025  
**Sistema:** Señalización Vial (Vertical, Horizontal, Defensas)  
**Responsable:** Ingeniero de Seguridad Vial  
**Versión:** 1.0  

---

## 1. INTRODUCCIÓN

### 1.1 Propósito del Documento

Este documento presenta el **análisis detallado de requisitos** del Sistema de Señalización Vial para el proyecto APP Puerto Salgar - Barrancabermeja, cubriendo:

- Requisitos funcionales de señalización vertical, horizontal y elementos de contención
- Requisitos no funcionales (calidad, durabilidad, visibilidad)
- Requisitos de interfaces con otros sistemas
- Criterios de aceptación
- Casos de uso principales
- Matriz de trazabilidad contractual

### 1.2 Alcance

Este análisis cubre el **sistema integral de señalización vial** a lo largo de 259.6 km:
1. **Señalización Vertical:** ~2,300 señales (reglamentarias, preventivas, informativas)
2. **Señalización Horizontal:** ~1,000 km lineales de demarcación
3. **Defensas y Contención:** ~115 km de defensas metálicas y barreras
4. **Dispositivos de Delineación:** 52,000 tachas, 7,000 delineadores
5. **Señalización Temporal:** Para obras y emergencias

**Período:** 25 años de concesión (con reposición continua).

### 1.3 Definiciones y Acrónimos

| Término | Definición |
|:--------|:-----------|
| **RETILAP** | Reglamento Técnico de Iluminación y Alumbrado Público |
| **Tipo XI** | Lámina retroreflectiva prismática de alta intensidad (señales verticales) |
| **Termoplástico** | Pintura de larga duración para demarcación horizontal |
| **CRI** | Coeficiente de Retroreflexión Inicial (mcd/lux/m²) |
| **SGSV** | Sistema de Gestión de Seguridad Vial |
| **UF** | Unidad Funcional |
| **INVIAS** | Instituto Nacional de Vías |
| **Resolución 1885/2015** | Manual de Señalización Vial del Ministerio de Transporte |
| **MUTCD** | Manual on Uniform Traffic Control Devices |
| **Defensas Tipo U** | Defensas metálicas de doble onda (perfil U) |
| **New Jersey** | Barrera de concreto con perfil específico |

---

## 2. REQUISITOS FUNCIONALES

### 2.1 Señalización Vertical - Reglamentarias

**ID:** RF-001  
**Descripción:** El sistema debe proporcionar señales reglamentarias (PARE, velocidad máxima, prohibiciones) según normativa vigente  
**Prioridad:** 🔴 Alta  
**Fuente:** AT2, Sección 6.3.2; Resolución 1885/2015  

**Criterios de Aceptación:**
- Señales retroreflectivas **Tipo XI** (prismática alta intensidad)
- Coeficiente de Retroreflexión Inicial (CRI): ≥ 250 cd/lux/m² (blanco), ≥ 95 cd/lux/m² (rojo)
- Dimensiones según Resolución 1885/2015 (75x75 cm típico, 120x120 cm en vías rápidas)
- Colores según norma (rojo, blanco, negro - pantone específico)
- Postes fracturables en zonas de alta velocidad (> 80 km/h)
- Altura de instalación: 2.0-2.5 m desde piso a borde inferior
- Ubicación según estudios de visibilidad y distancia de reacción

---

### 2.2 Señalización Vertical - Preventivas

**ID:** RF-002  
**Descripción:** El sistema debe proporcionar señales preventivas (curvas, pendientes, zonas escolares) para advertir condiciones peligrosas  
**Prioridad:** 🔴 Alta  
**Fuente:** AT2, Sección 6.3.2; Resolución 1885/2015  

**Criterios de Aceptación:**
- Señales retroreflectivas **Tipo XI**
- Forma: Diamante (75x75 cm), cuadrado girado 45°
- Colores: Fondo amarillo, símbolos negros
- Ubicación: Antes de la condición peligrosa (distancia según velocidad de diseño)
- Incluye señales de distancia aproximada (ej: "300 m")
- Curvas horizontales: Señal + chevrones de delineación

---

### 2.3 Señalización Vertical - Informativas

**ID:** RF-003  
**Descripción:** El sistema debe proporcionar señales informativas (destinos, distancias, servicios)  
**Prioridad:** 🟡 Alta  
**Fuente:** AT2, Sección 6.3.2; Resolución 1885/2015  

**Criterios de Aceptación:**
- Señales retroreflectivas **Tipo XI**
- Forma: Rectangular (tamaños variables según contenido)
- Colores: Fondo verde (destinos), azul (servicios)
- Tipografía: Serie E modificada (según Resolución 1885)
- Tamaño mínimo de letra: 20 cm (autopistas)
- Incluye flechas direccionales
- Pre-señalización: 1 km, 500 m, 200 m antes de salida

---

### 2.4 Señalización Horizontal - Demarcación de Carriles

**ID:** RF-004  
**Descripción:** El sistema debe demarcar carriles mediante líneas de pintura termoplástica reflectiva  
**Prioridad:** 🔴 Alta  
**Fuente:** AT2, Sección 6.3.2; Resolución 1885/2015  

**Criterios de Aceptación:**
- **Línea central (amarilla):** Continua (no rebasar) o discontinua (permite rebasar)
- **Líneas de borde (blanca):** Continua en ambos lados de la calzada
- **Líneas de carril (blanca):** Discontinuas (patrón 3m pintado, 9m sin pintar)
- Material: Termoplástico con microesferas de vidrio
- Reflectividad: ≥ 300 mcd/lux/m² (medición inicial)
- Ancho de línea: 10-15 cm
- Espesor: 2-3 mm (termoplástico)
- Durabilidad: ≥ 2 años en condiciones normales de tráfico

---

### 2.5 Señalización Horizontal - Flechas y Leyendas

**ID:** RF-005  
**Descripción:** El sistema debe incluir flechas direccionales y leyendas en pavimento (PARE, DESPACIO, etc.)  
**Prioridad:** 🟡 Alta  
**Fuente:** AT2, Sección 6.3.2; Resolución 1885/2015  

**Criterios de Aceptación:**
- Flechas en aproximaciones a intersecciones (indicación de carriles)
- Leyendas en aproximaciones a peajes, PARE, zonas escolares
- Material: Termoplástico reflectivo
- Dimensiones según velocidad de diseño (factor de elongación 3:1)
- Color: Blanco (sobre pavimento oscuro)
- Reflectividad: ≥ 300 mcd/lux/m²

---

### 2.6 Señalización Horizontal - Pasos Peatonales

**ID:** RF-006  
**Descripción:** El sistema debe demarcar cruces peatonales tipo "cebra"  
**Prioridad:** 🟡 Media  
**Fuente:** AT2, Sección 6.3.2; Resolución 1885/2015  

**Criterios de Aceptación:**
- Patrón de franjas blancas transversales
- Ancho de franjas: 40-60 cm
- Separación entre franjas: 40-60 cm
- Material: Termoplástico de alto tráfico
- Ubicación: Intersecciones, puentes peatonales, áreas de servicio
- Complemento con señal vertical (P6-2 "Cruce de Peatones")

---

### 2.7 Defensas Metálicas (Barreras de Contención)

**ID:** RF-007  
**Descripción:** El sistema debe incluir defensas metálicas en zonas de riesgo (taludes, curvas, puentes)  
**Prioridad:** 🔴 Alta  
**Fuente:** AT2, Sección 6.3.3; Guía Técnica Zonas Laterales (Fondo Seguridad Vial 2012)  

**Criterios de Aceptación:**
- Perfil tipo **U** (doble onda), galvanizado en caliente
- Altura de instalación: 55-80 cm desde piso a centro de viga
- Longitud de necesidad (LN): Según análisis de riesgos
- Transiciones: Abatimientos suaves (1:10 a 1:15)
- Anclajes: Postes de acero cada 2.0-4.0 m
- Terminales: Amortiguadores de impacto o abatimientos
- Protección para motociclistas: Pantalla continua inferior (25 cm de altura)
- Capacidad de contención: Nivel N2 o H1 (según NCHRP 350 o EN 1317)

---

### 2.8 Barreras de Concreto (New Jersey)

**ID:** RF-008  
**Descripción:** El sistema debe incluir barreras de concreto en puentes y separadores estrechos  
**Prioridad:** 🔴 Alta  
**Fuente:** AT2, Sección 6.3.3; INVIAS  

**Criterios de Aceptación:**
- Perfil tipo **New Jersey** (con inclinación específica)
- Altura: 80-105 cm
- Ancho de base: 40-60 cm
- Resistencia del concreto: f'c ≥ 21 MPa
- Refuerzo con acero
- Ubicación: Puentes, separadores centrales angostos (< 3 m)
- Continuidad: Sin interrupciones (máximo 10 cm entre elementos)

---

### 2.9 Tachas Reflectivas y Delineadores

**ID:** RF-009  
**Descripción:** El sistema debe incluir tachas reflectivas y delineadores verticales para guía nocturna  
**Prioridad:** 🟡 Media  
**Fuente:** AT2, Sección 6.3.2; Resolución 1885/2015  

**Criterios de Aceptación:**
- **Tachas bidireccionales:** Cada 12 m en líneas de borde y centro
- Color: Amarillo (borde derecho), blanco (centro, líneas de carril)
- Reflectividad: ≥ 200 mcd/lux (por lente)
- Resistencia a impactos y tráfico pesado
- **Delineadores verticales (chevrones):** En curvas horizontales, cada 20-40 m
- **Postes delineadores:** Bordes de calzada en zonas de niebla/lluvia
- Altura de delineadores: 80-120 cm

---

### 2.10 Señalización Temporal (Obras y Emergencias)

**ID:** RF-010  
**Descripción:** El sistema debe incluir señalización temporal para desvíos, obras de mantenimiento e incidentes  
**Prioridad:** 🟡 Alta  
**Fuente:** AT2, Sección 6.3.2; Manual de Señalización Temporal  

**Criterios de Aceptación:**
- Stock mínimo de señales portátiles (50 unidades)
- Conos de tráfico: 500 unidades (71 cm altura, reflectivos)
- Barreras portátiles tipo "New Jersey" plásticas: 200 m
- Paneles de mensaje variable portátiles: 5 unidades
- Señales montadas en soportes portátiles
- Retroreflectividad Tipo XI (igual que señales permanentes)
- Plan de instalación según severidad del evento

---

### 2.11 Mantenimiento Preventivo de Señalización

**ID:** RF-011  
**Descripción:** El sistema debe ser objeto de mantenimiento preventivo continuo (limpieza, inspección, medición)  
**Prioridad:** 🔴 Alta  
**Fuente:** AT2, Sección 6.3.2; AT4 (Indicadores E11, E12, E13)  

**Criterios de Aceptación:**
- **Limpieza de señales verticales:** Al menos 1 vez al mes
- **Inspección de demarcación:** Al menos 1 vez al mes
- **Inspección de defensas:** Al menos 1 vez al mes
- Medición de reflectividad con retrorreflectómetro: Cada 6 meses
- Reposición inmediata de señales ilegibles o faltantes (< 24 horas)
- Reposición de demarcación si reflectividad < 100 mcd/lux/m² (< 7 días)
- Reparación de defensas dañadas (< 48 horas para daños críticos)

---

## 3. REQUISITOS NO FUNCIONALES

### 3.1 Requisitos de Disponibilidad

| ID | Requisito | Valor Mínimo | Fuente |
|:---|:----------|:-------------|:-------|
| **RNF-001** | Señalización vertical operativa (E11) | ≥ 80% con reflectividad Tipo XI | AT4, Indicador E11 |
| **RNF-002** | Señalización horizontal operativa (E12) | ≥ 85% visible y reflectiva | AT4, Indicador E12 |
| **RNF-003** | Defensas sin defectos estructurales (E13) | 100% | AT4, Indicador E13 |
| **RNF-004** | Tiempo de reposición señales críticas | ≤ 24 horas | AT2 (implícito) |
| **RNF-005** | Tiempo de reparación defensas críticas | ≤ 48 horas | Seguridad vial |

**Cálculo de disponibilidad:**
- 80% de 2,300 señales = al menos 1,840 señales operativas
- 85% de 1,000 km demarcación = al menos 850 km visibles

---

### 3.2 Requisitos de Performance (Reflectividad)

| ID | Requisito | Valor Mínimo | Fuente |
|:---|:----------|:-------------|:-------|
| **RNF-006** | Reflectividad señales verticales (Tipo XI, blanco) | ≥ 250 cd/lux/m² (inicial) | Resolución 3027/2010 |
| **RNF-007** | Reflectividad señales verticales (Tipo XI, rojo) | ≥ 95 cd/lux/m² (inicial) | Resolución 3027/2010 |
| **RNF-008** | Reflectividad demarcación horizontal (blanco) | ≥ 300 mcd/lux/m² (inicial) | INVIAS, Art. 700 |
| **RNF-009** | Reflectividad demarcación horizontal (amarillo) | ≥ 200 mcd/lux/m² (inicial) | INVIAS, Art. 700 |
| **RNF-010** | Reflectividad tachas | ≥ 200 mcd/lux (por lente) | INVIAS |
| **RNF-011** | Umbral de reposición señales verticales | < 50% del valor inicial | Buenas prácticas |
| **RNF-012** | Umbral de reposición demarcación | < 100 mcd/lux/m² | Buenas prácticas |

---

### 3.3 Requisitos de Durabilidad

| ID | Requisito | Valor Mínimo | Fuente |
|:---|:----------|:-------------|:-------|
| **RNF-013** | Vida útil láminas retroreflectivas Tipo XI | ≥ 10 años | Especificaciones 3M, Avery |
| **RNF-014** | Vida útil demarcación termoplástica | ≥ 2 años (tráfico normal) | INVIAS, Art. 700 |
| **RNF-015** | Vida útil defensas metálicas galvanizadas | ≥ 25 años | INVIAS, especificaciones |
| **RNF-016** | Resistencia al lavado (demarcación) | ≥ 10,000 ciclos | ASTM D4828 |
| **RNF-017** | Resistencia a la abrasión (demarcación) | ≥ 200 ciclos | ASTM D4060 |

---

### 3.4 Requisitos de Seguridad

| ID | Requisito | Descripción | Fuente |
|:---|:----------|:------------|:-------|
| **RNF-018** | Postes fracturables en alta velocidad | Postes que se abaten ante impacto (< 80 km/h) | Seguridad pasiva, NCHRP 350 |
| **RNF-019** | Protección para motociclistas | Pantalla continua 25 cm en defensas metálicas | Guía Técnica Zonas Laterales |
| **RNF-020** | Terminales de defensas | Con amortiguadores de impacto o abatimientos | NCHRP 350, EN 1317 |
| **RNF-021** | Anclajes antivandalismo | Tornillos de seguridad en señales | Prevención de robos |
| **RNF-022** | Materiales no tóxicos | Pinturas y termoplásticos sin plomo | Normativa ambiental |

---

### 3.5 Requisitos de Usabilidad

| ID | Requisito | Descripción | Fuente |
|:---|:----------|:------------|:-------|
| **RNF-023** | Visibilidad de señales | Legibles a distancia de reacción (según velocidad) | Resolución 1885/2015 |
| **RNF-024** | Contraste de colores | Según especificaciones Pantone o RAL | Resolución 1885/2015 |
| **RNF-025** | Tipografía legible | Serie E modificada (señales informativas) | Resolución 1885/2015 |
| **RNF-026** | Símbolos estandarizados | Según Manual de Señalización Vial | Resolución 1885/2015 |

---

### 3.6 Requisitos de Mantenibilidad

| ID | Requisito | Descripción | Fuente |
|:---|:----------|:------------|:-------|
| **RNF-027** | Facilidad de reposición | Señales reemplazables sin herramientas especiales | Operación eficiente |
| **RNF-028** | Acceso para mantenimiento | Todas las señales accesibles desde calzada o berma | Seguridad de operarios |
| **RNF-029** | Stock de repuestos | Inventario mínimo 5% del total de señales | Reposición rápida |
| **RNF-030** | Medición de reflectividad | Con retrorreflectómetro portátil cada 6 meses | Control de calidad |

---

### 3.7 Requisitos Ambientales

| ID | Requisito | Valor/Descripción | Fuente |
|:---|:----------|:------------------|:-------|
| **RNF-031** | Resistencia a UV | Sin degradación por radiación solar durante vida útil | Especificaciones de fabricante |
| **RNF-032** | Resistencia a temperatura | -10°C a +60°C | Clima colombiano |
| **RNF-033** | Resistencia a humedad | 0% a 100% RH | Clima tropical |
| **RNF-034** | Galvanizado en caliente | Espesor mínimo 85 μm (defensas metálicas) | ASTM A123 |
| **RNF-035** | Pinturas sin solventes tóxicos | Cumplir normativa ambiental colombiana | Normativa ambiental |

---

## 4. REQUISITOS DE INTERFACES

### 4.1 Interface Señalización ↔ ITS (PMV)

**ID:** RI-001  
**Sistemas:** Señalización Vial ↔ Paneles de Mensaje Variable (PMV)  
**Tipo:** Complementaria  
**Protocolo:** N/A  
**Datos Intercambiados:** 
- PMV complementan señalización fija con mensajes dinámicos
- Coordinación en contenido de mensajes
**Frecuencia:** Según eventos  

---

### 4.2 Interface Señalización ↔ Iluminación

**ID:** RI-002  
**Sistemas:** Señalización Vial ↔ Sistema de Iluminación  
**Tipo:** Operacional  
**Protocolo:** N/A  
**Datos Intercambiados:** 
- Reflectividad de señales depende de iluminación nocturna
- Diseño coordinado para evitar deslumbramientos
**Frecuencia:** N/A (diseño coordinado)

---

### 4.3 Interface Señalización ↔ Mantenimiento

**ID:** RI-003  
**Sistemas:** Señalización ↔ Sistema de Mantenimiento  
**Tipo:** Programática  
**Protocolo:** Órdenes de Trabajo  
**Datos Intercambiados:** 
- Inspecciones mensuales (E11, E12, E13)
- Órdenes de reposición
- Registros fotográficos
**Frecuencia:** Mensual + eventos

---

### 4.4 Interface Señalización ↔ SGSV

**ID:** RI-004  
**Sistemas:** Señalización ↔ Sistema de Gestión de Seguridad Vial  
**Tipo:** Analítica  
**Protocolo:** Reportes, Análisis  
**Datos Intercambiados:** 
- Análisis de puntos negros (accidentalidad)
- Actualización de señalización según resultados
- Auditorías de seguridad vial
**Frecuencia:** Trimestral + eventos

---

### 4.5 Interface Señalización ↔ ITS (CCTV)

**ID:** RI-005  
**Sistemas:** Señalización ↔ CCTV  
**Tipo:** Monitoreo  
**Protocolo:** Video  
**Datos Intercambiados:** 
- Verificación visual de estado de señales
- Detección de vandalismo
**Frecuencia:** Continuo

---

## 5. MATRIZ DE TRAZABILIDAD

| Requisito ID | Tipo | Descripción Resumida | Fuente Contractual | Componente Afectado | Prioridad |
|:-------------|:-----|:---------------------|:-------------------|:--------------------|:----------|
| **RF-001** | Funcional | Señales reglamentarias Tipo XI | AT2, 6.3.2; Res. 1885/2015 | Señalización Vertical | 🔴 Alta |
| **RF-002** | Funcional | Señales preventivas Tipo XI | AT2, 6.3.2; Res. 1885/2015 | Señalización Vertical | 🔴 Alta |
| **RF-003** | Funcional | Señales informativas Tipo XI | AT2, 6.3.2; Res. 1885/2015 | Señalización Vertical | 🟡 Alta |
| **RF-004** | Funcional | Demarcación de carriles | AT2, 6.3.2; Res. 1885/2015 | Señalización Horizontal | 🔴 Alta |
| **RF-005** | Funcional | Flechas y leyendas | AT2, 6.3.2; Res. 1885/2015 | Señalización Horizontal | 🟡 Alta |
| **RF-006** | Funcional | Pasos peatonales | AT2, 6.3.2; Res. 1885/2015 | Señalización Horizontal | 🟡 Media |
| **RF-007** | Funcional | Defensas metálicas Tipo U | AT2, 6.3.3; Guía Zonas Laterales | Defensas | 🔴 Alta |
| **RF-008** | Funcional | Barreras New Jersey | AT2, 6.3.3; INVIAS | Defensas | 🔴 Alta |
| **RF-009** | Funcional | Tachas y delineadores | AT2, 6.3.2; Res. 1885/2015 | Delineación | 🟡 Media |
| **RF-010** | Funcional | Señalización temporal | AT2, 6.3.2; Manual Señ. Temporal | Señalización Temporal | 🟡 Alta |
| **RF-011** | Funcional | Mantenimiento preventivo | AT2, 6.3.2; AT4 | Todo el sistema | 🔴 Alta |
| **RNF-001** | Disponibilidad | E11 ≥ 80% Tipo XI | AT4 | Señalización Vertical | 🔴 Alta |
| **RNF-002** | Disponibilidad | E12 ≥ 85% visible | AT4 | Señalización Horizontal | 🔴 Alta |
| **RNF-003** | Disponibilidad | E13 100% sin defectos | AT4 | Defensas | 🔴 Alta |
| **RNF-006** | Performance | Reflectividad ≥250 cd/lux/m² | Res. 3027/2010 | Señalización Vertical | 🔴 Alta |

**Total requisitos identificados:** 46 (11 funcionales + 35 no funcionales)

---

## 6. RESTRICCIONES Y SUPUESTOS

### 6.1 Restricciones

| ID | Restricción | Impacto | Origen |
|:---|:------------|:--------|:-------|
| **REST-001** | Incumplimiento E11/E12/E13 = Deducciones mensuales | Crítico - Impacto financiero alto | AT4 |
| **REST-002** | Cumplir Resolución 1885/2015 obligatorio | Alto - Especificaciones no negociables | MinTransporte |
| **REST-003** | Retroreflectividad Tipo XI obligatoria | Alto - Limita proveedores | AT2, AT3 |
| **REST-004** | Limpieza mensual obligatoria | Medio - Recurso operativo continuo | AT2, Sección 6.3.2 |
| **REST-005** | Defensas Tipo U (no Tipo I) | Medio - Especificación técnica estricta | AT3 |
| **REST-006** | Actualización según SGSV | Alto - Cambios impredecibles | AT2, Sección 3.1.5 |

---

### 6.2 Supuestos

| ID | Supuesto | Riesgo si no se cumple | Validación |
|:---|:---------|:-----------------------|:-----------|
| **SUP-001** | Diseño geométrico definitivo disponible (mes 6) | Alto - Ubicación de señales incorrecta | Coordinar con Ing. Diseño |
| **SUP-002** | Inventario de señalización existente disponible (mes 3) | Medio - Desconocimiento de activos actuales | Levantamiento en campo |
| **SUP-003** | Proveedores de Tipo XI garantizan vida útil 10 años | Alto - Reposición prematura costosa | Validar garantías en contratos |
| **SUP-004** | Desgaste demarcación: 40% anual (clima/tráfico) | Medio - OPEX mayor si desgaste > 40% | Monitoreo primer año |
| **SUP-005** | Acceso lateral a todo el corredor para mantenimiento | Alto - Imposibilidad de reponer señales | Validar con Gestión Predial |

---

## 7. CASOS DE USO

### 7.1 CU-001: Inspección Mensual de Señalización Vertical

**Actor:** Cuadrilla de Mantenimiento  
**Descripción:** Inspección mensual de señales verticales para verificar cumplimiento E11  
**Precondiciones:**
- Cuadrilla disponible (vehículo, personal, retrorreflectómetro)
- Formato de inspección E11
- Registro fotográfico

**Flujo Normal:**
1. Cuadrilla recorre el corredor (por UF)
2. Inspecciona visualmente cada señal (legibilidad, daños, ausencias)
3. Mide reflectividad con retrorreflectómetro (muestra estadística 10%)
4. Registra señales deficientes (ilegibles, dañadas, faltantes)
5. Toma fotografías de señales deficientes
6. Genera reporte: "80.5% señales conformes E11" (ejemplo)
7. Si E11 < 80% → Genera órdenes de reposición urgente
8. Envía reporte a Interventoría y ANI

**Postcondiciones:**
- Indicador E11 calculado y reportado
- Órdenes de trabajo generadas (si aplica)

**Flujos Alternativos:**
- Si encuentra vandalismo masivo → Alerta a seguridad, reposición urgente
- Si E11 < 80% → Plan de acción correctiva inmediata

---

### 7.2 CU-002: Reposición de Señal Vertical Faltante

**Actor:** Cuadrilla de Mantenimiento  
**Descripción:** Reposición de señal vertical detectada como faltante en inspección  
**Precondiciones:**
- Orden de trabajo generada (desde inspección)
- Stock de señales disponible
- Herramientas y vehículo

**Flujo Normal:**
1. Cuadrilla recibe orden de trabajo: "Reponer señal R1-1 (Velocidad 80 km/h) en PK 125+300"
2. Cuadrilla verifica stock (señal + poste)
3. Se desplaza al sitio (PK 125+300)
4. Instala poste (excavación, concreto o sistema fracturible)
5. Monta señal en poste (altura 2.0-2.5 m)
6. Verifica alineación y visibilidad
7. Toma fotografía de señal instalada (georeferenciada)
8. Actualiza registro: Señal operativa
9. Cierra orden de trabajo

**Postcondiciones:**
- Señal operativa
- Indicador E11 actualizado
- Registro fotográfico archivado

**Tiempo total:** < 24 horas desde detección

---

### 7.3 CU-003: Repintado de Demarcación Horizontal

**Actor:** Cuadrilla Especializada de Demarcación  
**Descripción:** Repintado de líneas de demarcación cuando reflectividad < 100 mcd/lux/m²  
**Precondiciones:**
- Equipo de demarcación (camión con termoplástico caliente)
- Señalización temporal disponible
- Horario nocturno (bajo tráfico)

**Flujo Normal:**
1. Cuadrilla recibe orden: "Repintar línea central y borde, PK 80+000 a PK 85+000 (5 km)"
2. Planifica operación nocturna (22:00 - 06:00)
3. Instala señalización temporal (cierres de carril)
4. Limpia superficie (barrido mecánico)
5. Aplica termoplástico con microesferas (máquina especializada)
6. Línea central: Amarilla, 10 cm ancho
7. Líneas de borde: Blanca, 10 cm ancho
8. Tiempo de secado: 15 minutos
9. Retira señalización temporal
10. Mide reflectividad (control de calidad): ≥ 300 mcd/lux/m²
11. Actualiza registro: 5 km demarcados
12. Cierra orden de trabajo

**Postcondiciones:**
- Demarcación renovada (reflectividad > 300 mcd/lux/m²)
- Indicador E12 actualizado

**Rendimiento:** 5 km/noche (1 cuadrilla)

---

### 7.4 CU-004: Reparación de Defensa Metálica Dañada

**Actor:** Cuadrilla de Mantenimiento de Defensas  
**Descripción:** Reparación de defensa metálica tras impacto vehicular  
**Precondiciones:**
- Detección de daño (inspección o reporte CCO/CCTV)
- Stock de vigas y postes
- Herramientas especializadas

**Flujo Normal:**
1. Cuadrilla recibe alerta: "Defensa dañada PK 150+500, impacto vehicular"
2. Se desplaza al sitio en < 4 horas
3. Evalúa daño: 3 tramos de viga (6 m) y 2 postes
4. Instala señalización temporal (protección de cuadrilla)
5. Retira vigas dañadas
6. Reemplaza postes (excavación, concreto)
7. Instala vigas nuevas (galvanizadas)
8. Verifica continuidad y altura (55-80 cm)
9. Instala protección para motociclistas
10. Retira señalización temporal
11. Toma fotografías del antes/después
12. Actualiza registro: Defensa operativa
13. Cierra orden de trabajo

**Postcondiciones:**
- Defensa reparada (100% conforme E13)
- Seguridad restablecida

**Tiempo total:** < 48 horas desde detección

---

## 8. CRITERIOS DE ACEPTACIÓN

### 8.1 Criterios Funcionales

- [ ] El 100% de señales verticales son Tipo XI (retroreflectividad prismática)
- [ ] El 100% de la demarcación horizontal es termoplástica reflectiva
- [ ] El 100% de defensas metálicas son Tipo U galvanizadas
- [ ] El 100% de defensas tienen protección para motociclistas
- [ ] El 100% de intersecciones tienen señalización completa
- [ ] El 100% de cruces peatonales tienen demarcación tipo cebra
- [ ] El sistema tiene stock mínimo de señalización temporal (50 señales, 500 conos)
- [ ] El sistema tiene programa de mantenimiento mensual activo
- [ ] El 100% de señales tienen anclajes antivandalismo
- [ ] El 100% de terminales de defensas tienen amortiguadores de impacto

### 8.2 Criterios de Performance

- [ ] Indicador E11 ≥ 80% de señales con reflectividad Tipo XI
- [ ] Indicador E12 ≥ 85% de demarcación visible y reflectiva
- [ ] Indicador E13 = 100% de defensas sin defectos estructurales
- [ ] Reflectividad señales verticales (blanco): ≥ 250 cd/lux/m² (inicial)
- [ ] Reflectividad demarcación horizontal: ≥ 300 mcd/lux/m² (inicial)
- [ ] Tiempo de reposición señales críticas: < 24 horas
- [ ] Tiempo de reparación defensas críticas: < 48 horas

### 8.3 Criterios de Calidad

- [ ] Cumplir Resolución 1885/2015 (Manual de Señalización Vial)
- [ ] Cumplir Resolución 3027/2010 (Especificaciones de Reflectividad)
- [ ] Cumplir INVIAS Artículo 700 (Demarcación)
- [ ] Cumplir Guía Técnica Zonas Laterales (Defensas)
- [ ] Certificación de materiales (3M, Avery Dennison, Reflexite para Tipo XI)
- [ ] Ensayos de control de calidad (reflectividad, espesor, adhesión)
- [ ] Vida útil señales Tipo XI: ≥ 10 años
- [ ] Vida útil demarcación: ≥ 2 años

### 8.4 Criterios de Integración

- [ ] Coordinación con ITS (PMV complementan señales fijas)
- [ ] Coordinación con Iluminación (reflectividad nocturna)
- [ ] Integración con SGSV (actualización según análisis de accidentalidad)
- [ ] Integración con Mantenimiento (inspecciones E11/E12/E13 mensuales)

---

## 9. DEPENDENCIAS

| Sistema/Recurso | Tipo de Dependencia | Criticidad | Estado | Plazo |
|:----------------|:--------------------|:-----------|:-------|:------|
| **Diseño Geométrico Definitivo** | Ubicación de señales | 🔴 Crítica | ⏳ Por confirmar | Mes 6 (Fase Preoperativa) |
| **Inventario de Señalización Existente** | Levantamiento en campo | 🟡 Alta | ⏳ Por realizar | Mes 1-3 |
| **Sistema de Gestión de Seguridad Vial (SGSV)** | Actualización de señalización | 🟡 Media | ⏳ Por implementar | Fase Operativa |
| **Gestión Predial** | Acceso lateral para instalación | 🟡 Media | ⏳ Por coordinar | Fase Preoperativa |
| **ITS (CCTV)** | Monitoreo de vandalismo | 🟡 Baja | ✅ Documentado (T01) | - |

---

## 10. PRÓXIMOS PASOS

- [ ] Desarrollar arquitectura conceptual con planos de señalización (Template T03)
- [ ] Realizar inventario de señalización existente en campo
- [ ] Validar requisitos con Interventoría, ANI y Policía de Carreteras
- [ ] Solicitar cotizaciones a proveedores preseleccionados:
  - Láminas retroreflectivas Tipo XI: 3M, Avery Dennison, Reflexite, Vialux
  - Termoplástico: Sherwin-Williams, Ennis-Flint, Crown Pavement Marking
  - Defensas metálicas: Safeline, TrafFix Devices, Trinity Highway Products
- [ ] Elaborar especificaciones técnicas detalladas por componente (Templates T04)
- [ ] Diseñar Plan de Señalización por Unidad Funcional (14 UFs)
- [ ] Elaborar Plan de Mantenimiento Preventivo (inspecciones E11/E12/E13)
- [ ] Estimar costos detallados con cotizaciones reales (Template T05)
- [ ] Coordinar con SGSV para análisis de puntos negros

---

## 11. REFERENCIAS

### Documentos Contractuales:
- [AT2 - Operación y Mantenimiento](../II.%20Apendices%20Tecnicos/AT2_Operacion_Mantenimiento_v1.0.md) - Secciones 3.1.5, 6.3.2, 6.3.3
- [AT3 - Especificaciones Generales](../II.%20Apendices%20Tecnicos/AT3_Especificaciones_Generales_v1.0.md)
- [AT4 - Indicadores](../II.%20Apendices%20Tecnicos/AT4_Indicadores_v1.0.md) - Indicadores E11, E12, E13
- [AT1 - Alcance del Proyecto](../II.%20Apendices%20Tecnicos/AT1_Alcance_Proyecto_v1.0.md)

### Documentos del Proyecto:
- [T01 - Ficha Sistema Señalización Vial](35_T01_Ficha_Sistema_Senalizacion_Vial_v1.0.md) - Base para este análisis
- [T01 - Sistema ITS](24_T01_Ficha_Sistema_ITS_v1.0.md) - Interface PMV
- [T01 - Sistema Iluminación](34_T01_Ficha_Sistema_Iluminacion_v1.0.md) - Coordinación nocturna
- [WBS Preliminar](../IX.%20WBS%20y%20Planificacion/WBS_Preliminar_v1.0.md) - Elemento 2.3

### Normativa:
- Resolución 1885/2015 - Manual de Señalización Vial (MinTransporte)
- Resolución 3027/2010 - Especificaciones de Señalización Vial
- INVIAS - Manual de Especificaciones, Artículo 700 (Demarcación)
- Guía Técnica de Diseño de Zonas Laterales (Fondo de Prevención Vial 2012)
- NCHRP 350 - Crash Testing of Road Safety Barriers
- EN 1317 - Road Restraint Systems

---

## 12. CONTROL DE VERSIONES

| Versión | Fecha | Responsable | Descripción |
|:---:|:---:|:---|:---|
| **v1.0** | 17/10/2025 | Administrador Contractual EPC | Análisis inicial de requisitos del sistema de señalización vial |

---

**Versión:** 1.0  
**Estado:** ✅ Análisis de Requisitos Completado  
**Fecha:** 17/10/2025  
**Responsable:** Ingeniero de Seguridad Vial  
**Próximo documento:** T03 - Arquitectura Conceptual del Sistema de Señalización Vial  

---

**Fin del documento - T02 Análisis de Requisitos Sistema de Señalización Vial**  
*Metodología Punto 42 v1.0*  
*Proyecto APP Puerto Salgar - Barrancabermeja*

