# GUÍA DE REPLICACIÓN: DE PROYECTO FÉRREO A PROYECTO VEHÍCULAR
## Metodología Punto 42 Adaptada

**Versión:** 1.0  
**Fecha:** 14 de octubre de 2025  
**Proyecto Base:** APP La Dorada-Chiriguaná (Férreo)  
**Proyecto Destino:** [NOMBRE PROYECTO VEHÍCULAR]  
**Responsable:** Administrador Contractual EPC  

---

## 🎯 OBJETIVO DE ESTA GUÍA

Replicar la estructura documental, metodología y mejores prácticas del proyecto férreo APP La Dorada-Chiriguaná para aplicarlas a un nuevo proyecto vehícular (carretero), manteniendo la misma calidad, trazabilidad y organización, pero adaptando el contenido técnico al ámbito vehícular/carretero.

---

## 📋 ÍNDICE RÁPIDO

1. [FASE 0: PREPARACIÓN](#fase-0-preparación)
2. [FASE 1: ESTRUCTURA BASE](#fase-1-estructura-base)
3. [FASE 2: CONTRATO Y APÉNDICES](#fase-2-contrato-y-apéndices)
4. [FASE 3: INGENIERÍA CONCEPTUAL](#fase-3-ingeniería-conceptual)
5. [FASE 4: INGENIERÍA BÁSICA](#fase-4-ingeniería-básica)
6. [FASE 5: INGENIERÍA DE DETALLE](#fase-5-ingeniería-de-detalle)
7. [FASE 6: OPERACIÓN Y REVERSIÓN](#fase-6-operación-y-reversión)
8. [FASE 7: DOCUMENTOS TRANSVERSALES](#fase-7-documentos-transversales)
9. [ADAPTACIONES ESPECÍFICAS VEHICULAR](#adaptaciones-específicas-vehicular)
10. [CHECKLIST FINAL](#checklist-final)

---

## 🔄 DIFERENCIAS CLAVE: FÉRREO VS VEHÍCULAR

### Sistemas Férreos que NO aplican:
- ❌ CTC (Control de Tráfico Centralizado)
- ❌ ETCS Level 2 / ITCS
- ❌ Señalización ferroviaria LED
- ❌ Material Rodante (locomotoras, vagones)
- ❌ Desvíos ferroviarios
- ❌ Radio TETRA ferroviario
- ❌ Interoperabilidad FENOCO/ferroviaria

### Sistemas Vehículares que SÍ aplican:
- ✅ ITS Vehícular (Sistemas Inteligentes de Transporte)
- ✅ Peajes y Control de Acceso
- ✅ Pesaje Dinámico (WIM)
- ✅ Señalización Vial (PMV, Señales LED)
- ✅ Centro de Control (similar a CCO)
- ✅ CCTV Vial
- ✅ Sistemas de Iluminación
- ✅ Sistemas de Drenaje y Ambiente
- ✅ Pesaje en Báscula
- ✅ Estaciones de Servicio
- ✅ CAV (Centros de Atención al Usuario)
- ✅ Radio Troncalizado / Comunicaciones
- ✅ SOS / Teléfonos de Emergencia

---

## FASE 0: PREPARACIÓN

### Duración: 1-2 días

### Checklist Pre-Proyecto:
- [ ] **Obtener contrato vehicular completo en .docx o .pdf**
- [ ] **Identificar todos los apéndices técnicos del contrato vehicular**
- [ ] **Listar sistemas mencionados en el contrato vehicular**
- [ ] **Descargar templates del proyecto férreo** (carpeta `VII. documentos transversales/`)
- [ ] **Crear carpeta raíz del nuevo proyecto:** `APP_[NOMBRE_PROYECTO_VEHICULAR]/`
- [ ] **Configurar Git** para el nuevo proyecto
- [ ] **Preparar herramientas:** Editor Markdown, PowerShell/Bash, Python

### Documentos clave a revisar del proyecto férreo:
1. `GUIA_METODOLOGICA_EPC_FERROVIARIOS_v1.0.md` → **Adaptar a vehicular**
2. `TEMPLATES_METODOLOGICOS_v1.0.md` → **Templates T01 y T02**
3. `Indice_Maestro_Consolidado_v1.0.md` → **Estructura de referencia**
4. `@@Roadmap_v14.7_Marco_Gestion_Consolidado.md` → **Metodología consolidación**
5. `PROMPT_Metodologia_Punto_42_Iteracion_MultiAgente_v1.1.md` → **Protocolo de trabajo**

---

## FASE 1: ESTRUCTURA BASE

### Duración: 1 día

### PASO 1.1: Crear Estructura de Carpetas

```bash
# Ejecutar en raíz del nuevo proyecto
mkdir -p "I. Contrato General"
mkdir -p "II. Apendices Tecnicos"
mkdir -p "III. Ingenieria Conceptual"
mkdir -p "IV. Ingenieria Basica"
mkdir -p "V. Ingenieria de Detalle"
mkdir -p "VI. Operacion y Reversion"
mkdir -p "VII. Documentos Transversales"
mkdir -p "VIII. Documentos Maestros y Metodologia"
mkdir -p "IX. WBS y Planificacion"
mkdir -p "X. Entregables Consolidados"
mkdir -p "scripts"
mkdir -p "old"
```

### PASO 1.2: Crear Archivos Base

#### A) README.md Principal
```markdown
# PROYECTO [NOMBRE PROYECTO VEHICULAR]
## [Nombre Contrato] - Concesión No. XXX de 20XX

**Fecha de inicio:** [DD/MM/AAAA]  
**Cliente:** [Nombre Cliente]  
**Concesionario:** [Nombre Concesionario]  
**Interventor:** [Nombre Interventor]  

---

## 📋 DESCRIPCIÓN DEL PROYECTO

[Descripción general del proyecto vehícular]

### Alcance Principal:
- **Longitud:** [XXX km]
- **Tipo:** Concesión vehícular/carretera
- **Plazo:** XX años
- **Ubicación:** [Regiones/Departamentos]

---

## 📁 ESTRUCTURA DOCUMENTAL

| Carpeta | Descripción | Estado |
|:--------|:------------|:------:|
| **I. Contrato General** | Contrato principal y cláusulas clave | 🔄 |
| **II. Apéndices Técnicos** | AT1-ATX del contrato | 🔄 |
| **III. Ingeniería Conceptual** | Análisis y diseño conceptual | ⏳ |
| **IV. Ingeniería Básica** | Especificaciones y diseños básicos | ⏳ |
| **V. Ingeniería de Detalle** | Planos constructivos y detalles | ⏳ |
| **VI. Operación y Reversión** | Manuales O&M y reversión | ⏳ |
| **VII. Documentos Transversales** | Gestión, riesgos, interfaces | ⏳ |
| **VIII. Maestros y Metodología** | Documentos consolidados | ⏳ |
| **IX. WBS y Planificación** | Presupuesto y cronogramas | ⏳ |
| **X. Entregables Consolidados** | Documentos finales para stakeholders | ⏳ |

---

## 🎯 METODOLOGÍA

Este proyecto utiliza la **Metodología Punto 42** adaptada de proyectos ferroviarios EPC.

Ver: `VIII. Documentos Maestros y Metodologia/GUIA_METODOLOGICA_VEHICULAR_v1.0.md`

---

## 📊 ESTADO ACTUAL

- **Fase actual:** Preparación
- **Documentos creados:** 0
- **Progreso general:** 0%

---

**Última actualización:** [DD/MM/AAAA]  
**Versión:** 1.0  
**Responsable:** [Nombre]
```

#### B) Indice_Maestro_Consolidado_v1.0.md
```markdown
# ÍNDICE MAESTRO CONSOLIDADO v1.0
## Proyecto [NOMBRE PROYECTO VEHICULAR]

**Versión:** 1.0  
**Fecha:** [DD/MM/AAAA]  
**Responsable:** Administrador Contractual EPC  

---

## 📋 PROPÓSITO

Este índice consolida TODOS los documentos del proyecto vehicular [NOMBRE], 
facilitando navegación, trazabilidad y control de versiones.

---

## 📁 ESTRUCTURA DOCUMENTAL

### I. CONTRATO GENERAL (X documentos)

| Documento | Archivo | Estado | Fecha |
|:---|:---|:---:|:---:|
| **Contrato Principal** | `I. Contrato General/Contrato_Principal_XXX.md` | ⏳ | Pendiente |
| **Cláusula [...]** | `I. Contrato General/[...]` | ⏳ | Pendiente |

[Continuar según contratos vehiculares]

---

[Continuar con todas las carpetas]

---

**Estado del documento:** 🔄 En construcción  
**Documentos totales:** 0  
**Última actualización:** [DD/MM/AAAA]
```

---

## FASE 2: CONTRATO Y APÉNDICES

### Duración: 3-5 días

### PASO 2.1: Procesar Contrato Principal

#### Acción 1: Convertir contrato a Markdown

```bash
# Si tienes el contrato en .docx
pandoc Contrato_Principal.docx -o Contrato_Principal.md
# O si está en .pdf, usar herramienta de extracción de texto
```

#### Acción 2: Formatear según Metodología Punto 42

**Estructura obligatoria del contrato:**

```markdown
# CONTRATO DE CONCESIÓN NO. XXX DE 20XX
## [NOMBRE PROYECTO VEHICULAR]

**Fecha de actualización:** [DD/MM/AAAA]  
**Proyecto:** [Nombre Proyecto]  
**Contrato:** Concesión No. XXX de 20XX  
**Responsable:** Administrador Contractual EPC  

---

## 1. INFORMACIÓN DEL DOCUMENTO

| Campo | Valor |
|-------|-------|
| **Fecha de actualización** | [DD/MM/AAAA] |
| **Proyecto** | [Nombre Proyecto] |
| **Contrato** | Concesión No. XXX de 20XX |
| **Responsable** | Administrador Contractual EPC |
| **Tipo** | Contrato Principal |
| **Estado** | ✅ Contenido completo |

---

## 2. DESCRIPCIÓN DEL DOCUMENTO

**Contrato de Concesión Vehícular**

[Descripción del contrato]

---

## 3. ALCANCE DEL PROYECTO

### 3.1 Objeto del Contrato
[Extracto cláusula de objeto]

### 3.2 Alcance Técnico
[Resumen de sistemas y obligaciones técnicas]

### 3.3 Plazo de Ejecución
- **Preconstrucción:** [X meses]
- **Construcción:** [X meses]
- **Operación y Mantenimiento:** [X años]
- **Reversión:** [X meses]

---

## 4. OBLIGACIONES DEL CONCESIONARIO

### 4.1 Fase de Preconstrucción
[Detalle de obligaciones]

### 4.2 Fase de Construcción
[Detalle de obligaciones]

### 4.3 Fase de Operación y Mantenimiento
[Detalle de obligaciones]

### 4.4 Fase de Reversión
[Detalle de obligaciones]

---

## 5. SISTEMAS A IMPLEMENTAR

| Sistema | Descripción | Apéndice Técnico Relacionado |
|:--------|:------------|:------------------------------|
| **ITS** | Sistemas Inteligentes de Transporte | AT-X |
| **CCTV** | Circuito Cerrado de TV | AT-X |
| **Peajes** | Sistemas de peaje electrónico | AT-X |
| **Pesaje** | Pesaje dinámico (WIM) | AT-X |
| **Iluminación** | Sistema de alumbrado vial | AT-X |
| **[...]** | [...] | AT-X |

---

## 6. CONTROL DE VERSIONES

| Versión | Fecha | Responsable | Descripción |
|:---:|:---:|:---|:---|
| **v1.0** | [DD/MM/AAAA] | Ing. Contractual | Versión inicial |

---

**Estado del documento:** ✅ Contenido completo  
**Versión:** 1.0  
**Responsable:** Administrador Contractual EPC  
**Próxima actualización:** [DD/MM/AAAA]
```

### PASO 2.2: Procesar Apéndices Técnicos

#### Identificar Apéndices del Proyecto Vehícular

**Apéndices típicos en proyectos vehículares:**

| AT | Nombre Típico | Contenido Esperado |
|:--:|:--------------|:-------------------|
| **AT1** | Alcance del Proyecto | Tramos, longitudes, características geométricas |
| **AT2** | Especificaciones Técnicas | Normas INVIAS, AASHTO, estándares viales |
| **AT3** | Obras Civiles | Puentes, túneles, drenajes, pavimentos |
| **AT4** | Sistemas ITS | PMV, CCTV, WIM, peajes, iluminación |
| **AT5** | Operación y Mantenimiento | Mantenimiento rutinario/periódico/extraordinario |
| **AT6** | Gestión Ambiental | Permisos, mitigación, monitoreo ambiental |
| **AT7** | Gestión Predial | Adquisición de predios, compensaciones |
| **AT8** | Gestión Social | Relacionamiento comunitario, reasentamientos |
| **AT9** | Plan de Obras | Cronograma maestro, frentes de trabajo |
| **AT10** | Indicadores de Desempeño | KPI de disponibilidad, calidad, seguridad |

#### Formatear cada AT según plantilla:

```markdown
# APÉNDICE TÉCNICO [N]: [NOMBRE]
## Proyecto [NOMBRE PROYECTO VEHICULAR]

**Fecha de actualización:** [DD/MM/AAAA]  
**Proyecto:** [Nombre Proyecto]  
**Contrato:** Concesión No. XXX de 20XX  
**Documento:** AT[N] - [Nombre]  
**Estado:** ✅ Contenido completo  

---

## 1. INFORMACIÓN DEL DOCUMENTO

| Campo | Valor |
|-------|-------|
| **Fecha de actualización** | [DD/MM/AAAA] |
| **Proyecto** | [Nombre Proyecto] |
| **Contrato** | Concesión No. XXX de 20XX |
| **Responsable** | Administrador Contractual EPC |
| **Tipo** | Apéndice Técnico |
| **Número** | AT[N] |
| **Estado** | ✅ Contenido completo |

---

## 2. DESCRIPCIÓN DEL APÉNDICE

**[Título del Apéndice]**

[Descripción del contenido y alcance del apéndice]

---

## 3. CONTENIDO TÉCNICO

### 3.1 [Sección Principal 1]
[Contenido técnico extraído del apéndice]

### 3.2 [Sección Principal 2]
[Contenido técnico extraído del apéndice]

[Continuar con todas las secciones del apéndice]

---

## 4. REQUISITOS CLAVE

| Requisito | Descripción | Normativa Aplicable |
|:----------|:------------|:--------------------|
| [REQ-001] | [Descripción] | [INVIAS, AASHTO, etc.] |
| [REQ-002] | [Descripción] | [Normativa] |

---

## 5. INTERFACES CON OTROS APÉNDICES

| Apéndice | Relación | Descripción |
|:---------|:---------|:------------|
| **AT[X]** | [Tipo relación] | [Descripción interface] |

---

## 6. CONTROL DE VERSIONES

| Versión | Fecha | Responsable | Descripción |
|:---:|:---:|:---|:---|
| **v1.0** | [DD/MM/AAAA] | Ing. Contractual | Versión inicial |

---

**Estado del documento:** ✅ Contenido completo  
**Versión:** 1.0  
**Responsable:** Administrador Contractual EPC  
**Próxima actualización:** [DD/MM/AAAA]
```

---

## FASE 3: INGENIERÍA CONCEPTUAL

### Duración: 2-3 semanas

### PASO 3.1: Crear Listado Maestro de Sistemas Vehículares

#### Archivo: `III. Ingenieria Conceptual/23_ListadoMaestro_Sistemas_Vehiculares_v1.0.md`

```markdown
# LISTADO MAESTRO DE SISTEMAS VEHICULARES v1.0
## Proyecto [NOMBRE PROYECTO VEHICULAR]

**Fecha:** [DD/MM/AAAA]  
**Responsable:** Administrador Contractual EPC  

---

## 1. SISTEMAS PRINCIPALES

### 1.1 SISTEMAS ITS (INTELLIGENT TRANSPORTATION SYSTEMS)

| Sistema | Descripción | Cantidad | Ubicación | AT Relacionado |
|:--------|:------------|:---------|:----------|:---------------|
| **PMV** | Paneles de Mensaje Variable | [X] unidades | [Ubicaciones] | AT4 |
| **CCTV** | Cámaras de Vigilancia | [X] unidades | [Ubicaciones] | AT4 |
| **WIM** | Pesaje en Movimiento | [X] estaciones | [PKs] | AT4 |
| **Meteo** | Estaciones Meteorológicas | [X] estaciones | [PKs] | AT4 |
| **SOS** | Teléfonos de Emergencia | [X] unidades | [Ubicaciones] | AT4 |
| **DAI** | Detectores Automáticos de Incidentes | [X] unidades | [Ubicaciones] | AT4 |
| **Aforo** | Estaciones de Aforo Vehicular | [X] estaciones | [PKs] | AT4 |

### 1.2 SISTEMAS DE PEAJE

| Sistema | Descripción | Cantidad | Ubicación | AT Relacionado |
|:--------|:------------|:---------|:----------|:---------------|
| **Peaje Principal** | Estación de Peaje Completa | [X] estaciones | [PKs] | AT4 |
| **Peaje Secundario** | Estación de Peaje Simplificada | [X] estaciones | [PKs] | AT4 |
| **Carriles MUV** | Carriles Múltiples Usuarios Vehículos | [X] carriles | [Estaciones] | AT4 |
| **Recaudo Manual** | Casetas de Recaudo | [X] casetas | [Estaciones] | AT4 |
| **Sistema TAG** | Telepeaje Electrónico | [X] sistemas | [Estaciones] | AT4 |

### 1.3 CENTRO DE CONTROL

| Sistema | Descripción | Cantidad | Ubicación | AT Relacionado |
|:--------|:------------|:---------|:----------|:---------------|
| **CCO** | Centro de Control Operacional | [1] centro | [Ubicación] | AT4 |
| **SCADA Vial** | Sistema de Supervisión y Control | [1] sistema | CCO | AT4 |
| **Videowall** | Muro de Video | [X] pantallas | CCO | AT4 |
| **Puestos Operación** | Consolas de Operador | [X] puestos | CCO | AT4 |

### 1.4 TELECOMUNICACIONES

| Sistema | Descripción | Cantidad | Ubicación | AT Relacionado |
|:--------|:------------|:---------|:----------|:---------------|
| **Fibra Óptica** | Red Troncal de FO | [XXX] km | Corredor | AT4 |
| **Radio Troncalizado** | Sistema de Radio | [X] estaciones | [Ubicaciones] | AT4 |
| **Telefonía IP** | Red de Voz sobre IP | [1] sistema | Corredor | AT4 |
| **Red de Datos** | Red Ethernet/MPLS | [1] sistema | Corredor | AT4 |

### 1.5 ILUMINACIÓN Y ENERGÍA

| Sistema | Descripción | Cantidad | Ubicación | AT Relacionado |
|:--------|:------------|:---------|:----------|:---------------|
| **Iluminación Vial** | Luminarias LED | [X] unidades | [Tramos] | AT3 |
| **Iluminación Túneles** | Sistema de Iluminación | [X] túneles | [PKs] | AT3 |
| **Subestaciones** | Subestaciones Eléctricas | [X] unidades | [Ubicaciones] | AT3 |
| **UPS** | Sistemas de Energía Ininterrumpida | [X] unidades | [Ubicaciones] | AT4 |
| **Paneles Solares** | Energía Renovable | [X] sistemas | [Ubicaciones] | AT3/AT6 |

### 1.6 SEGURIDAD Y PROTECCIÓN

| Sistema | Descripción | Cantidad | Ubicación | AT Relacionado |
|:--------|:------------|:---------|:----------|:---------------|
| **Control de Acceso** | Sistemas Biométricos/TAG | [X] sistemas | [Ubicaciones] | AT4 |
| **Detección Incendios** | Sistema de Detección | [X] sistemas | [Túneles/Edificios] | AT4 |
| **Extintores** | Extintores Automáticos | [X] unidades | [Túneles] | AT4 |
| **Alarmas** | Sistemas de Alarma | [X] sistemas | [Edificios] | AT4 |

### 1.7 INFRAESTRUCTURA CIVIL

| Elemento | Descripción | Cantidad | Ubicación | AT Relacionado |
|:---------|:------------|:---------|:----------|:---------------|
| **Puentes** | Estructuras de Paso | [X] unidades | [PKs] | AT1/AT3 |
| **Túneles** | Túneles Viales | [X] unidades | [PKs] | AT1/AT3 |
| **Intercambios** | Intercambios Viales | [X] unidades | [PKs] | AT1/AT3 |
| **CAV** | Centros de Atención al Usuario | [X] centros | [Ubicaciones] | AT1 |
| **Áreas de Servicio** | Zonas de Descanso | [X] áreas | [PKs] | AT1 |

### 1.8 SEÑALIZACIÓN VIAL

| Sistema | Descripción | Cantidad | Ubicación | AT Relacionado |
|:--------|:------------|:---------|:----------|:---------------|
| **Señales Verticales** | Señalización Vertical | [X] unidades | Corredor | AT3 |
| **Demarcación** | Señalización Horizontal | [XXX] km | Corredor | AT3 |
| **Defensas Metálicas** | Barreras de Seguridad | [XXX] km | Corredor | AT3 |
| **Tachas Reflectivas** | Delineadores | [X] unidades | Corredor | AT3 |

---

## 2. MATRIZ DE TRAZABILIDAD CONTRACTUAL

| Sistema | AT Relacionado | Cláusula Contrato | Requisito Clave |
|:--------|:---------------|:------------------|:----------------|
| ITS Global | AT4 | Cláusula X.X | [Requisito] |
| Peajes | AT4 | Cláusula X.X | [Requisito] |
| CCO | AT4 | Cláusula X.X | [Requisito] |
| [Continuar...] | [...] | [...] | [...] |

---

## 3. INTERFACES ENTRE SISTEMAS

| Sistema A | Sistema B | Tipo de Interface | Descripción |
|:----------|:----------|:------------------|:------------|
| CCTV | CCO | Red de Datos | Video IP |
| WIM | CCO | Fibra Óptica | Datos de pesaje |
| PMV | CCO | Fibra Óptica | Control de mensajes |
| [Continuar...] | [...] | [...] | [...] |

---

**Versión:** 1.0  
**Fecha:** [DD/MM/AAAA]  
**Estado:** ✅ Completado
```

### PASO 3.2: Aplicar Template T01 y T02 por Sistema

Para cada sistema identificado, crear documentos usando los templates del proyecto férreo:

#### Ejemplo: Sistema ITS

**Archivo:** `III. Ingenieria Conceptual/24_T01_Ficha_Sistema_ITS_v1.0.md`

```markdown
# T01: FICHA DE SISTEMA - ITS (INTELLIGENT TRANSPORTATION SYSTEMS)
## Proyecto [NOMBRE PROYECTO VEHICULAR]

**Fecha:** [DD/MM/AAAA]  
**Sistema:** ITS - Sistemas Inteligentes de Transporte  
**Responsable:** Ing. ITS  
**Versión:** 1.0  

---

## 1. IDENTIFICACIÓN DEL SISTEMA

| Campo | Valor |
|-------|-------|
| **Nombre del sistema** | ITS - Intelligent Transportation Systems |
| **Categoría** | Sistemas de Control y Supervisión |
| **Prioridad** | Alta |
| **Fase contractual** | Construcción y O&M |
| **AT relacionados** | AT4 - Especificaciones Técnicas ITS |

---

## 2. DESCRIPCIÓN GENERAL

### 2.1 Propósito del Sistema
[Descripción de para qué sirve el sistema ITS en el proyecto]

### 2.2 Alcance del Sistema
- **Sistemas incluidos:**
  - Paneles de Mensaje Variable (PMV)
  - CCTV (Cámaras de vigilancia)
  - WIM (Pesaje en Movimiento)
  - Estaciones Meteorológicas
  - Teléfonos SOS
  - Detectores Automáticos de Incidentes (DAI)
  - Estaciones de Aforo
  
- **Cobertura geográfica:** [Descripción de tramos cubiertos]
- **Integración con:** CCO, Telecomunicaciones, Peajes

---

## 3. REQUISITOS CONTRACTUALES

### 3.1 Obligaciones del Contrato
**Según Cláusula [X.X] del Contrato:**
[Extracto de obligaciones relacionadas con ITS]

### 3.2 Requisitos de Apéndices Técnicos
**Según AT4, Sección [X]:**
[Requisitos técnicos específicos de ITS]

### 3.3 Normativa Aplicable
| Norma | Descripción | Alcance |
|:------|:------------|:--------|
| **NEMA TS-2** | Controladores de Tráfico | PMV, Semáforos |
| **ISO 14823** | Señalización Variable | PMV |
| **INVIAS** | Manual de Señalización | Señalización Vial |
| **ASTM E2213** | Pesaje en Movimiento | WIM |

---

## 4. COMPONENTES PRINCIPALES

| Componente | Cantidad | Ubicación | Función |
|:-----------|:---------|:----------|:--------|
| PMV | [X] unidades | [PKs] | Información variable a usuarios |
| CCTV | [X] cámaras | [PKs] | Vigilancia del corredor |
| WIM | [X] estaciones | [PKs] | Control de peso de vehículos |
| Meteo | [X] estaciones | [PKs] | Condiciones climáticas |
| SOS | [X] teléfonos | [PKs] | Emergencias |

---

## 5. INTERFACES CON OTROS SISTEMAS

| Sistema Relacionado | Tipo de Interface | Protocolo/Medio | Datos Intercambiados |
|:--------------------|:------------------|:----------------|:---------------------|
| CCO | Red IP | Ethernet/Fibra | Video, datos, alarmas |
| Telecomunicaciones | Física | Fibra Óptica | Todos los datos |
| Peajes | Lógica | Base de Datos | Aforo vehicular |

---

## 6. ESTIMACIÓN PRELIMINAR

### 6.1 CAPEX (Inversión Inicial)
| Ítem | Cantidad | Costo Unitario | Costo Total |
|:-----|:---------|:---------------|:------------|
| PMV | [X] | $[XXX] | $[XXX] |
| CCTV | [X] | $[XXX] | $[XXX] |
| [Continuar...] | [...] | [...] | [...] |
| **TOTAL CAPEX** | | | **$[XXX]** |

### 6.2 OPEX (Operación y Mantenimiento - Anual)
| Ítem | Costo Anual |
|:-----|:------------|
| Mantenimiento preventivo | $[XXX] |
| Mantenimiento correctivo | $[XXX] |
| Repuestos | $[XXX] |
| Personal operación | $[XXX] |
| **TOTAL OPEX/año** | **$[XXX]** |

---

## 7. RIESGOS IDENTIFICADOS

| Riesgo | Probabilidad | Impacto | Mitigación |
|:-------|:-------------|:--------|:-----------|
| Vandalismo de equipos en campo | Media | Alto | Carcasas antivandalismo, CCTV |
| Falla de comunicaciones | Baja | Alto | Redundancia en comunicaciones |
| [Continuar...] | [...] | [...] | [...] |

---

## 8. PRÓXIMOS PASOS

- [ ] Desarrollar análisis de requisitos detallado (T02)
- [ ] Definir arquitectura conceptual (T03)
- [ ] Seleccionar proveedores preliminares
- [ ] Estimar costos detallados

---

**Versión:** 1.0  
**Estado:** ✅ Completado  
**Fecha:** [DD/MM/AAAA]
```

### PASO 3.3: Crear WBS Preliminar Vehicular

**Archivo:** `III. Ingenieria Conceptual/25.1_WBS_COMPLETA_VEHICULAR_v1.0.md`

```markdown
# WBS COMPLETA - PROYECTO VEHÍCULAR
## Proyecto [NOMBRE PROYECTO VEHICULAR]

**Versión:** 1.0  
**Fecha:** [DD/MM/AAAA]  
**Responsable:** PMO  

---

## 1. ESTRUCTURA WBS

### 1.0 PROYECTO [NOMBRE]

#### 1.1 GESTIÓN DEL PROYECTO
- 1.1.1 Gerencia de Proyecto
- 1.1.2 Interventoría
- 1.1.3 Gestión PMO
- 1.1.4 Gestión de Riesgos
- 1.1.5 Gestión de Calidad

#### 1.2 ESTUDIOS Y DISEÑOS
- 1.2.1 Topografía
- 1.2.2 Geotecnia
- 1.2.3 Hidrología e Hidráulica
- 1.2.4 Diseño Geométrico
- 1.2.5 Diseño de Pavimentos
- 1.2.6 Diseño de Puentes
- 1.2.7 Diseño de Túneles
- 1.2.8 Diseño de Sistemas

#### 1.3 GESTIÓN AMBIENTAL
- 1.3.1 Permisos Ambientales
- 1.3.2 Plan de Manejo Ambiental (PMA)
- 1.3.3 Compensaciones Ambientales
- 1.3.4 Monitoreo Ambiental

#### 1.4 GESTIÓN PREDIAL
- 1.4.1 Censo y Avalúos
- 1.4.2 Negociación de Predios
- 1.4.3 Servidumbres
- 1.4.4 Compensaciones

#### 1.5 GESTIÓN SOCIAL
- 1.5.1 Relacionamiento Comunitario
- 1.5.2 Reasentamientos
- 1.5.3 Arqueología
- 1.5.4 Comunicaciones

#### 1.6 OBRAS CIVILES
- 1.6.1 Movimiento de Tierras
  - 1.6.1.1 Excavaciones
  - 1.6.1.2 Terraplenes
  - 1.6.1.3 Explanaciones
- 1.6.2 Pavimentos
  - 1.6.2.1 Subbase
  - 1.6.2.2 Base
  - 1.6.2.3 Carpeta Asfáltica
- 1.6.3 Puentes
  - 1.6.3.1 Cimentaciones
  - 1.6.3.2 Superestructuras
  - 1.6.3.3 Acabados
- 1.6.4 Túneles
  - 1.6.4.1 Excavación
  - 1.6.4.2 Revestimiento
  - 1.6.4.3 Drenaje e Impermeabilización
- 1.6.5 Drenajes
  - 1.6.5.1 Cunetas
  - 1.6.5.2 Alcantarillas
  - 1.6.5.3 Box Culvert
- 1.6.6 Obras de Estabilización
  - 1.6.6.1 Muros de Contención
  - 1.6.6.2 Gaviones
  - 1.6.6.3 Anclajes

#### 1.7 EDIFICACIONES
- 1.7.1 Centro de Control Operacional (CCO)
  - 1.7.1.1 Obra Civil
  - 1.7.1.2 Arquitectura
  - 1.7.1.3 Instalaciones
- 1.7.2 Estaciones de Peaje
  - 1.7.2.1 Casetas
  - 1.7.2.2 Áreas Administrativas
  - 1.7.2.3 Instalaciones
- 1.7.3 Centros de Atención al Usuario (CAV)
- 1.7.4 Áreas de Servicio
- 1.7.5 Talleres de Mantenimiento

#### 1.8 SISTEMAS ITS
- 1.8.1 Paneles de Mensaje Variable (PMV)
  - 1.8.1.1 Suministro
  - 1.8.1.2 Instalación
  - 1.8.1.3 Puesta en Marcha
- 1.8.2 CCTV
  - 1.8.2.1 Cámaras
  - 1.8.2.2 Postes/Estructuras
  - 1.8.2.3 Cableado
  - 1.8.2.4 Configuración
- 1.8.3 Pesaje en Movimiento (WIM)
  - 1.8.3.1 Sensores
  - 1.8.3.2 Obra Civil
  - 1.8.3.3 Software
- 1.8.4 Estaciones Meteorológicas
- 1.8.5 Teléfonos SOS
- 1.8.6 Detectores Automáticos de Incidentes (DAI)
- 1.8.7 Estaciones de Aforo

#### 1.9 SISTEMAS DE PEAJE
- 1.9.1 Carriles de Peaje
  - 1.9.1.1 Obra Civil
  - 1.9.1.2 Equipos de Recaudo
  - 1.9.1.3 Software de Gestión
- 1.9.2 Sistema de Telepeaje (TAG)
  - 1.9.2.1 Antenas DSRC
  - 1.9.2.2 Tags/Transponders
  - 1.9.2.3 Sistema Central
- 1.9.3 Báscula de Pesaje
- 1.9.4 Control de Acceso

#### 1.10 CENTRO DE CONTROL OPERACIONAL (CCO)
- 1.10.1 Videowall
- 1.10.2 Puestos de Operador
- 1.10.3 SCADA Vial
- 1.10.4 Software de Gestión
- 1.10.5 Servidores y Storage

#### 1.11 TELECOMUNICACIONES
- 1.11.1 Fibra Óptica
  - 1.11.1.1 Tendido de Fibra
  - 1.11.1.2 Empalmes
  - 1.11.1.3 Cajas ODF
- 1.11.2 Radio Troncalizado
  - 1.11.2.1 Torres
  - 1.11.2.2 Estaciones Base
  - 1.11.2.3 Radios Móviles
- 1.11.3 Red de Datos
  - 1.11.3.1 Switches
  - 1.11.3.2 Routers
  - 1.11.3.3 Firewalls
- 1.11.4 Telefonía IP

#### 1.12 ILUMINACIÓN
- 1.12.1 Iluminación Vial
  - 1.12.1.1 Luminarias LED
  - 1.12.1.2 Postes
  - 1.12.1.3 Cableado
- 1.12.2 Iluminación de Túneles
  - 1.12.2.1 Sistema de Iluminación
  - 1.12.2.2 Control Automático
- 1.12.3 Iluminación de Intercambios

#### 1.13 ENERGÍA
- 1.13.1 Subestaciones Eléctricas
- 1.13.2 Acometidas
- 1.13.3 UPS
- 1.13.4 Generadores de Respaldo
- 1.13.5 Paneles Solares

#### 1.14 SEÑALIZACIÓN VIAL
- 1.14.1 Señalización Vertical
  - 1.14.1.1 Señales Preventivas
  - 1.14.1.2 Señales Reglamentarias
  - 1.14.1.3 Señales Informativas
- 1.14.2 Señalización Horizontal
  - 1.14.2.1 Demarcación
  - 1.14.2.2 Tachas Reflectivas
- 1.14.3 Defensas Metálicas
- 1.14.4 Dispositivos de Seguridad

#### 1.15 SEGURIDAD Y PROTECCIÓN
- 1.15.1 Control de Acceso
- 1.15.2 Detección de Incendios
- 1.15.3 Extinción de Incendios
- 1.15.4 Alarmas
- 1.15.5 Seguridad Perimetral

#### 1.16 OPERACIÓN Y MANTENIMIENTO (O&M)
- 1.16.1 Operación de Sistemas
- 1.16.2 Mantenimiento Rutinario
- 1.16.3 Mantenimiento Periódico
- 1.16.4 Mantenimiento Extraordinario
- 1.16.5 Gestión de Emergencias

#### 1.17 REVERSIÓN
- 1.17.1 Inventario de Activos
- 1.17.2 Condiciones de Entrega
- 1.17.3 Transferencia de Conocimiento
- 1.17.4 Documentación Final

---

## 2. PRESUPUESTO GLOBAL

| Capítulo | Descripción | Presupuesto (COP) | % |
|:---------|:------------|:------------------|:--|
| 1.1 | Gestión del Proyecto | $[XXX] | [X]% |
| 1.2 | Estudios y Diseños | $[XXX] | [X]% |
| 1.3 | Gestión Ambiental | $[XXX] | [X]% |
| 1.4 | Gestión Predial | $[XXX] | [X]% |
| 1.5 | Gestión Social | $[XXX] | [X]% |
| 1.6 | Obras Civiles | $[XXX] | [X]% |
| 1.7 | Edificaciones | $[XXX] | [X]% |
| 1.8 | Sistemas ITS | $[XXX] | [X]% |
| 1.9 | Sistemas de Peaje | $[XXX] | [X]% |
| 1.10 | CCO | $[XXX] | [X]% |
| 1.11 | Telecomunicaciones | $[XXX] | [X]% |
| 1.12 | Iluminación | $[XXX] | [X]% |
| 1.13 | Energía | $[XXX] | [X]% |
| 1.14 | Señalización Vial | $[XXX] | [X]% |
| 1.15 | Seguridad | $[XXX] | [X]% |
| 1.16 | O&M | $[XXX] | [X]% |
| 1.17 | Reversión | $[XXX] | [X]% |
| **TOTAL** | | **$[XXX]** | **100%** |

---

**Versión:** 1.0  
**Estado:** ✅ Estructura Base Completada  
**Fecha:** [DD/MM/AAAA]
```

---

## FASE 4: INGENIERÍA BÁSICA

### Duración: 3-4 semanas

### PASO 4.1: Aplicar Templates T03 y T04

Para cada sistema identificado en la Fase 3, desarrollar:

#### T03: Arquitectura Conceptual

**Ejemplo: Sistema CCTV**

**Archivo:** `IV. Ingenieria Basica/27_T03_Arquitectura_CCTV_v1.0.md`

```markdown
# T03: ARQUITECTURA CONCEPTUAL - SISTEMA CCTV
## Proyecto [NOMBRE PROYECTO VEHICULAR]

**Fecha:** [DD/MM/AAAA]  
**Sistema:** CCTV - Circuito Cerrado de TV  
**Responsable:** Ing. Seguridad Electrónica  
**Versión:** 1.0  

---

## 1. INTRODUCCIÓN

### 1.1 Propósito del Documento
[Descripción del propósito de definir la arquitectura del sistema CCTV]

### 1.2 Alcance
[Alcance del sistema CCTV: tramos cubiertos, tipos de cámaras, integración con CCO]

---

## 2. ARQUITECTURA DE ALTO NIVEL

### 2.1 Diagrama de Arquitectura

```
[Diagrama de bloques mostrando:]
- Cámaras en campo (CCTV-001 a CCTV-XXX)
- Red de Comunicaciones (Fibra Óptica)
- Equipos de Acceso (Switches de Campo)
- Backbone de Comunicaciones
- Centro de Control (CCO)
  - Servidores NVR
  - Videowall
  - Puestos de Operador
```

### 2.2 Descripción de Componentes

| Componente | Función | Especificación Preliminar |
|:-----------|:--------|:--------------------------|
| **Cámaras IP** | Captura de video en campo | 1080p mínimo, PTZ, IP66 |
| **NVR** | Grabación de video | [X] TB storage, redundancia RAID |
| **Switches** | Conectividad de red | Gigabit Ethernet, PoE+ |
| **Fibra Óptica** | Backbone de comunicaciones | Monomodo, redundancia en anillo |
| **Videowall** | Visualización en CCO | [X] pantallas, resolución 4K |

---

## 3. TOPOLOGÍA DE RED

### 3.1 Red CCTV

- **Topología:** Anillo redundante en fibra óptica
- **Protocolo:** IP (TCP/IP)
- **Segmentación:** VLAN dedicada para video
- **Ancho de banda:** [X] Mbps por cámara

### 3.2 Diagrama de Red

```
[Diagrama mostrando:]
- Anillo principal de FO
- Switches de acceso en puntos de agregación
- Cámaras conectadas a switches via PoE
- Conexión redundante a CCO
```

---

## 4. FLUJO DE DATOS

### 4.1 Captura de Video
1. Cámara captura imagen (1080p, 25 fps)
2. Codifica en H.264 o H.265
3. Transmite por IP a través de PoE

### 4.2 Transmisión
1. Video viaja por switch de campo
2. Pasa por red de FO redundante
3. Llega a NVR en CCO

### 4.3 Almacenamiento
- **Retención:** [X] días mínimo
- **Redundancia:** RAID 6
- **Backup:** Sistema de backup externo

### 4.4 Visualización
- **Tiempo real:** Operadores en CCO
- **Playback:** Revisión de eventos grabados

---

## 5. REDUNDANCIA Y DISPONIBILIDAD

### 5.1 Estrategia de Redundancia

| Componente | Redundancia | Descripción |
|:-----------|:------------|:------------|
| Servidores NVR | N+1 | [X] servidores activos + 1 standby |
| Red FO | Anillo | Rutas redundantes |
| Energía | UPS | [X] horas de autonomía |
| Storage | RAID 6 | Tolerancia a falla de 2 discos |

### 5.2 SLA Esperado
- **Disponibilidad:** 99.5% anual mínimo
- **MTBF:** [X] horas
- **MTTR:** [X] horas

---

## 6. SEGURIDAD

### 6.1 Seguridad Física
- Cámaras en carcasas antivandalismo
- Gabinetes cerrados con llave
- Control de acceso a CCO

### 6.2 Seguridad Lógica
- Autenticación de usuarios
- Cifrado de video (TLS/SSL)
- Segregación de red (VLAN)
- Firewall entre red CCTV y otras redes

---

## 7. INTERFACES CON OTROS SISTEMAS

| Sistema | Interface | Protocolo | Datos Intercambiados |
|:--------|:----------|:----------|:---------------------|
| CCO | Red IP | ONVIF/RTSP | Stream de video |
| ITS | Base de Datos | API REST | Eventos de CCTV |
| Control Acceso | Red IP | SDK | Integración de alarmas |

---

## 8. ESCALABILIDAD

### 8.1 Crecimiento Futuro
- Capacidad para [X]% más cámaras
- Storage expandible a [X] TB
- Ancho de banda dimensionado con [X]% de margen

---

## 9. PRÓXIMOS PASOS

- [ ] Desarrollar especificaciones técnicas detalladas (T04)
- [ ] Seleccionar proveedores
- [ ] Validar arquitectura con fabricantes
- [ ] Estimar costos detallados (T05)

---

**Versión:** 1.0  
**Estado:** ✅ Completado  
**Fecha:** [DD/MM/AAAA]
```

#### T04: Especificación Técnica

**Ejemplo: Cámaras CCTV**

**Archivo:** `IV. Ingenieria Basica/28_T04_Especificacion_Camaras_CCTV_v1.0.md`

```markdown
# T04: ESPECIFICACIÓN TÉCNICA - CÁMARAS CCTV
## Proyecto [NOMBRE PROYECTO VEHICULAR]

**Fecha:** [DD/MM/AAAA]  
**Equipo:** Cámaras IP PTZ para vigilancia vial  
**Responsable:** Ing. Seguridad Electrónica  
**Versión:** 1.0  

---

## 1. INFORMACIÓN GENERAL

| Campo | Valor |
|-------|-------|
| **Equipo** | Cámara IP PTZ Exterior |
| **Cantidad estimada** | [X] unidades |
| **Ubicación** | A lo largo del corredor vial |
| **Sistema asociado** | CCTV - Sistema de Videovigilancia |
| **Criticidad** | Alta |

---

## 2. ESPECIFICACIONES FUNCIONALES

### 2.1 Función Principal
Captura de video en alta definición de eventos en el corredor vial para:
- Supervisión del tráfico en tiempo real
- Detección de incidentes
- Apoyo en atención de emergencias
- Evidencia de eventos

### 2.2 Capacidades Requeridas
- Captura de video continua 24/7
- Movimiento PTZ (Pan-Tilt-Zoom) remoto desde CCO
- Grabación local en caso de falla de comunicaciones (opcional)
- Operación en condiciones climáticas adversas

---

## 3. ESPECIFICACIONES TÉCNICAS

### 3.1 Cámara

| Parámetro | Especificación Mínima | Preferible |
|:----------|:---------------------|:-----------|
| **Resolución** | 1080p (1920x1080) | 4K (3840x2160) |
| **Sensor** | 1/2.8" CMOS | 1/1.8" CMOS |
| **Frame Rate** | 25 fps @ 1080p | 30 fps @ 4K |
| **Compresión** | H.264 | H.265 |
| **Bitrate** | 2-6 Mbps | Variable (VBR) |
| **WDR** | 120 dB | 140 dB |
| **SNR** | >52 dB | >55 dB |
| **Iluminación mínima** | 0.01 lux (color) | 0.005 lux (color) |
| **IR** | Hasta 150m | Hasta 200m |

### 3.2 PTZ

| Parámetro | Especificación Mínima |
|:----------|:---------------------|
| **Pan** | 360° continuo |
| **Tilt** | -90° a +90° |
| **Velocidad Pan** | 0.1° a 300°/s |
| **Velocidad Tilt** | 0.1° a 200°/s |
| **Zoom Óptico** | 30x mínimo |
| **Zoom Digital** | 16x mínimo |
| **Presets** | 256 mínimo |
| **Tours** | 8 mínimo |
| **Auto-tracking** | Sí |

### 3.3 Óptica

| Parámetro | Especificación |
|:----------|:---------------|
| **Distancia Focal** | 5.1-153 mm (aprox., 30x zoom) |
| **Apertura** | F1.6 - F4.4 |
| **Campo de visión** | 63.7° - 2.4° (horizontal) |

### 3.4 Interfaz de Red

| Parámetro | Especificación |
|:----------|:---------------|
| **Protocolo** | TCP/IP, UDP, HTTP, HTTPS, RTSP, ONVIF |
| **Interface** | RJ45 Gigabit Ethernet |
| **PoE** | IEEE 802.3at (PoE+) o IEEE 802.3bt (PoE++) |
| **Ancho de banda** | Ajustable, hasta 10 Mbps |
| **Almacenamiento local** | Ranura microSD (128GB-256GB) opcional |

### 3.5 Protección y Ambiente

| Parámetro | Especificación Mínima |
|:----------|:---------------------|
| **Grado IP** | IP66 mínimo |
| **Grado IK** | IK10 |
| **Temperatura operación** | -30°C a +60°C |
| **Humedad** | 0% a 95% RH (sin condensación) |
| **Certificación** | CE, FCC, UL, RoHS |

### 3.6 Energía

| Parámetro | Especificación |
|:----------|:---------------|
| **Alimentación** | PoE+ (IEEE 802.3at) o PoE++ (IEEE 802.3bt) |
| **Consumo máximo** | 30W (PoE+) o 60W (PoE++) |
| **Voltaje** | 48 VDC (PoE) |

---

## 4. FUNCIONALIDADES AVANZADAS

### 4.1 Analítica de Video (Deseable)
- Detección de movimiento inteligente
- Detección de objetos abandonados
- Detección de multitudes
- Conteo de vehículos
- Detección de dirección incorrecta

### 4.2 Gestión y Control
- Configuración remota vía web
- Firmware actualizable remotamente
- Sincronización NTP
- Soporte SNMP para monitoreo
- API para integración con VMS

---

## 5. ACCESORIOS Y MONTAJE

### 5.1 Montaje

| Ítem | Especificación |
|:-----|:---------------|
| **Poste/Estructura** | Poste de acero galvanizado, altura [X] m |
| **Brazo de montaje** | Acero inoxidable, ajustable |
| **Tornillería** | Acero inoxidable A4 |

### 5.2 Protección

| Ítem | Especificación |
|:-----|:---------------|
| **Carcasa antivandalismo** | Incluida (IK10) |
| **Limpiador de domo** | Automático (deseable) |
| **Calefactor** | Para ambientes <0°C |

---

## 6. NORMATIVAS Y ESTÁNDARES

| Norma | Aplicación |
|:------|:-----------|
| **ONVIF** | Interoperabilidad |
| **IEC 62676** | Sistemas CCTV |
| **ISO/IEC 27001** | Seguridad de la información |
| **INVIAS** | Especificaciones locales |

---

## 7. INSTALACIÓN Y PUESTA EN MARCHA

### 7.1 Requisitos de Instalación
- Mano de obra especializada certificada
- Equipos de seguridad para trabajo en altura
- Herramientas de alineación y configuración

### 7.2 Pruebas de Aceptación
- [ ] Verificación de resolución y calidad de imagen
- [ ] Prueba de PTZ (presets, tours)
- [ ] Prueba de IR nocturna
- [ ] Prueba de comunicación con NVR
- [ ] Prueba de PoE y consumo energético
- [ ] Prueba de protección IP/IK (antivandalismo)

---

## 8. MANTENIMIENTO

### 8.1 Mantenimiento Preventivo
- **Frecuencia:** Trimestral
- **Actividades:**
  - Limpieza de domo
  - Verificación de fijaciones
  - Actualización de firmware
  - Verificación de calidad de imagen
  - Prueba de PTZ

### 8.2 Mantenimiento Correctivo
- **Respuesta:** [X] horas máximo
- **Repuestos críticos en stock:** [Lista de repuestos]

---

## 9. GARANTÍA Y SOPORTE

| Aspecto | Requisito |
|:--------|:----------|
| **Garantía del fabricante** | 3 años mínimo |
| **Soporte técnico** | 24/7 |
| **Disponibilidad de repuestos** | Durante toda la concesión |
| **Capacitación** | Personal de O&M |

---

## 10. PROVEEDORES PRELIMINARES

| Proveedor | Modelo Referencia | Cumplimiento Specs |
|:----------|:------------------|:-------------------|
| Axis Communications | AXIS Q6155-E | ✅ |
| Hikvision | DS-2DE7A245IW-AE | ✅ |
| Dahua | SD6CE245U-HNI | ✅ |
| Bosch | AUTODOME IP starlight 7000i | ✅ |

---

## 11. ESTIMACIÓN DE COSTOS

| Ítem | Cantidad | Costo Unitario | Costo Total |
|:-----|:---------|:---------------|:------------|
| Cámara PTZ | [X] | $[XXX] USD | $[XXX] USD |
| Poste y montaje | [X] | $[XXX] USD | $[XXX] USD |
| Instalación | [X] | $[XXX] USD | $[XXX] USD |
| Configuración | [X] | $[XXX] USD | $[XXX] USD |
| **TOTAL** | | | **$[XXX] USD** |

---

## 12. PRÓXIMOS PASOS

- [ ] Validar especificaciones con fabricantes
- [ ] Solicitar cotizaciones formales
- [ ] Realizar pruebas piloto (1-2 cámaras)
- [ ] Finalizar diseño de ubicaciones

---

**Versión:** 1.0  
**Estado:** ✅ Especificación Lista para Cotización  
**Fecha:** [DD/MM/AAAA]
```

---

## FASE 5: INGENIERÍA DE DETALLE

### Duración: 4-6 semanas

### PASO 5.1: Planos y Esquemas Técnicos

Para proyectos vehículares, los planos típicos incluyen:

#### Planos Civiles:
- Planta y perfil del corredor
- Planos de puentes
- Planos de túneles
- Planos de intercambios
- Planos de drenaje
- Secciones típicas de pavimento

#### Planos de Sistemas:
- Planos de ubicación de equipos ITS
- Planos de red de fibra óptica
- Planos de instalaciones eléctricas
- Planos de iluminación
- Planos de señalización vial
- Planos de CCO (layout)
- Planos de estaciones de peaje

**Formato de planos:** AutoCAD .dwg, PDF

**Archivo README en carpeta V:**

`V. Ingenieria de Detalle/README_PLANOS.md`

```markdown
# PLANOS DE INGENIERÍA DE DETALLE
## Proyecto [NOMBRE PROYECTO VEHICULAR]

**Versión:** 1.0  
**Fecha:** [DD/MM/AAAA]  

---

## 📁 ORGANIZACIÓN DE PLANOS

### V.1 PLANOS CIVILES
- `V.1.1_Planta_General/` - Plantas del corredor
- `V.1.2_Perfil_Longitudinal/` - Perfiles
- `V.1.3_Secciones_Transversales/` - Secciones típicas
- `V.1.4_Puentes/` - Detalles de puentes
- `V.1.5_Tuneles/` - Detalles de túneles
- `V.1.6_Drenaje/` - Sistema de drenaje
- `V.1.7_Intercambios/` - Intercambios viales

### V.2 PLANOS DE SEÑALIZACIÓN
- `V.2.1_Senalizacion_Vertical/` - Ubicación de señales
- `V.2.2_Senalizacion_Horizontal/` - Demarcación
- `V.2.3_Defensas_Metalicas/` - Barreras

### V.3 PLANOS ELÉCTRICOS
- `V.3.1_Iluminacion_Vial/` - Sistema de alumbrado
- `V.3.2_Subestaciones/` - Subestaciones eléctricas
- `V.3.3_UPS/` - Sistemas de energía de respaldo

### V.4 PLANOS ITS
- `V.4.1_CCTV/` - Ubicación de cámaras
- `V.4.2_PMV/` - Paneles de mensaje variable
- `V.4.3_WIM/` - Estaciones de pesaje
- `V.4.4_Meteo/` - Estaciones meteorológicas
- `V.4.5_SOS/` - Teléfonos de emergencia

### V.5 PLANOS TELECOMUNICACIONES
- `V.5.1_Fibra_Optica/` - Red troncal de FO
- `V.5.2_Radio/` - Torres y estaciones base
- `V.5.3_Red_Datos/` - Topología de red

### V.6 PLANOS PEAJE
- `V.6.1_Estaciones_Peaje/` - Arquitectura de peajes
- `V.6.2_Carriles/` - Distribución de carriles
- `V.6.3_Equipos/` - Ubicación de equipos

### V.7 PLANOS CCO
- `V.7.1_Layout_CCO/` - Distribución de espacios
- `V.7.2_Arquitectura_CCO/` - Detalles arquitectónicos
- `V.7.3_Instalaciones_CCO/` - Eléctricas, HVAC, etc.

---

## 📋 NOMENCLATURA DE PLANOS

**Formato:** [PROYECTO]-[DISCIPLINA]-[SISTEMA]-[TIPO]-[NÚMERO]-[REVISIÓN]

**Ejemplo:** `LDCH-ITS-CCTV-PL-001-R0.dwg`

- **LDCH:** Código del proyecto
- **ITS:** Disciplina (ITS, CIV, ELE, TEL, etc.)
- **CCTV:** Sistema específico
- **PL:** Tipo de plano (PL=Planta, PR=Perfil, DT=Detalle, etc.)
- **001:** Número consecutivo
- **R0:** Revisión (R0=Inicial, R1=Rev1, etc.)

---

## ✅ ESTADO DE PLANOS

| Disciplina | Cantidad Planos | Estado | Fecha |
|:-----------|:---------------:|:------:|:-----:|
| Civiles | [X] | 🔄 En desarrollo | [DD/MM/AAAA] |
| Señalización | [X] | ⏳ Pendiente | - |
| Eléctricos | [X] | ⏳ Pendiente | - |
| ITS | [X] | 🔄 En desarrollo | [DD/MM/AAAA] |
| Telecomunicaciones | [X] | ⏳ Pendiente | - |
| Peaje | [X] | ⏳ Pendiente | - |
| CCO | [X] | ⏳ Pendiente | - |

---

**Última actualización:** [DD/MM/AAAA]
```

---

## FASE 6: OPERACIÓN Y REVERSIÓN

### Duración: 2-3 semanas

### PASO 6.1: Manuales de Operación y Mantenimiento

**Estructura de documentos O&M:**

#### VI.1 Manuales de Operación

**Archivo:** `VI. Operacion y Reversion/VI.1_Manual_Operacion_Sistema_[NOMBRE].md`

```markdown
# MANUAL DE OPERACIÓN - SISTEMA [NOMBRE]
## Proyecto [NOMBRE PROYECTO VEHICULAR]

**Versión:** 1.0  
**Fecha:** [DD/MM/AAAA]  
**Sistema:** [Nombre del Sistema]  
**Responsable:** Gerente de Operaciones  

---

## 1. INTRODUCCIÓN

### 1.1 Propósito del Manual
[Descripción del propósito del manual de operación]

### 1.2 Alcance
[Sistemas y equipos cubiertos por este manual]

### 1.3 Personal Destinatario
- Operadores de CCO
- Supervisores de turno
- Gerente de operaciones

---

## 2. DESCRIPCIÓN DEL SISTEMA

### 2.1 Componentes Principales
[Lista de componentes del sistema]

### 2.2 Diagrama del Sistema
[Diagrama simplificado del sistema]

### 2.3 Ubicaciones
[Mapa o lista de ubicaciones de equipos]

---

## 3. PROCEDIMIENTOS DE OPERACIÓN NORMAL

### 3.1 Encendido del Sistema
**Paso a paso:**
1. [Paso 1]
2. [Paso 2]
3. [...]

### 3.2 Monitoreo Continuo
**Actividades:**
- [Actividad 1]
- [Actividad 2]
- [...]

### 3.3 Operación de [Función Específica]
**Procedimiento:**
1. [Paso 1]
2. [Paso 2]
3. [...]

### 3.4 Apagado del Sistema
**Paso a paso:**
1. [Paso 1]
2. [Paso 2]
3. [...]

---

## 4. PROCEDIMIENTOS DE EMERGENCIA

### 4.1 Falla de Energía
**Procedimiento:**
1. [Paso 1]
2. [Paso 2]
3. [...]

### 4.2 Falla de Comunicaciones
**Procedimiento:**
1. [Paso 1]
2. [Paso 2]
3. [...]

### 4.3 [Otra Emergencia]
**Procedimiento:**
1. [Paso 1]
2. [Paso 2]
3. [...]

---

## 5. MATRIZ DE ALARMAS Y EVENTOS

| Alarma/Evento | Nivel | Causa Probable | Acción Requerida |
|:--------------|:------|:---------------|:-----------------|
| [Alarma 1] | Crítica | [Causa] | [Acción] |
| [Alarma 2] | Alta | [Causa] | [Acción] |
| [Alarma 3] | Media | [Causa] | [Acción] |

---

## 6. REGISTROS Y REPORTES

### 6.1 Bitácora de Operación
- Formato: [Referencia]
- Frecuencia: Diaria
- Responsable: Operador de turno

### 6.2 Reporte de Incidentes
- Formato: [Referencia]
- Frecuencia: Por evento
- Responsable: Supervisor

### 6.3 Reporte de Disponibilidad
- Formato: [Referencia]
- Frecuencia: Mensual
- Responsable: Gerente de Operaciones

---

## 7. CONTACTOS DE SOPORTE

| Rol | Nombre | Teléfono | Email |
|:----|:-------|:---------|:------|
| Soporte Técnico | [Nombre] | [Tel] | [Email] |
| Gerente O&M | [Nombre] | [Tel] | [Email] |
| Proveedor [X] | [Nombre] | [Tel] | [Email] |

---

## 8. REFERENCIAS

- Especificación Técnica del Sistema
- Manual del Fabricante [Equipo X]
- Planos As-Built
- Matriz de Riesgos Operacionales

---

**Versión:** 1.0  
**Estado:** ✅ Aprobado  
**Fecha:** [DD/MM/AAAA]
```

#### VI.2 Manuales de Mantenimiento

**Archivo:** `VI. Operacion y Reversion/VI.2_Manual_Mantenimiento_Sistema_[NOMBRE].md`

```markdown
# MANUAL DE MANTENIMIENTO - SISTEMA [NOMBRE]
## Proyecto [NOMBRE PROYECTO VEHICULAR]

**Versión:** 1.0  
**Fecha:** [DD/MM/AAAA]  
**Sistema:** [Nombre del Sistema]  
**Responsable:** Gerente de Mantenimiento  

---

## 1. INTRODUCCIÓN

### 1.1 Propósito del Manual
[Descripción del propósito del manual de mantenimiento]

### 1.2 Tipos de Mantenimiento
- **Rutinario:** Actividades diarias/semanales
- **Preventivo:** Actividades programadas periódicas
- **Correctivo:** Reparaciones por falla
- **Extraordinario:** Renovaciones y reemplazos mayores

---

## 2. PLAN DE MANTENIMIENTO PREVENTIVO

### 2.1 Mantenimiento Rutinario (Semanal/Mensual)

| Ítem | Actividad | Frecuencia | Responsable |
|:-----|:----------|:-----------|:------------|
| [Equipo 1] | Inspección visual | Semanal | Técnico |
| [Equipo 1] | Limpieza | Mensual | Técnico |
| [Equipo 2] | [Actividad] | [Frecuencia] | [Responsable] |

### 2.2 Mantenimiento Preventivo (Trimestral/Semestral/Anual)

| Ítem | Actividad | Frecuencia | Responsable | Horas Estimadas |
|:-----|:----------|:-----------|:------------|:----------------|
| [Equipo 1] | Revisión completa | Trimestral | Técnico especializado | 4 h |
| [Equipo 1] | Actualización firmware | Semestral | Técnico | 2 h |
| [Equipo 2] | [Actividad] | [Frecuencia] | [Responsable] | [Horas] |

---

## 3. PROCEDIMIENTOS DE MANTENIMIENTO

### 3.1 [Actividad de Mantenimiento 1]

**Equipo:** [Nombre del equipo]  
**Frecuencia:** [Frecuencia]  
**Duración estimada:** [X] horas  
**Personal requerido:** [X] técnicos  

**Herramientas y materiales:**
- [Herramienta 1]
- [Material 1]
- [...]

**Procedimiento:**
1. [Paso 1]
2. [Paso 2]
3. [...]

**Registro:**
- Formato: [Referencia]
- Responsable de llenar: [Cargo]

### 3.2 [Actividad de Mantenimiento 2]

[Repetir estructura anterior]

---

## 4. REPUESTOS Y CONSUMIBLES

### 4.1 Inventario Mínimo de Repuestos

| Repuesto | Código | Cantidad Mínima | Ubicación | Tiempo Reposición |
|:---------|:-------|:----------------|:----------|:------------------|
| [Repuesto 1] | [Código] | [X] | [Bodega] | [X] días |
| [Repuesto 2] | [Código] | [X] | [Bodega] | [X] días |

### 4.2 Consumibles

| Consumible | Código | Cantidad Mensual | Proveedor |
|:-----------|:-------|:-----------------|:----------|
| [Consumible 1] | [Código] | [X] | [Proveedor] |
| [Consumible 2] | [Código] | [X] | [Proveedor] |

---

## 5. MANTENIMIENTO CORRECTIVO

### 5.1 Diagnóstico de Fallas

| Síntoma | Causa Probable | Diagnóstico | Solución |
|:--------|:---------------|:------------|:---------|
| [Síntoma 1] | [Causa] | [Cómo diagnosticar] | [Solución] |
| [Síntoma 2] | [Causa] | [Cómo diagnosticar] | [Solución] |

### 5.2 Tiempos de Respuesta

| Nivel de Prioridad | Tiempo de Respuesta | Tiempo de Reparación |
|:-------------------|:--------------------|:---------------------|
| Crítica | [X] horas | [Y] horas |
| Alta | [X] horas | [Y] horas |
| Media | [X] horas | [Y] horas |
| Baja | [X] horas | [Y] horas |

---

## 6. SEGURIDAD EN MANTENIMIENTO

### 6.1 EPP Requerido
- [EPP 1]
- [EPP 2]
- [...]

### 6.2 Procedimientos de Seguridad
1. [Procedimiento 1]
2. [Procedimiento 2]
3. [...]

### 6.3 Bloqueo y Etiquetado (LOTO)
[Procedimiento LOTO para trabajos eléctricos/mecánicos]

---

## 7. INDICADORES DE MANTENIMIENTO

| Indicador | Fórmula | Meta | Frecuencia |
|:----------|:--------|:-----|:-----------|
| MTBF | [Fórmula] | >[X] horas | Mensual |
| MTTR | [Fórmula] | <[Y] horas | Mensual |
| Disponibilidad | [Fórmula] | >[Z]% | Mensual |

---

## 8. REGISTROS Y DOCUMENTACIÓN

### 8.1 Formatos
- Orden de Trabajo
- Reporte de Mantenimiento Preventivo
- Reporte de Mantenimiento Correctivo
- Inventario de Repuestos

### 8.2 Software de Gestión
- [Nombre del CMMS]
- [Acceso y usuarios]

---

## 9. REFERENCIAS

- Manuales del fabricante
- Especificaciones técnicas
- Planos As-Built
- Garantías de equipos

---

**Versión:** 1.0  
**Estado:** ✅ Aprobado  
**Fecha:** [DD/MM/AAAA]
```

### PASO 6.2: Plan de Reversión

**Archivo:** `VI. Operacion y Reversion/VI.3_Plan_Reversion_v1.0.md`

```markdown
# PLAN DE REVERSIÓN DE ACTIVOS
## Proyecto [NOMBRE PROYECTO VEHICULAR]

**Versión:** 1.0  
**Fecha:** [DD/MM/AAAA]  
**Responsable:** Gerente de Proyecto  

---

## 1. INTRODUCCIÓN

### 1.1 Propósito
[Descripción del propósito del plan de reversión]

### 1.2 Alcance
[Activos y sistemas a revertir al finalizar la concesión]

### 1.3 Marco Legal
- Contrato de Concesión No. XXX de 20XX, Cláusula [X]
- [Otras referencias legales]

---

## 2. ACTIVOS A REVERTIR

### 2.1 Infraestructura Civil

| Activo | Descripción | Cantidad | Condición de Entrega |
|:-------|:------------|:---------|:---------------------|
| Pavimento | [Descripción] | [XXX] km | Según AT[X], vida útil residual >[Y] años |
| Puentes | [Descripción] | [X] unidades | Buen estado estructural |
| Túneles | [Descripción] | [X] unidades | Buen estado estructural |
| [Continuar...] | [...] | [...] | [...] |

### 2.2 Sistemas ITS

| Activo | Descripción | Cantidad | Condición de Entrega |
|:-------|:------------|:---------|:---------------------|
| CCTV | Cámaras IP PTZ | [X] unidades | Operativas, vida útil >[Y] años |
| PMV | Paneles Mensaje Variable | [X] unidades | Operativos, vida útil >[Y] años |
| [Continuar...] | [...] | [...] | [...] |

### 2.3 Sistemas de Peaje

| Activo | Descripción | Cantidad | Condición de Entrega |
|:-------|:------------|:---------|:---------------------|
| Carriles de peaje | [Descripción] | [X] carriles | Operativos |
| Sistema TAG | [Descripción] | [X] sistemas | Operativo con licencias vigentes |
| [Continuar...] | [...] | [...] | [...] |

### 2.4 Telecomunicaciones

| Activo | Descripción | Cantidad | Condición de Entrega |
|:-------|:------------|:---------|:---------------------|
| Fibra Óptica | Red troncal | [XXX] km | Operativa, sin daños |
| Radio | Estaciones Base | [X] unidades | Operativas |
| [Continuar...] | [...] | [...] | [...] |

### 2.5 Otros Sistemas

[Continuar con todos los sistemas del proyecto]

---

## 3. CONDICIONES DE ENTREGA

### 3.1 Condiciones Técnicas Generales

- **Operatividad:** Todos los sistemas deben estar operativos
- **Vida útil residual:** Mínimo [X] años según AT[X]
- **Mantenimiento:** Al día con el plan de mantenimiento
- **Certificaciones:** Vigentes (ISO, etc.)
- **Repuestos:** Stock mínimo de repuestos críticos

### 3.2 Documentación Requerida

| Documento | Descripción | Responsable |
|:----------|:------------|:------------|
| Inventario completo | Lista de todos los activos | Gerente de Activos |
| Planos As-Built | Planos actualizados | Gerente de Ingeniería |
| Manuales O&M | Actualizados | Gerente de Operaciones |
| Registros de mantenimiento | Históricos completos | Gerente de Mantenimiento |
| Certificados de calibración | Equipos de medición | Gerente de Calidad |
| Licencias de software | Vigentes y transferibles | Gerente de TI |

---

## 4. PROCESO DE REVERSIÓN

### 4.1 Cronograma de Reversión

| Fase | Actividad | Responsable | Duración | Inicio (meses antes del fin) |
|:-----|:----------|:------------|:---------|:-----------------------------|
| **Fase 1: Preparación** | Inventario inicial | Gerente Activos | 3 meses | 24 meses |
| **Fase 2: Evaluación** | Evaluación técnica | Interventoría | 6 meses | 18 meses |
| **Fase 3: Intervenciones** | Mantenimiento extraordinario | Gerente Mant. | 12 meses | 12 meses |
| **Fase 4: Documentación** | Consolidación documental | Gerente Ing. | 6 meses | 12 meses |
| **Fase 5: Transferencia** | Entrega formal | Gerente Proyecto | 1 mes | 1 mes |

### 4.2 Fases Detalladas

#### FASE 1: PREPARACIÓN (24-21 meses antes)
**Actividades:**
1. Crear inventario preliminar de activos
2. Revisar condiciones contractuales de reversión
3. Identificar brechas entre estado actual y requerido
4. Elaborar plan de acción

#### FASE 2: EVALUACIÓN (18-12 meses antes)
**Actividades:**
1. Evaluación técnica completa con interventoría
2. Pruebas de funcionalidad de todos los sistemas
3. Inspecciones estructurales (civiles)
4. Evaluación de vida útil residual
5. Identificar necesidades de intervención

#### FASE 3: INTERVENCIONES (12-0 meses antes)
**Actividades:**
1. Ejecutar mantenimiento extraordinario
2. Reemplazar equipos con vida útil agotada
3. Actualizar software y firmware
4. Reparar daños estructurales
5. Renovar certificaciones

#### FASE 4: DOCUMENTACIÓN (12-6 meses antes)
**Actividades:**
1. Actualizar planos As-Built
2. Consolidar manuales O&M
3. Compilar registros de mantenimiento
4. Preparar inventario final
5. Recopilar certificaciones y garantías

#### FASE 5: TRANSFERENCIA (1 mes antes - entrega)
**Actividades:**
1. Acta de entrega preliminar
2. Capacitación a nuevo operador (si aplica)
3. Transferencia de conocimiento
4. Acta de entrega final

---

## 5. RESPONSABILIDADES

| Rol | Responsabilidades |
|:----|:------------------|
| **Gerente de Proyecto** | Coordinación general del proceso de reversión |
| **Gerente de Activos** | Inventario y valoración de activos |
| **Gerente de Ingeniería** | Actualización de planos y documentación técnica |
| **Gerente de Operaciones** | Manuales operativos y capacitación |
| **Gerente de Mantenimiento** | Ejecución de mantenimiento extraordinario |
| **Interventoría** | Verificación y aprobación de condiciones de entrega |
| **Cliente (ANI/Gobierno)** | Recepción de activos |

---

## 6. PRESUPUESTO DE REVERSIÓN

| Ítem | Descripción | Costo Estimado |
|:-----|:------------|:---------------|
| Mantenimiento extraordinario | [Descripción] | $[XXX] |
| Reemplazo de equipos | [Descripción] | $[XXX] |
| Actualización de sistemas | [Descripción] | $[XXX] |
| Documentación y planos | [Descripción] | $[XXX] |
| Interventoría y evaluaciones | [Descripción] | $[XXX] |
| Capacitación | [Descripción] | $[XXX] |
| **TOTAL** | | **$[XXX]** |

---

## 7. RIESGOS Y MITIGACIÓN

| Riesgo | Probabilidad | Impacto | Mitigación |
|:-------|:-------------|:--------|:-----------|
| Falta de presupuesto para mantenimiento extraordinario | Media | Alto | Provisión financiera desde inicio de concesión |
| Documentación incompleta o desactualizada | Alta | Medio | Sistema de gestión documental desde Fase 1 |
| Equipos con vida útil agotada | Media | Alto | Plan de renovación progresivo |
| [Continuar...] | [...] | [...] | [...] |

---

## 8. REFERENCIAS

- Contrato de Concesión No. XXX de 20XX, Cláusula [X]
- AT[X] - Reversión de Activos
- Manuales de Operación y Mantenimiento
- Plan Maestro de Mantenimiento

---

**Versión:** 1.0  
**Estado:** ✅ Aprobado  
**Fecha:** [DD/MM/AAAA]
```

---

## FASE 7: DOCUMENTOS TRANSVERSALES

### Duración: 2-3 semanas

### PASO 7.1: Gestión de Riesgos

**Archivo:** `VII. Documentos Transversales/VII.1_Gestion_Riesgos_v1.0.md`

```markdown
# GESTIÓN DE RIESGOS
## Proyecto [NOMBRE PROYECTO VEHICULAR]

**Versión:** 1.0  
**Fecha:** [DD/MM/AAAA]  
**Responsable:** Gerente de Riesgos  

---

## 1. INTRODUCCIÓN

### 1.1 Propósito
[Identificar, evaluar y gestionar riesgos del proyecto]

### 1.2 Alcance
[Todas las fases del proyecto: Diseño, Construcción, O&M, Reversión]

### 1.3 Metodología
[Metodología de gestión de riesgos: PMI, ISO 31000, etc.]

---

## 2. MATRIZ DE RIESGOS

### 2.1 Escala de Probabilidad

| Nivel | Descripción | Probabilidad |
|:------|:------------|:-------------|
| **5 - Muy Alta** | Ocurrirá casi con certeza | >80% |
| **4 - Alta** | Muy probable que ocurra | 60-80% |
| **3 - Media** | Puede ocurrir | 40-60% |
| **2 - Baja** | Poco probable | 20-40% |
| **1 - Muy Baja** | Muy improbable | <20% |

### 2.2 Escala de Impacto

| Nivel | Costo | Cronograma | Calidad | Reputación |
|:------|:------|:-----------|:--------|:-----------|
| **5 - Muy Alto** | >$[X]B | >6 meses | Falla crítica | Crisis nacional |
| **4 - Alto** | $[X]-[Y]B | 3-6 meses | Falla mayor | Crisis regional |
| **3 - Medio** | $[X]-[Y]M | 1-3 meses | Degradación | Atención medios |
| **2 - Bajo** | $[X]-[Y]M | <1 mes | Menor | Atención local |
| **1 - Muy Bajo** | <$[X]M | <1 semana | Insignificante | Sin impacto |

### 2.3 Matriz de Exposición al Riesgo

| Probabilidad / Impacto | 1 | 2 | 3 | 4 | 5 |
|:-----------------------|:--|:--|:--|:--|:--|
| **5** | 5 | 10 | 15 | 20 | **25** |
| **4** | 4 | 8 | 12 | 16 | **20** |
| **3** | 3 | 6 | 9 | 12 | 15 |
| **2** | 2 | 4 | 6 | 8 | 10 |
| **1** | 1 | 2 | 3 | 4 | 5 |

**Niveles de Riesgo:**
- **Crítico (20-25):** Rojo - Atención inmediata
- **Alto (15-19):** Naranja - Monitoreo constante
- **Medio (8-14):** Amarillo - Revisar periódicamente
- **Bajo (1-7):** Verde - Monitoreo rutinario

---

## 3. REGISTRO DE RIESGOS

### 3.1 Riesgos Técnicos

| ID | Riesgo | Prob. | Impacto | Exposición | Estrategia | Responsable |
|:---|:-------|:------|:--------|:-----------|:-----------|:------------|
| **RT-001** | Falla de sistema CCTV por vandalismo | 4 | 3 | 12 | Mitigar | Gerente ITS |
| **RT-002** | Obsolescencia tecnológica de sistemas | 3 | 4 | 12 | Aceptar/Mitigar | Gerente TI |
| **RT-003** | Falla de comunicaciones por fibra cortada | 3 | 4 | 12 | Transferir/Mitigar | Gerente Telecom |
| **RT-004** | [...]  | [...] | [...] | [...] | [...] | [...] |

### 3.2 Riesgos de Construcción

| ID | Riesgo | Prob. | Impacto | Exposición | Estrategia | Responsable |
|:---|:-------|:------|:--------|:-----------|:-----------|:------------|
| **RC-001** | Retrasos por clima adverso | 4 | 3 | 12 | Aceptar | Gerente Construcción |
| **RC-002** | Hallazgos geotécnicos imprevistos | 2 | 5 | 10 | Transferir (contingencias) | Gerente Construcción |
| **RC-003** | [...]  | [...] | [...] | [...] | [...] | [...] |

### 3.3 Riesgos Ambientales y Sociales

| ID | Riesgo | Prob. | Impacto | Exposición | Estrategia | Responsable |
|:---|:-------|:------|:--------|:-----------|:-----------|:------------|
| **RA-001** | Oposición comunitaria a obras | 3 | 4 | 12 | Mitigar | Gerente Social |
| **RA-002** | Demora en permisos ambientales | 3 | 5 | 15 | Mitigar | Gerente Ambiental |
| **RA-003** | [...]  | [...] | [...] | [...] | [...] | [...] |

### 3.4 Riesgos Contractuales y Legales

| ID | Riesgo | Prob. | Impacto | Exposición | Estrategia | Responsable |
|:---|:-------|:------|:--------|:-----------|:-----------|:------------|
| **RL-001** | Disputas contractuales con proveedor | 2 | 4 | 8 | Mitigar | Gerente Legal |
| **RL-002** | Cambios regulatorios | 3 | 4 | 12 | Aceptar/Monitorear | Gerente Legal |
| **RL-003** | [...]  | [...] | [...] | [...] | [...] | [...] |

### 3.5 Riesgos Financieros

| ID | Riesgo | Prob. | Impacto | Exposición | Estrategia | Responsable |
|:---|:-------|:------|:--------|:-----------|:-----------|:------------|
| **RF-001** | Variación de tasa de cambio | 4 | 3 | 12 | Transferir (hedging) | Gerente Financiero |
| **RF-002** | Incremento de costos de materiales | 3 | 3 | 9 | Mitigar | Gerente Financiero |
| **RF-003** | [...]  | [...] | [...] | [...] | [...] | [...] |

---

## 4. PLANES DE RESPUESTA

### 4.1 RT-001: Falla de sistema CCTV por vandalismo

**Estrategia:** Mitigar

**Acciones de Mitigación (Preventivas):**
1. Instalar cámaras en carcasas antivandalismo (IK10)
2. Implementar CCTV secundario para vigilar equipos críticos
3. Programas de relacionamiento comunitario en zonas de riesgo
4. Señalización disuasiva ("Zona videovigilada")

**Acciones de Contingencia (Si ocurre):**
1. Reemplazo de cámara en <24 horas
2. Denuncia ante autoridades
3. Revisión de grabaciones para identificar responsables
4. Evaluación de medidas adicionales

**Presupuesto reserva:** $[XXX] para reemplazos

**Indicadores:**
- Número de eventos de vandalismo/mes
- Tiempo promedio de reparación

[Continuar con planes de respuesta para cada riesgo crítico/alto]

---

## 5. MONITOREO Y CONTROL

### 5.1 Frecuencia de Revisión
- **Riesgos críticos:** Semanal
- **Riesgos altos:** Quincenal
- **Riesgos medios:** Mensual
- **Riesgos bajos:** Trimestral

### 5.2 Reporting
- Reporte mensual al Comité de Dirección
- Dashboard de riesgos actualizado semanalmente

### 5.3 Auditorías
- Auditoría de gestión de riesgos semestral

---

## 6. REFERENCIAS

- Plan de Gestión del Proyecto
- Contrato de Concesión
- ISO 31000 - Gestión de Riesgos
- PMBOK - Gestión de Riesgos

---

**Versión:** 1.0  
**Estado:** ✅ Aprobado  
**Fecha:** [DD/MM/AAAA]
```

### PASO 7.2: Interfaces Entre Sistemas

**Archivo:** `VII. Documentos Transversales/VII.2_Interfaces_Sistemas_v1.0.md`

```markdown
# GESTIÓN DE INTERFACES ENTRE SISTEMAS
## Proyecto [NOMBRE PROYECTO VEHICULAR]

**Versión:** 1.0  
**Fecha:** [DD/MM/AAAA]  
**Responsable:** Gerente de Integración  

---

## 1. INTRODUCCIÓN

### 1.1 Propósito
[Documentar y gestionar todas las interfaces entre sistemas del proyecto]

### 1.2 Alcance
[Interfaces técnicas, operacionales y contractuales]

---

## 2. MATRIZ DE INTERFACES

| Interface ID | Sistema A | Sistema B | Tipo | Criticidad | Responsable A | Responsable B |
|:-------------|:----------|:----------|:-----|:-----------|:--------------|:--------------|
| **IF-001** | CCTV | CCO | Técnica | Alta | Ing. Seguridad | Ing. CCO |
| **IF-002** | WIM | CCO | Técnica | Alta | Ing. ITS | Ing. CCO |
| **IF-003** | Fibra Óptica | Todos los sistemas | Física | Crítica | Ing. Telecom | Todos |
| **IF-004** | Red Eléctrica | Todos los sistemas | Física | Crítica | Ing. Eléctrico | Todos |
| **IF-005** | [...]  | [...] | [...] | [...] | [...] | [...] |

---

## 3. FICHAS DE INTERFACE DETALLADAS

### 3.1 IF-001: CCTV ↔ CCO

**Descripción:**
Transmisión de video en tiempo real desde cámaras CCTV al Centro de Control Operacional.

**Tipo de Interface:** Técnica - Red de Datos

**Sistemas Involucrados:**
- **Sistema A:** CCTV (Cámaras IP en campo)
- **Sistema B:** CCO (NVR + Videowall)

**Protocolo de Comunicación:**
- ONVIF Profile S
- RTSP para streaming
- HTTP/HTTPS para configuración

**Medio Físico:**
- Fibra óptica (backbone)
- Ethernet PoE (última milla)

**Parámetros Técnicos:**
- Ancho de banda por cámara: 4-8 Mbps (H.265)
- Latencia máxima: <500 ms
- Resolución: 1080p mínimo
- Frame rate: 25 fps

**Responsables:**
- **Sistema A:** Ing. Seguridad Electrónica
- **Sistema B:** Ing. CCO
- **Interface:** Ing. Telecomunicaciones

**Documentos de Referencia:**
- Especificación Técnica CCTV
- Especificación Técnica CCO
- Diagrama de Red

**Riesgos:**
- Falla de comunicaciones → Redundancia en fibra
- Ancho de banda insuficiente → Dimensionamiento con 30% de margen

**Estado:** ✅ Definida

---

### 3.2 IF-002: WIM ↔ CCO

[Repetir estructura anterior para cada interface crítica]

---

## 4. PROTOCOLO DE GESTIÓN DE INTERFACES

### 4.1 Definición de Interface
1. Identificar sistemas que requieren interactuar
2. Asignar ID de interface (IF-XXX)
3. Crear ficha de interface
4. Asignar responsables

### 4.2 Diseño de Interface
1. Definir protocolo de comunicación
2. Especificar parámetros técnicos
3. Diseñar pruebas de integración
4. Documentar en planos

### 4.3 Implementación de Interface
1. Construir/instalar infraestructura física
2. Configurar equipos
3. Realizar pruebas punto a punto
4. Realizar pruebas de integración

### 4.4 Validación de Interface
1. Ejecutar plan de pruebas
2. Documentar resultados
3. Obtener aprobación de stakeholders
4. Cerrar ficha de interface

---

## 5. PLAN DE PRUEBAS DE INTEGRACIÓN

### 5.1 IF-001: CCTV ↔ CCO

**Pruebas a Realizar:**

| Prueba | Descripción | Criterio de Aceptación | Responsable |
|:-------|:------------|:-----------------------|:------------|
| **PT-001** | Conectividad básica | Ping exitoso entre cámara y NVR | Ing. Telecom |
| **PT-002** | Streaming de video | Video en vivo visible en NVR | Ing. Seguridad |
| **PT-003** | Calidad de imagen | Resolución 1080p, 25 fps | Ing. Seguridad |
| **PT-004** | PTZ remoto | Control PTZ desde CCO funcional | Ing. Seguridad |
| **PT-005** | Grabación | Video grabado correctamente en NVR | Ing. CCO |
| **PT-006** | Playback | Revisión de video grabado funcional | Ing. CCO |
| **PT-007** | Failover | Redundancia de red funciona | Ing. Telecom |

[Continuar para todas las interfaces críticas]

---

## 6. CRONOGRAMA DE INTEGRACIÓN

| Interface | Diseño | Construcción | Pruebas | Validación | Estado |
|:----------|:-------|:-------------|:--------|:-----------|:-------|
| IF-001 | [Fecha] | [Fecha] | [Fecha] | [Fecha] | 🔄 |
| IF-002 | [Fecha] | [Fecha] | [Fecha] | [Fecha] | ⏳ |
| [...]  | [...] | [...] | [...] | [...] | [...] |

---

## 7. REFERENCIAS

- Especificaciones Técnicas de Sistemas
- Planos de Red
- Documentos de Integración

---

**Versión:** 1.0  
**Estado:** ✅ Aprobado  
**Fecha:** [DD/MM/AAAA]
```

---

## ADAPTACIONES ESPECÍFICAS VEHICULAR

### Diferencias Clave vs. Proyecto Férreo

#### 1. Sistemas NO Aplicables (Eliminar del proyecto vehicular):

**Sistemas Ferroviarios Específicos:**
- ❌ CTC (Control de Tráfico Centralizado) → Reemplazar por **Sistema de Gestión de Tráfico Vial**
- ❌ ETCS Level 2 / ITCS → No aplica
- ❌ Señalización Ferroviaria LED → Reemplazar por **Señalización Vial (PMV, Señales LED)**
- ❌ Material Rodante → No aplica
- ❌ Desvíos ferroviarios → No aplica
- ❌ Radio TETRA ferroviario → Reemplazar por **Radio Troncalizado Vial** o **Sistema de Comunicaciones Vial**
- ❌ Talleres de Mantenimiento Ferroviario → Reemplazar por **Talleres de Mantenimiento Vial**

#### 2. Sistemas NUEVOS (Agregar al proyecto vehicular):

**Sistemas Vehículares Específicos:**
- ✅ **Pesaje en Movimiento (WIM):** Sistemas de pesaje dinámico
- ✅ **Peajes:** Sistemas de recaudo (manual, electrónico, telepeaje)
- ✅ **Áreas de Servicio:** Zonas de descanso para conductores
- ✅ **CAV (Centros de Atención al Usuario):** Atención a usuarios de la vía
- ✅ **Estaciones de Servicio:** Combustible, servicios
- ✅ **Control de Velocidad:** Radares, cinemómetros
- ✅ **Semáforos Inteligentes:** En intercambios

#### 3. Sistemas EQUIVALENTES (Adaptar del proyecto férreo):

| Sistema Férreo | Sistema Vehicular Equivalente | Adaptación |
|:---------------|:------------------------------|:-----------|
| **CCO Ferroviario** | **CCO Vial** | Adaptación menor, misma función |
| **CCTV Ferroviario** | **CCTV Vial** | Adaptación en ubicaciones y cantidades |
| **Telecomunicaciones (Fibra)** | **Telecomunicaciones (Fibra)** | Igual, adaptación en longitud |
| **ITS Ferroviario** | **ITS Vehícular** | Adaptación mayor, incluye WIM, DAI, aforo |
| **Talleres Ferroviarios** | **Talleres Viales** | Adaptación en equipamiento |
| **Centro de Mantenimiento** | **Centro de Mantenimiento Vial** | Adaptación en funciones |

#### 4. Normativa Aplicable:

**Normativa Ferroviaria → Normativa Vehicular:**

| Ferroviaria | Vehicular |
|:------------|:----------|
| UIC (Unión Internacional de Ferrocarriles) | AASHTO, INVIAS |
| CENELEC (EN 50126, EN 50128, EN 50129) | ISO, IEC generales |
| RAMS (Confiabilidad ferroviaria) | RAMS adaptado a vial |
| ERTMS/ETCS | No aplica |

**Normativa Vehicular Nueva:**
- **INVIAS:** Manual de Diseño Geométrico, Especificaciones Generales de Construcción, Manual de Señalización Vial
- **AASHTO:** Estándares de diseño de carreteras
- **NEMA:** Controladores de semáforos
- **ASTM E2213:** Pesaje en movimiento (WIM)

---

## CHECKLIST FINAL

### Verificación Pre-Arranque:
- [ ] Contrato vehicular completo en formato .md
- [ ] Todos los apéndices técnicos en formato .md
- [ ] Estructura de carpetas creada
- [ ] README principal creado
- [ ] Índice Maestro iniciado

### Verificación Fase 1-2 (Contrato):
- [ ] Contrato principal formateado (Metodología Punto 42)
- [ ] AT1-ATX formateados (Metodología Punto 42)
- [ ] Listado de sistemas vehiculares identificado
- [ ] Matriz de trazabilidad contractual creada

### Verificación Fase 3 (Conceptual):
- [ ] Listado Maestro de Sistemas creado
- [ ] Templates T01 aplicados a sistemas principales
- [ ] Templates T02 aplicados a sistemas principales
- [ ] WBS preliminar creado

### Verificación Fase 4 (Básica):
- [ ] Templates T03 aplicados a sistemas principales
- [ ] Templates T04 aplicados a equipos críticos
- [ ] Templates T05 aplicados (estimación de costos)
- [ ] Especificaciones técnicas completadas

### Verificación Fase 5 (Detalle):
- [ ] Planos de ubicación de equipos
- [ ] Planos de red de fibra óptica
- [ ] Planos eléctricos
- [ ] Planos de CCO
- [ ] Planos de peajes

### Verificación Fase 6 (O&M):
- [ ] Manuales de operación por sistema
- [ ] Manuales de mantenimiento por sistema
- [ ] Plan de reversión creado

### Verificación Fase 7 (Transversal):
- [ ] Gestión de riesgos documentada
- [ ] Interfaces entre sistemas documentadas
- [ ] Ciberseguridad documentada
- [ ] Gestión ambiental documentada

### Verificación Final:
- [ ] Todos los documentos versionados (v1.0)
- [ ] Control de cambios implementado
- [ ] Índice Maestro actualizado
- [ ] Roadmap del proyecto creado
- [ ] README actualizado con estado final

---

## RESUMEN EJECUTIVO

### Tiempo Estimado Total: 10-14 semanas

| Fase | Duración | Documentos Generados |
|:-----|:---------|:---------------------|
| Fase 0: Preparación | 1-2 días | 2 docs |
| Fase 1: Estructura Base | 1 día | 10 docs |
| Fase 2: Contrato y Apéndices | 3-5 días | 10-15 docs |
| Fase 3: Ingeniería Conceptual | 2-3 semanas | 20-30 docs |
| Fase 4: Ingeniería Básica | 3-4 semanas | 30-50 docs |
| Fase 5: Ingeniería de Detalle | 4-6 semanas | 50-100 planos |
| Fase 6: O&M y Reversión | 2-3 semanas | 15-20 docs |
| Fase 7: Transversal | 2-3 semanas | 10-15 docs |
| **TOTAL** | **10-14 semanas** | **~150-250 documentos** |

---

## RECURSOS NECESARIOS

### Equipo Mínimo:
1. **Administrador Contractual EPC** (Líder) - Tiempo completo
2. **Ingeniero Vial/Civil** - 50% tiempo
3. **Ingeniero ITS** - 50% tiempo
4. **Ingeniero Eléctrico** - 30% tiempo
5. **Ingeniero Telecomunicaciones** - 30% tiempo
6. **Especialista Ambiental** - 20% tiempo
7. **Especialista Social** - 20% tiempo

### Herramientas:
- Editor Markdown (Visual Studio Code, Obsidian)
- Git / GitHub
- AutoCAD / Civil 3D (para planos)
- Microsoft Office / LibreOffice
- PowerShell / Bash (para scripts de automatización)

---

## CONTACTO Y SOPORTE

Para dudas o aclaraciones sobre esta guía de replicación:

**Administrador Contractual EPC**  
**Email:** [email@proyecto.com]  
**Teléfono:** [+57 XXX XXX XXXX]

---

**Versión:** 1.0  
**Fecha:** 14 de octubre de 2025  
**Estado:** ✅ Guía Completa Lista para Uso  
**Responsable:** Administrador Contractual EPC
