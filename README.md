# PROYECTO APP PUERTO SALGAR - BARRANCABERMEJA v1.0
## Marco de Gestión de Proyectos (PMI) - EPC VEHICULAR

**Fecha de actualización:** 16 de Octubre 2025  
**Estado del proyecto:** 🔄 **FASE 0 - PREPARACIÓN Y ESTRUCTURACIÓN**  
**Responsable:** Administrador Contractual EPC  
**Proyecto Base:** APP La Dorada-Chiriguaná (Férreo) - Replicación a Vehicular  

---

## 📋 RESUMEN EJECUTIVO

Este repositorio contiene la **documentación completa de ingeniería EPC** para el proyecto **APP Puerto Salgar - Barrancabermeja** (Proyecto Vehícular/Carretero), estructurada bajo un **Marco de Gestión de Proyectos (MGP)** alineado con las mejores prácticas del PMI y **Metodología Punto 42**, replicando el exitoso modelo del proyecto férreo APP La Dorada-Chiriguaná.

### 🎯 **OBJETIVO PRINCIPAL**

Replicar y adaptar la metodología, estructura documental y mejores prácticas del proyecto férreo APP La Dorada-Chiriguaná para aplicarlas a un nuevo proyecto vehícular (carretero), desarrollando una ingeniería EPC integral, trazable y robusta, donde:

1. **Replicabilidad**: Aplicar metodologías exitosas probadas en proyecto férreo
2. **Trazabilidad**: Identificar requisitos contractuales de forma sistemática
3. **Eficiencia**: Reducir tiempo de desarrollo mediante IA y automatización
4. **Estandarización**: Unificar formatos bajo Metodología Punto 42
5. **Gestión Proactiva**: Integrar toma de decisiones técnicas con gestión de riesgos bajo supervisión PMO

### **📊 ESTADO DEL SISTEMA v1.0 (16-Oct-2025):**

| Componente | Estado | Progreso | Próximo Paso |
|:-----------|:-------|:---------|:-------------|
| **Estructura de Carpetas** | 🔄 En proceso | 20% | Crear carpetas completas |
| **Contratos Base** | ✅ Disponibles | 100% | Convertir a .md |
| **Guía de Replicación** | ✅ Creada | 100% | Aplicar metodología |
| **Templates T01-T05** | ⏳ Pendiente | 0% | Crear desde férreo |
| **Scripts Automatización** | ⏳ Pendiente | 0% | Adaptar desde férreo |
| **WBS Preliminar** | ⏳ Pendiente | 0% | Identificar sistemas |
| **Índice Maestro** | ⏳ Pendiente | 0% | Generar automático |

### ✅ **DOCUMENTOS DISPONIBLES (FASE 0):**
- **Contratos en formato .txt:** 15 documentos
- **Guías metodológicas:** 1 guía completa
- **Apéndices técnicos identificados:** 10 apéndices
- **Apéndices financieros:** 3 documentos + 1 Excel
- **Metodología v1.0:** Guía de Replicación Vehicular

### 🎯 **PRÓXIMOS HITOS:**
- **Semana 1-2:** Conversión documentos a Markdown
- **Semana 3-4:** Identificación de sistemas vehiculares
- **Semana 5-8:** Ingeniería conceptual (Templates T01-T02)
- **Mes 3-4:** Ingeniería básica (Templates T03-T04)

---

## 📁 ARQUITECTURA DEL PROYECTO

```
0.0 FORMATOS PARA IA/
│
├── 📂 0.1 contrato en .md/                    # Contratos convertidos a Markdown
│   ├── PARTE GENERAL PUBLICAS TRONCAL SIN MARCAS.txt
│   ├── PARTE ESPECIAL C1 ADENDA 6 SIN MARCAS.txt
│   ├── AP1-ALCANCE DEL PROYECTO C1 (ADENDA4)_SIN MARCAS.txt
│   ├── 2 AP2 - CONDICIONES OYM (ADENDA2) C1_SIN MARCAS.txt
│   ├── 4 AP4-INDICADORES C1 (ADENDA4)_SIN MARCAS.txt
│   ├── 6AP3 - ESPECIFICACIONES GENERALES C1.txt
│   ├── 6 AP6- APNDICE G.AMBIENTAL C1(ADENDA3)_SIN MARCAS.txt
│   ├── 7 AP7 GESTION PREDIAL C1(ADENDA 3)_SIN MARCAS.txt
│   ├── 8 AP8 GESTION SOCIAL C1(ADENDA 3)_SM.txt
│   ├── 9AP5 - INTERFERENCIA CON REDES.txt
│   ├── 22 APENDICE FINANCIERO 1 INFORMACION FINANCIERA.txt
│   ├── 23 APENDICE FINANCIERO 2 CESION ESPECIAL DE LA RETRIBUCIO.txt
│   ├── 24 APENDICE FINANCIERO 3 PORTADA.txt
│   ├── 25 APENDICE FINANCIERO 3.1 POLIZA DE CUMPLIMIENTO.txt
│   ├── 26 APENDICE FINANCIERO 3.2 POLIZA RESPONSABILIDAD CIVIL.txt
│   ├── 27 APENDICE FINANCIERO 3.3 POLIZA OBRAS CIVILES.txt
│   ├── Guia_Completa_Contractual_Puerto_Salgar_Barrancabermeja.md
│   └── APENDICE FINANCIERO 1 ANEXO - INFORMACION FINANCIERA.xlsx
│
├── 📂 templates/                               # Plantillas metodológicas
│   ├── T01_Ficha_Sistema.md
│   ├── T02_Analisis_Requisitos.md
│   ├── T03_Arquitectura_Conceptual.md
│   ├── T04_Especificacion_Tecnica.md
│   └── T05_Estimacion_Costos.md
│
├── 📂 guias/                                   # Guías metodológicas
│   └── GUIA_REPLICACION_PROYECTO_VEHICULAR_v1.0.md
│
├── 📂 scripts/                                 # Scripts de automatización
│   ├── Convertir-Contratos.ps1
│   ├── Crear-Estructura.ps1
│   └── Validar-Formato.ps1
│
├── 📂 output/                                  # Documentos procesados
│   ├── contratos_formateados/
│   ├── apendices_formateados/
│   └── analisis_ia/
│
├── 📂 proyectos_referencia/                    # Proyectos base
│   ├── APP_La_Dorada_Chiriguana/              # Proyecto férreo (referencia)
│   └── APP_Puerto_Salgar_Barrancabermeja/     # Proyecto vehícular
│
├── README.md                                   # Este archivo
├── ROADMAP.md                                  # Plan de trabajo
└── .gitignore                                  # Exclusiones Git

```

---

## 🏗️ ARQUITECTURA DE PROCESAMIENTO

### Flujo de Trabajo

```
┌─────────────────────────────────────────────────────────────────┐
│                    ENTRADA DE DOCUMENTOS                        │
│  (PDF, DOCX, TXT de contratos APP y apéndices técnicos)       │
└────────────────────┬────────────────────────────────────────────┘
                     │
                     ▼
┌─────────────────────────────────────────────────────────────────┐
│                 FASE 1: CONVERSIÓN A MARKDOWN                   │
│  • Pandoc (DOCX → MD)                                          │
│  • OCR + Extracción (PDF → TXT → MD)                           │
│  • Limpieza y formateo inicial                                 │
└────────────────────┬────────────────────────────────────────────┘
                     │
                     ▼
┌─────────────────────────────────────────────────────────────────┐
│            FASE 2: ESTRUCTURACIÓN METODOLOGÍA PUNTO 42          │
│  • Aplicar plantilla estándar                                  │
│  • Identificar secciones clave                                 │
│  • Crear metadatos                                             │
│  • Agregar tabla de información del documento                  │
└────────────────────┬────────────────────────────────────────────┘
                     │
                     ▼
┌─────────────────────────────────────────────────────────────────┐
│              FASE 3: PROCESAMIENTO CON IA                       │
│  • Extracción de requisitos                                    │
│  • Identificación de sistemas                                  │
│  • Creación de matrices de trazabilidad                        │
│  • Análisis de interfaces                                      │
└────────────────────┬────────────────────────────────────────────┘
                     │
                     ▼
┌─────────────────────────────────────────────────────────────────┐
│                FASE 4: GENERACIÓN DE ENTREGABLES                │
│  • Documentos T01-T05 (Templates metodológicos)                │
│  • WBS (Work Breakdown Structure)                              │
│  • Matrices de requisitos                                      │
│  • Documentos consolidados                                     │
└────────────────────┬────────────────────────────────────────────┘
                     │
                     ▼
┌─────────────────────────────────────────────────────────────────┐
│                   SALIDA: PROYECTO ESTRUCTURADO                 │
│  (Listo para Ingeniería Conceptual/Básica/Detalle)            │
└─────────────────────────────────────────────────────────────────┘
```

---

## 🔄 **PROYECTO DE REFERENCIA: APP LA DORADA - CHIRIGUANÁ (FÉRREO)**

### **📚 Aprendizajes del Proyecto Férreo:**

El proyecto férreo APP La Dorada-Chiriguaná (v14.7.6) ha desarrollado un sistema robusto que replicaremos en este proyecto vehicular:

| Componente Férreo | Adaptación Vehicular | Estado |
|:------------------|:---------------------|:-------|
| **Sistema WBS Interactivo** | WBS Vehicular con sistemas viales | ⏳ Por crear |
| **8 Interfaces HTML Dinámicas** | Adaptadas a sistemas vehiculares | ⏳ Por crear |
| **Sistema de Decisiones Técnicas (DT)** | Mismo flujo DT→Documentación | ⏳ Por implementar |
| **Layout Maestro** | Layout vehicular (ITS, peajes, etc.) | ⏳ Por crear |
| **Sistema "Cocinar y Servir"** | Mismo workflow docs ejecutivos | ⏳ Por implementar |
| **Gestión de Riesgos Dinámica** | Adaptada a riesgos vehiculares | ⏳ Por implementar |
| **181 Documentos Metodología v5.0** | Documentos vehiculares v1.0 | 🔄 En desarrollo |
| **Scripts PowerShell** | Adaptados a proyecto vehicular | ⏳ Por adaptar |

### **🔄 DIFERENCIAS CLAVE: FÉRREO VS VEHÍCULAR**

#### ❌ **ELIMINAR (Solo Férreos):**
- CTC (Control de Tráfico Centralizado)
- ETCS Level 2 / ITCS / ATP
- Señalización ferroviaria LED
- Material Rodante (locomotoras)
- Radio TETRA ferroviario
- Desvíos y enclavamientos
- Balizas ferroviarias

#### ✅ **AGREGAR (Solo Vehiculares):**
- **ITS Vehícular:** PMV, CCTV, WIM, DAI, SOS, Aforo
- **Sistemas de Peaje:** Manual, electrónico, TAG/telepeaje
- **Pesaje Dinámico (WIM):** Weigh In Motion
- **Centro de Control Vial:** CCO con SCADA vial
- **Señalización Vial:** Vertical, horizontal, PMV
- **CAV:** Centros de Atención al Usuario
- **Áreas de Servicio** y zonas de descanso
- **Control de Velocidad:** Radares, cinemómetros
- **Iluminación Vial:** LED, túneles, intercambios

#### 🔄 **EQUIVALENTES (Adaptar):**
- **CCO Férreo** → **CCO Vial** (misma función, diferente contenido)
- **CCTV Férreo** → **CCTV Vial** (ubicaciones y cantidades diferentes)
- **Telecomunicaciones (Fibra)** → **Igual** (adaptación en longitud)
- **Centro de Mantenimiento** → **Talleres Viales** (equipamiento diferente)

---

## 🔧 TECNOLOGÍAS Y HERRAMIENTAS

### Software Principal
| Herramienta | Propósito | Versión/Tipo |
|:------------|:----------|:-------------|
| **Visual Studio Code** | Editor principal Markdown | Última |
| **Cursor AI** | Asistente IA para desarrollo | Última |
| **Git** | Control de versiones | 2.x |
| **PowerShell 7** | Automatización Windows | 7.x |
| **Pandoc** | Conversión documentos | 3.x |
| **Python** | Scripts procesamiento | 3.11+ |

### Librerías Python (cuando aplique)
- `markdown` - Procesamiento Markdown
- `pyyaml` - Manejo metadatos
- `pandas` - Análisis datos contractuales
- `openpyxl` - Lectura Excel

### Extensiones VS Code Recomendadas
- Markdown All in One
- Markdown Preview Enhanced
- Markdownlint
- Git Graph
- PowerShell

---

## 📊 METODOLOGÍA

### Metodología Punto 42 + Marco PMI

Este proyecto aplica la **Metodología Punto 42** para estructuración de documentos EPC (Engineering, Procurement, Construction) adaptada a proyectos APP vehiculares, complementada con el **Marco de Gestión de Proyectos PMI**.

#### **Principios clave Metodología Punto 42:**
1. ✅ **Estructura documental estandarizada** (I-VI → X)
2. ✅ **Trazabilidad contractual completa** (Contrato → AT → Sistemas)
3. ✅ **Templates reutilizables** (T01-T05)
4. ✅ **Versionamiento estricto** (v1.0, v2.0, etc.)
5. ✅ **Optimización para procesamiento IA** (Markdown, YAML, JSON)

#### **Fases de Ingeniería EPC:**

| Fase | Nombre | Objetivo | Documentos |
|:-----|:-------|:---------|:-----------|
| **FASE 0** | Base Contractual | Fuente única de verdad | Contrato + Apéndices |
| **FASE A** | Análisis Contractual | Traducir contrato a requisitos | Análisis AT1-ATX |
| **FASE B** | Ingeniería Conceptual | Propuestas de solución, riesgos | Templates T01-T02 |
| **FASE C** | Ingeniería Básica | Arquitecturas y especificaciones | Templates T03-T04 |
| **FASE D** | Ingeniería de Detalle | Especificaciones constructivas | Planos y detalles |
| **FASE E** | Operación y Mantenimiento | Manuales O&M y reversión | Manuales operativos |

#### **Sistema de Decisiones Técnicas (DT):**

Heredado del proyecto férreo, permite:
- ✅ Captura formal de cambios técnicos
- ✅ Propagación automática a 6 niveles de documentación
- ✅ Trazabilidad completa DT → IX → V → III → VIII → X
- ✅ Workflow automatizado con scripts PowerShell

**Ver más:**
- `guias/GUIA_REPLICACION_PROYECTO_VEHICULAR_v1.0.md`
- Proyecto férreo: `.cursorrules` y sistema DT completo

---

## 📋 PROYECTOS INCLUIDOS

### 1. APP Puerto Salgar - Barrancabermeja
- **Tipo:** Proyecto vehícular (carretero)
- **Concesión:** [Número de concesión]
- **Estado:** ✅ Contrato base disponible
- **Documentos:**
  - Parte General
  - Parte Especial C1
  - Apéndices AP1-AP8
  - Apéndices Financieros 1-3
  - Guía Completa Contractual

### 2. APP La Dorada - Chiriguaná (Proyecto Referencia Férreo)
- **Tipo:** Proyecto férreo
- **Estado:** 📚 Usado como referencia metodológica
- **Aplicación:** Base para adaptaciones vehiculares

---

## 🚀 QUICK START

### Instalación Inicial (PowerShell)

```powershell
# 1. Clonar o navegar al proyecto
cd "D:\onedrive\gdrive\TM1\0.1 ingenieria basica\0.0 FORMATOS PARA IA"

# 2. Crear estructura de carpetas
.\scripts\Crear-Estructura.ps1

# 3. Instalar Pandoc (si no está instalado)
# Descargar de: https://pandoc.org/installing.html

# 4. Verificar instalación
pandoc --version
git --version
pwsh --version
```

### Conversión de Documentos

```powershell
# Convertir un contrato DOCX a Markdown
pandoc "contrato.docx" -o "0.1 contrato en .md/contrato.md" --wrap=none

# Convertir múltiples archivos
.\scripts\Convertir-Contratos.ps1
```

### Validación de Formato

```powershell
# Validar que documentos cumplan Metodología Punto 42
.\scripts\Validar-Formato.ps1
```

---

## 📈 ESTADO ACTUAL

### Fase Actual: **FASE 1 - PREPARACIÓN Y CONVERSIÓN**

| Componente | Estado | Progreso | Próximo Paso |
|:-----------|:-------|:---------|:-------------|
| **Estructura de carpetas** | 🔄 En proceso | 60% | Crear carpetas faltantes |
| **Contratos en .txt** | ✅ Disponibles | 100% | Convertir a .md |
| **Guías metodológicas** | ✅ Creadas | 100% | Aplicar a documentos |
| **Templates** | ⏳ Pendiente | 0% | Crear T01-T05 |
| **Scripts automatización** | ⏳ Pendiente | 0% | Desarrollar scripts PS |

### Documentos Disponibles
- ✅ 15 archivos de contrato (.txt)
- ✅ 1 guía completa contractual (.md)
- ✅ 1 archivo Excel financiero
- ✅ 1 guía de replicación vehicular

### Documentos Pendientes
- ⏳ Templates T01-T05
- ⏳ Scripts de automatización
- ⏳ Contratos formateados Metodología Punto 42
- ⏳ Matrices de trazabilidad

---

## 🎯 ENTREGABLES ESPERADOS

### Corto Plazo (2-3 semanas)
1. ✅ Todos los contratos en formato .md estructurado
2. ✅ Templates T01-T05 creados
3. ✅ Scripts de automatización funcionales
4. ✅ Matriz de sistemas identificados

### Mediano Plazo (1-2 meses)
1. ✅ WBS completo del proyecto vehicular
2. ✅ Documentos de Ingeniería Conceptual
3. ✅ Análisis de requisitos por sistema
4. ✅ Estimaciones preliminares de costos

### Largo Plazo (3-6 meses)
1. ✅ Ingeniería Básica completa
2. ✅ Especificaciones técnicas detalladas
3. ✅ Plan de Operación y Mantenimiento
4. ✅ Documentación completa para replicación

---

## 👥 EQUIPO Y RESPONSABILIDADES

| Rol | Responsabilidad | Dedicación |
|:----|:----------------|:-----------|
| **Administrador Contractual EPC** | Liderazgo del proyecto, metodología | 100% |
| **Ingeniero de Sistemas** | Automatización, scripts | Según necesidad |
| **Especialista IA** | Optimización para procesamiento IA | Según necesidad |

---

## 📞 CONTACTO Y SOPORTE

**Responsable:** Administrador Contractual EPC  
**Ubicación:** TM1 - Ingeniería Básica  
**Última actualización:** 16 de octubre de 2025

---

## 📚 REFERENCIAS

- [Guía de Replicación Proyecto Vehicular](guias/GUIA_REPLICACION_PROYECTO_VEHICULAR_v1.0.md)
- [Guía Completa Contractual Puerto Salgar](0.1%20contrato%20en%20.md/Guia_Completa_Contractual_Puerto_Salgar_Barrancabermeja.md)
- [Metodología Punto 42](#) (Documento interno)

---

---

## 🔗 RELACIÓN CON PROYECTO FÉRREO

### **Ruta de Replicación:**

```
APP LA DORADA - CHIRIGUANÁ (FÉRREO) v14.7.6
├── Metodología Punto 42 ✅ Probada
├── Marco PMI + EPC ✅ Implementado
├── Sistema WBS Interactivo (8 interfaces) ✅ Funcionando
├── Sistema DT Automatizado ✅ Operativo
├── Scripts PowerShell (59 activos) ✅ Disponibles
├── Templates T01-T05 ✅ Validados
└── 181 Documentos v5.0 ✅ Completados
     ↓
     ↓ [REPLICACIÓN Y ADAPTACIÓN]
     ↓
APP PUERTO SALGAR - BARRANCABERMEJA (VEHICULAR) v1.0
├── Metodología Punto 42 → Aplicar igual
├── Marco PMI + EPC → Aplicar igual
├── Sistema WBS Interactivo → Adaptar a sistemas vehiculares
├── Sistema DT Automatizado → Replicar workflow
├── Scripts PowerShell → Adaptar nombres de sistemas
├── Templates T01-T05 → Mismo formato, contenido vehicular
└── ~150-200 Documentos v1.0 → Generar desde cero con IA
```

### **Archivos de Referencia del Proyecto Férreo:**

| Archivo Férreo | Uso en Proyecto Vehicular |
|:---------------|:---------------------------|
| `README.md` v14.7.6 | ✅ Inspiración para estructura |
| `@@Roadmap_v14.7_Marco_Gestion_Consolidado.md` | ✅ Modelo de roadmap |
| `.cursorrules` | ✅ Reglas de ejecución DT (adaptar) |
| `CRITERIOS_TECNICOS_MAESTRO_v1.0.md` | 🔄 Crear versión vehicular |
| `MATRIZ_TRAZABILIDAD_TECNICA_v1.0.md` | 🔄 Crear versión vehicular |
| `scripts/sincronizar_SISTEMA_COMPLETO_v14.3.ps1` | 🔄 Adaptar a vehicular |
| Templates T01-T05 | ✅ Usar misma estructura |

### **Ubicación Proyecto Férreo:**
```
D:\onedrive\OneDrive - Grupo Ortiz\LFC\02. Ingenieria\02. Ingenieria Conceptual\
```

---

## 📝 CHANGELOG

### [1.0.0] - 2025-10-16
#### Creación Inicial
- ✅ Creación del proyecto vehicular
- ✅ Estructura inicial de carpetas
- ✅ Importación de 15 contratos base (.txt)
- ✅ Guía de replicación vehicular v1.0 creada
- ✅ README completo con arquitectura y metodología
- ✅ ROADMAP detallado (6 fases, 12-16 semanas)
- ✅ Referencias al proyecto férreo documentadas
- ✅ Diferencias férreo vs vehicular identificadas
- ✅ Sistema de templates T01-T05 planificado

#### Documentos Creados
1. `README.md` - Arquitectura completa del proyecto
2. `ROADMAP.md` - Plan de trabajo detallado
3. `GUIA_REPLICACION_PROYECTO_VEHICULAR_v1.0.md` - Metodología

#### Próximos Pasos
- ⏳ Convertir contratos .txt a .md (Semana 1-2)
- ⏳ Identificar sistemas vehiculares (Semana 3-4)
- ⏳ Crear templates T01-T05 vehiculares (Semana 5-8)
- ⏳ Implementar sistema WBS vehicular (Mes 3)

---

**Estado del Proyecto:** 🔄 FASE 0 - Preparación y Estructuración  
**Versión:** 1.0  
**Proyecto Referencia:** APP La Dorada-Chiriguaná (Férreo) v14.7.6  
**Licencia:** Uso Interno - Confidencial  
**Última actualización:** 16 de octubre de 2025

