# ROADMAP: PROYECTO FORMATOS PARA IA
## Plan de Trabajo y Cronograma

**Versión:** 1.0  
**Fecha de inicio:** 16 de octubre de 2025  
**Duración estimada:** 12-16 semanas  
**Última actualización:** 16 de octubre de 2025

---

## 🎯 VISIÓN GENERAL

Este roadmap define las fases, tareas y entregables para transformar documentos contractuales APP en formatos estructurados optimizados para procesamiento con IA, siguiendo la Metodología Punto 42.

---

## 📅 CRONOGRAMA MAESTRO

```
┌─────────────────────────────────────────────────────────────────────────────┐
│ SEMANAS  │ 1-2 │ 3-4 │ 5-6 │ 7-8 │ 9-10│11-12│13-14│15-16│               │
├─────────────────────────────────────────────────────────────────────────────┤
│ FASE 0   │ ███ │     │     │     │     │     │     │     │ Preparación   │
│ FASE 1   │ ███ │ ███ │     │     │     │     │     │     │ Conversión    │
│ FASE 2   │     │ ███ │ ███ │ ███ │     │     │     │     │ Estructura    │
│ FASE 3   │     │     │     │ ███ │ ███ │ ███ │     │     │ Conceptual    │
│ FASE 4   │     │     │     │     │     │ ███ │ ███ │ ███ │ Básica        │
│ FASE 5   │     │     │     │     │     │     │ ███ │ ███ │ Consolidación │
└─────────────────────────────────────────────────────────────────────────────┘
```

---

## 📍 FASE 0: PREPARACIÓN DEL ENTORNO (Semanas 1-2)

### Objetivos
- ✅ Configurar entorno de trabajo
- ✅ Instalar herramientas necesarias
- ✅ Crear estructura de carpetas
- ✅ Definir nomenclaturas y estándares

### Duración: **1-2 semanas**

### Tareas

#### T0.1: Configuración de Herramientas (3 días)
- [ ] **T0.1.1** Instalar Visual Studio Code
  - Extensiones: Markdown All in One, Markdownlint, PowerShell
- [ ] **T0.1.2** Instalar Pandoc (conversión documentos)
  - Descargar de https://pandoc.org/installing.html
  - Verificar instalación: `pandoc --version`
- [ ] **T0.1.3** Configurar Git para el proyecto
  - Inicializar repositorio
  - Crear `.gitignore` para proyectos de ingeniería
  - Primer commit
- [ ] **T0.1.4** Instalar Python 3.11+ (si se requiere procesamiento avanzado)
  - Librerías: markdown, pyyaml, pandas, openpyxl

#### T0.2: Estructura de Carpetas (1 día)
- [ ] **T0.2.1** Crear estructura principal (ver README.md)
  ```powershell
  .\scripts\Crear-Estructura.ps1
  ```
- [ ] **T0.2.2** Organizar archivos existentes en carpetas correspondientes
- [ ] **T0.2.3** Crear subcarpetas por tipo de documento

#### T0.3: Documentación Base (2 días)
- [ ] **T0.3.1** ✅ Crear README.md con arquitectura del proyecto
- [ ] **T0.3.2** ✅ Crear ROADMAP.md con plan de trabajo
- [ ] **T0.3.3** Crear CHANGELOG.md para control de versiones
- [ ] **T0.3.4** Crear CONTRIBUTING.md con guías de estilo
- [ ] **T0.3.5** Crear .gitignore apropiado

#### T0.4: Scripts de Automatización Base (3 días)
- [ ] **T0.4.1** Script `Crear-Estructura.ps1`
  - Crea carpetas del proyecto automáticamente
- [ ] **T0.4.2** Script `Convertir-Contratos.ps1`
  - Convierte batch DOCX/PDF a Markdown
- [ ] **T0.4.3** Script `Validar-Formato.ps1`
  - Valida cumplimiento Metodología Punto 42
- [ ] **T0.4.4** Script `Generar-Indice.ps1`
  - Genera índice maestro automáticamente

### Entregables Fase 0
- ✅ Entorno configurado y operativo
- ✅ Estructura de carpetas completa
- ✅ README.md y ROADMAP.md
- ✅ Scripts de automatización básicos
- ✅ Repositorio Git inicializado

### Criterios de Salida
- [ ] Todas las herramientas instaladas y funcionando
- [ ] Estructura de carpetas creada
- [ ] Git configurado con primer commit
- [ ] Scripts probados y funcionales

---

## 📍 FASE 1: CONVERSIÓN DE DOCUMENTOS (Semanas 1-4)

### Objetivos
- ✅ Convertir todos los documentos .txt a formato .md
- ✅ Limpiar y formatear documentos
- ✅ Aplicar estructura base Metodología Punto 42

### Duración: **3-4 semanas**

### Tareas

#### T1.1: Inventario y Clasificación (2 días)
- [ ] **T1.1.1** Inventariar todos los archivos en `0.1 contrato en .md/`
  - 15 archivos .txt identificados
  - 1 archivo .xlsx
  - 1 archivo .md ya formateado
- [ ] **T1.1.2** Clasificar documentos por tipo:
  - Parte General
  - Parte Especial
  - Apéndices Técnicos (AP1-AP8)
  - Apéndices Financieros (AF1-AF3)
- [ ] **T1.1.3** Crear matriz de documentos con metadatos

#### T1.2: Conversión Parte General y Especial (5 días)
- [ ] **T1.2.1** Convertir `PARTE GENERAL PUBLICAS TRONCAL SIN MARCAS.txt`
  - Formato: Markdown estructurado
  - Aplicar plantilla Punto 42
  - Validar formato
- [ ] **T1.2.2** Convertir `PARTE ESPECIAL C1 ADENDA 6 SIN MARCAS.txt`
  - Identificar cláusulas clave
  - Crear tabla de información
  - Agregar metadatos

#### T1.3: Conversión Apéndices Técnicos (10 días)
- [ ] **T1.3.1** AP1 - Alcance del Proyecto
  - Convertir a .md
  - Identificar tramos, PKs, características geométricas
  - Crear tablas estructuradas
- [ ] **T1.3.2** AP2 - Condiciones O&M
  - Formatear requisitos de operación
  - Formatear requisitos de mantenimiento
- [ ] **T1.3.3** AP3 - Especificaciones Generales
  - Identificar normas aplicables (INVIAS, AASHTO)
  - Tabular especificaciones
- [ ] **T1.3.4** AP4 - Indicadores de Desempeño
  - Formatear KPIs
  - Crear matriz de indicadores
- [ ] **T1.3.5** AP5 - Interferencia con Redes
  - Identificar redes existentes
  - Protocolos de manejo
- [ ] **T1.3.6** AP6 - Gestión Ambiental
  - Requisitos ambientales
  - Permisos y licencias
- [ ] **T1.3.7** AP7 - Gestión Predial
  - Requisitos de adquisición predial
  - Compensaciones
- [ ] **T1.3.8** AP8 - Gestión Social
  - Relacionamiento comunitario
  - Reasentamientos

#### T1.4: Conversión Apéndices Financieros (3 días)
- [ ] **T1.4.1** AF1 - Información Financiera
  - Convertir tablas Excel a Markdown
  - Mantener estructura de datos
- [ ] **T1.4.2** AF2 - Cesión Especial de Retribución
- [ ] **T1.4.3** AF3 - Pólizas (3.1, 3.2, 3.3)
  - Cumplimiento
  - Responsabilidad Civil
  - Obras Civiles

#### T1.5: Control de Calidad (3 días)
- [ ] **T1.5.1** Validar todos los documentos convertidos
  - Ejecutar `Validar-Formato.ps1`
  - Corregir errores de formato
- [ ] **T1.5.2** Revisión manual de documentos críticos
  - Parte General
  - Parte Especial
  - AP1, AP3, AP4
- [ ] **T1.5.3** Generar Índice Maestro preliminar

### Entregables Fase 1
- ✅ 15+ documentos en formato .md estructurado
- ✅ Índice maestro preliminar
- ✅ Matriz de documentos con metadatos
- ✅ Reporte de validación de calidad

### Criterios de Salida
- [ ] 100% de documentos convertidos a .md
- [ ] Todos los documentos pasan validación Punto 42
- [ ] Índice maestro generado
- [ ] Sin errores de formato críticos

---

## 📍 FASE 2: ESTRUCTURACIÓN CONTRACTUAL (Semanas 3-8)

### Objetivos
- ✅ Identificar requisitos contractuales clave
- ✅ Crear matrices de trazabilidad
- ✅ Identificar sistemas a implementar
- ✅ Generar WBS preliminar

### Duración: **5-6 semanas**

### Tareas

#### T2.1: Análisis Contractual (1 semana)
- [ ] **T2.1.1** Identificar obligaciones del concesionario
  - Por fase: Preconstrucción, Construcción, O&M, Reversión
  - Crear tabla de obligaciones
- [ ] **T2.1.2** Identificar requisitos técnicos
  - Por sistema
  - Por apéndice
- [ ] **T2.1.3** Identificar plazos y cronogramas contractuales
- [ ] **T2.1.4** Identificar indicadores de desempeño (KPI)
  - Disponibilidad
  - Calidad
  - Seguridad

#### T2.2: Identificación de Sistemas (2 semanas)
- [ ] **T2.2.1** Listar todos los sistemas mencionados en el contrato
  - ITS (Sistemas Inteligentes de Transporte)
  - Peajes
  - CCTV
  - Pesaje (WIM)
  - Telecomunicaciones
  - Iluminación
  - Señalización
  - Centro de Control (CCO)
  - Otros
- [ ] **T2.2.2** Clasificar sistemas por criticidad
  - Crítica / Alta / Media / Baja
- [ ] **T2.2.3** Identificar cantidades estimadas
  - Por tipo de equipo
  - Por ubicación (PK)
- [ ] **T2.2.4** Crear **Listado Maestro de Sistemas Vehiculares**
  - Ver template en GUIA_REPLICACION, línea 426

#### T2.3: Matrices de Trazabilidad (2 semanas)
- [ ] **T2.3.1** Matriz Requisitos Contractuales ↔ Sistemas
  - Cada requisito vinculado a sistema responsable
- [ ] **T2.3.2** Matriz Sistemas ↔ Apéndices Técnicos
  - Cada sistema vinculado a AT correspondiente
- [ ] **T2.3.3** Matriz Sistemas ↔ Normativa Aplicable
  - INVIAS, AASHTO, ISO, IEC, etc.
- [ ] **T2.3.4** Matriz de Interfaces entre Sistemas
  - Identificar dependencias
  - Protocolos de comunicación

#### T2.4: WBS Preliminar (1 semana)
- [ ] **T2.4.1** Crear estructura WBS (Work Breakdown Structure)
  - Ver ejemplo en GUIA_REPLICACION, línea 686
  - Niveles: Proyecto > Fase > Disciplina > Sistema > Componente
- [ ] **T2.4.2** Asignar códigos WBS a cada elemento
- [ ] **T2.4.3** Estimar pesos relativos por elemento
- [ ] **T2.4.4** Vincular WBS con obligaciones contractuales

### Entregables Fase 2
- ✅ Listado Maestro de Sistemas Vehiculares
- ✅ 4 matrices de trazabilidad
- ✅ WBS preliminar completo
- ✅ Tabla de obligaciones contractuales
- ✅ Tabla de KPIs

### Criterios de Salida
- [ ] Todos los sistemas identificados (mínimo 15 sistemas)
- [ ] Matrices de trazabilidad completas
- [ ] WBS con al menos 3 niveles de desglose
- [ ] Vinculación clara entre contrato y sistemas

---

## 📍 FASE 3: INGENIERÍA CONCEPTUAL (Semanas 7-12)

### Objetivos
- ✅ Aplicar Templates T01 y T02 a sistemas principales
- ✅ Definir arquitecturas conceptuales de alto nivel
- ✅ Estimaciones preliminares de costos

### Duración: **5-6 semanas**

### Tareas

#### T3.1: Templates T01 - Fichas de Sistema (3 semanas)
Aplicar **Template T01** a cada sistema principal (ver GUIA_REPLICACION, línea 552):

- [ ] **T3.1.1** Sistema ITS Global
  - PMV, CCTV, WIM, Meteo, SOS, DAI, Aforo
- [ ] **T3.1.2** Sistema de Peajes
  - Estaciones de peaje, carriles, TAG, báscula
- [ ] **T3.1.3** Centro de Control Operacional (CCO)
  - Videowall, SCADA, puestos operador
- [ ] **T3.1.4** Telecomunicaciones
  - Fibra óptica, radio, red de datos
- [ ] **T3.1.5** Iluminación
  - Vial, túneles, intercambios
- [ ] **T3.1.6** Energía
  - Subestaciones, UPS, generadores
- [ ] **T3.1.7** Señalización Vial
  - Vertical, horizontal, defensas
- [ ] **T3.1.8** Seguridad y Protección
  - Control acceso, detección incendios

**Contenido de cada T01:**
- Identificación del sistema
- Descripción general
- Requisitos contractuales
- Componentes principales
- Interfaces con otros sistemas
- Estimación preliminar CAPEX/OPEX
- Riesgos identificados

#### T3.2: Templates T02 - Análisis de Requisitos (2 semanas)
Aplicar **Template T02** a sistemas críticos:

- [ ] **T3.2.1** ITS - Análisis detallado de requisitos
  - Funcionales
  - No funcionales (disponibilidad, performance)
  - Normativos
- [ ] **T3.2.2** CCO - Análisis de requisitos
- [ ] **T3.2.3** Peajes - Análisis de requisitos
- [ ] **T3.2.4** Telecomunicaciones - Análisis de requisitos

#### T3.3: Estimaciones Preliminares (1 semana)
- [ ] **T3.3.1** Cotizaciones preliminares de equipos principales
  - Investigar fabricantes (Axis, Hikvision, Dahua, Bosch)
  - Obtener precios referenciales
- [ ] **T3.3.2** Estimar CAPEX global por sistema
- [ ] **T3.3.3** Estimar OPEX anual por sistema
- [ ] **T3.3.4** Consolidar presupuesto preliminar total

### Entregables Fase 3
- ✅ 8+ documentos T01 (Fichas de Sistema)
- ✅ 4+ documentos T02 (Análisis de Requisitos)
- ✅ Presupuesto preliminar consolidado
- ✅ Listado de fabricantes/proveedores preseleccionados

### Criterios de Salida
- [ ] Cada sistema principal tiene su ficha T01
- [ ] Sistemas críticos tienen análisis T02
- [ ] Presupuesto preliminar definido
- [ ] Riesgos principales identificados

---

## 📍 FASE 4: INGENIERÍA BÁSICA (Semanas 11-16)

### Objetivos
- ✅ Aplicar Templates T03 y T04
- ✅ Definir arquitecturas técnicas detalladas
- ✅ Especificaciones técnicas de equipos

### Duración: **5-6 semanas**

### Tareas

#### T4.1: Templates T03 - Arquitectura Conceptual (3 semanas)
Aplicar **Template T03** a sistemas críticos (ver GUIA_REPLICACION, línea 925):

- [ ] **T4.1.1** Arquitectura Sistema CCTV
  - Topología de red
  - Redundancia
  - Almacenamiento (NVR)
  - Flujo de datos
- [ ] **T4.1.2** Arquitectura CCO
  - Layout físico
  - Arquitectura de servidores
  - Videowall
  - Redundancia
- [ ] **T4.1.3** Arquitectura Telecomunicaciones
  - Red de fibra óptica (topología anillo)
  - Radio troncalizado
  - Red de datos (switches, routers)
- [ ] **T4.1.4** Arquitectura ITS
  - Integración de subsistemas
  - Protocolos de comunicación
  - SCADA vial

#### T4.2: Templates T04 - Especificaciones Técnicas (2 semanas)
Aplicar **Template T04** a equipos principales (ver GUIA_REPLICACION, línea 1090):

- [ ] **T4.2.1** Especificación Cámaras CCTV PTZ
  - Resolución, FPS, compresión
  - PTZ (pan, tilt, zoom)
  - Protección (IP66, IK10)
  - PoE, protocolos (ONVIF)
- [ ] **T4.2.2** Especificación Paneles Mensaje Variable (PMV)
  - Tamaño, resolución, LEDs
  - Software de gestión
  - Comunicaciones
- [ ] **T4.2.3** Especificación Estaciones WIM (Pesaje)
  - Sensores, precisión
  - Software de procesamiento
  - Integración con CCO
- [ ] **T4.2.4** Especificación Servidores CCO
  - CPU, RAM, Storage
  - Virtualización
  - Redundancia
- [ ] **T4.2.5** Especificación Fibra Óptica
  - Tipo (monomodo/multimodo)
  - Cantidad de hilos
  - Accesorios (ODF, empalmes)

#### T4.3: Selección de Proveedores (1 semana)
- [ ] **T4.3.1** Solicitar cotizaciones formales
  - Mínimo 3 proveedores por categoría
- [ ] **T4.3.2** Evaluar cumplimiento de especificaciones
- [ ] **T4.3.3** Crear matriz comparativa de proveedores
- [ ] **T4.3.4** Preseleccionar proveedores por sistema

### Entregables Fase 4
- ✅ 4+ documentos T03 (Arquitecturas)
- ✅ 5+ documentos T04 (Especificaciones)
- ✅ Matriz de proveedores preseleccionados
- ✅ Cotizaciones preliminares

### Criterios de Salida
- [ ] Arquitecturas técnicas definidas
- [ ] Especificaciones listas para licitación
- [ ] Proveedores preseleccionados
- [ ] Costos actualizados con cotizaciones reales

---

## 📍 FASE 5: CONSOLIDACIÓN Y ENTREGABLES (Semanas 13-16)

### Objetivos
- ✅ Consolidar toda la documentación
- ✅ Generar documentos maestros
- ✅ Preparar entregables para stakeholders
- ✅ Cerrar proyecto

### Duración: **3-4 semanas**

### Tareas

#### T5.1: Documentos Maestros (2 semanas)
- [ ] **T5.1.1** Índice Maestro Consolidado Final
  - Todos los documentos del proyecto
  - Estado, versión, fecha
  - Links a documentos
- [ ] **T5.1.2** Matriz de Requisitos Consolidada
  - Requisito → Sistema → Documento → Responsable
- [ ] **T5.1.3** WBS Completo con Costos
  - Todos los niveles
  - Presupuesto por elemento WBS
- [ ] **T5.1.4** Plan de Gestión de Riesgos
  - Todos los riesgos identificados en fases anteriores
  - Planes de mitigación
- [ ] **T5.1.5** Plan de Interfaces
  - Todas las interfaces entre sistemas
  - Responsables y plan de pruebas

#### T5.2: Documentos para Stakeholders (1 semana)
- [ ] **T5.2.1** Resumen Ejecutivo del Proyecto
  - 10-15 páginas
  - Alcance, sistemas, presupuesto, cronograma
- [ ] **T5.2.2** Presentación Ejecutiva (PowerPoint/PDF)
  - 30-40 diapositivas
  - Visual, con diagramas
- [ ] **T5.2.3** Guía de Navegación del Repositorio
  - Cómo usar la documentación
  - Dónde encontrar qué

#### T5.3: Control de Calidad Final (1 semana)
- [ ] **T5.3.1** Revisión de todos los documentos
  - Consistencia
  - Referencias cruzadas
  - Formato
- [ ] **T5.3.2** Validación de trazabilidad
  - ¿Todos los requisitos cubiertos?
  - ¿Todos los sistemas especificados?
- [ ] **T5.3.3** Corrección de errores finales
- [ ] **T5.3.4** Versionamiento final (v1.0 de todo)

#### T5.4: Cierre del Proyecto (3 días)
- [ ] **T5.4.1** Archivar documentos en estructura final
- [ ] **T5.4.2** Backup completo del repositorio
- [ ] **T5.4.3** Transferencia de conocimiento (si aplica)
- [ ] **T5.4.4** Lecciones aprendidas
- [ ] **T5.4.5** Acta de cierre

### Entregables Fase 5
- ✅ Índice Maestro Consolidado v1.0
- ✅ Todos los documentos v1.0
- ✅ Resumen ejecutivo
- ✅ Presentación ejecutiva
- ✅ Repositorio completo y documentado

### Criterios de Salida
- [ ] 100% documentos versionados v1.0
- [ ] Control de calidad aprobado
- [ ] Backup realizado
- [ ] Proyecto cerrado formalmente

---

## 📊 MÉTRICAS Y KPIs DEL PROYECTO

### Métricas de Progreso
| Métrica | Objetivo | Actual | Estado |
|:--------|:---------|:-------|:-------|
| **Documentos convertidos (.md)** | 15 | 0 | ⏳ |
| **Templates T01 creados** | 8 | 0 | ⏳ |
| **Templates T02 creados** | 4 | 0 | ⏳ |
| **Templates T03 creados** | 4 | 0 | ⏳ |
| **Templates T04 creados** | 5 | 0 | ⏳ |
| **Sistemas identificados** | 15+ | 0 | ⏳ |
| **Matrices de trazabilidad** | 4 | 0 | ⏳ |
| **WBS completitud** | 100% | 0% | ⏳ |

### KPIs de Calidad
| KPI | Objetivo | Actual |
|:----|:---------|:-------|
| **Documentos que pasan validación** | 100% | - |
| **Referencias rotas** | 0 | - |
| **Errores de formato** | 0 | - |
| **Completitud de templates** | 100% | - |

---

## 🚨 RIESGOS Y MITIGACIONES

| Riesgo | Probabilidad | Impacto | Mitigación |
|:-------|:-------------|:--------|:-----------|
| **Documentos fuente incompletos** | Media | Alto | Solicitar documentos faltantes al inicio |
| **Conversión con pérdida de formato** | Alta | Medio | Revisión manual de documentos críticos |
| **Falta de información técnica** | Media | Alto | Consultar con expertos de sistemas |
| **Cambios en alcance contractual** | Baja | Alto | Control de cambios estricto |
| **Herramientas no disponibles** | Baja | Medio | Alternativas open-source identificadas |

---

## 📞 CONTACTOS Y ESCALAMIENTO

| Rol | Responsable | Contacto | Escalamiento |
|:----|:------------|:---------|:-------------|
| **Líder del Proyecto** | Administrador Contractual EPC | - | - |
| **Soporte Técnico** | Ingeniero de Sistemas | - | Líder Proyecto |
| **Validación Contractual** | Gerente Legal | - | Líder Proyecto |

---

## 📚 REFERENCIAS

- [README del Proyecto](README.md)
- [Guía de Replicación Vehicular](guias/GUIA_REPLICACION_PROYECTO_VEHICULAR_v1.0.md)
- [Metodología Punto 42](#) (Documento interno)

---

## 📝 HISTORIAL DE CAMBIOS

### [1.0.0] - 2025-10-16
- ✅ Creación del ROADMAP
- ✅ Definición de 6 fases (0-5)
- ✅ Desglose completo de tareas
- ✅ Cronograma maestro establecido
- ✅ KPIs y métricas definidas

---

## 🎯 PRÓXIMOS PASOS INMEDIATOS (Esta semana)

1. [ ] Instalar Pandoc
2. [ ] Crear script `Crear-Estructura.ps1`
3. [ ] Organizar archivos existentes en carpetas
4. [ ] Convertir primer documento de prueba (PARTE GENERAL)
5. [ ] Validar formato del documento de prueba

---

**Estado del ROADMAP:** 🟢 Activo  
**Próxima revisión:** Fin de Fase 0 (Semana 2)  
**Versión:** 1.0  
**Responsable:** Administrador Contractual EPC

