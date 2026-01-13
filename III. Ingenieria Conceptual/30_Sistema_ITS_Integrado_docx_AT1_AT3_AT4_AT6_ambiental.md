﻿# SISTEMA ITS INTEGRADO v4.0 - GESTIÓN INTELIGENTE Y AMBIENTAL
## APP La Dorada - Chiriguaná

---

## 1. MARCO CONTRACTUAL

### 1.1 Base Legal
El Sistema Inteligente de Transporte (ITS) es una capa de gestión y monitoreo que integra requisitos de:
- **AT1 (Alcance):** Define la necesidad de un CCO (UF2) como centro de gestión y la implementación de sistemas de control en la UF3.
- **AT3 (Especificaciones):** Detalla los requisitos técnicos para el ITS, incluyendo el cumplimiento de normas ISO TC-204 (Cap. 6.2, 6.3).
- **AT4 (Indicadores):** Exige la integración con el SICC para el monitoreo de indicadores de seguridad y calidad de servicio.
- **AT6 (Gestión Ambiental):** Requiere un programa de aporte sostenible con indicadores de cambio climático y monitoreo ambiental (Cap. 5.9, 7.1, 7.4).

---

### 1.2 ⚠️ EVALUACIÓN DE DEPENDENCIAS DOCUMENTALES
Este documento define la "inteligencia" del corredor, integrando datos de múltiples sistemas para optimizar la operación y el cumplimiento ambiental.

- **Depende de:**
    - `AT1`, `AT3`, `AT4`, `AT6`: Fuentes primarias de requisitos.
    - `26. Sistem_CTC_Int...md`: Proporciona los datos de operación del tráfico.
    - `28_Sistema_FibraOptica_Integrado...md`: Define el backbone de comunicaciones para los sensores ITS.
- **Gobierna a:**
    - `V. Ingenieria de detalle`: El diseño de detalle de los sensores y la plataforma ITS se basa en este concepto.
    - `38. DiagramasArquitectura...md`: La arquitectura ITS es un componente central de este diagrama.

---

## 2. INTEGRACIÓN CON DOCUMENTOS RELACIONADOS

### 2.1 Documentos Base (Completados ✅)
Este análisis se fundamenta en la estructura de trabajo ya aprobada.

| Documento | Aporte Clave |
|---|---|
| `22` a `25_...md` | Establecen la metodología, listado de sistemas, trazabilidad y WBS. |
| `26` a `29_...md` | Definen los sistemas de control y comunicaciones que alimentarán al ITS. |

---

### 2.2 Documentos Dependientes (Bloqueados 🔴)
El diseño detallado de los componentes ITS no puede avanzar hasta que este concepto de integración sea validado.

| Documento | Dependencia |
|---|---|
| `V. Ingenieria de detalle` | Requiere la arquitectura funcional y las especificaciones de los sensores ITS. |
| `38. DiagramasArquitectura...md` | Necesita la definición de las interfaces del ITS para completar el diagrama de bloques. |

### 2.3 Interfaces Críticas
- **ITS ↔ CTC:** El ITS recibe datos de operación del CTC para informar a los usuarios y gestionar incidentes.
- **ITS ↔ Señalización:** Utiliza el estado de los pasos a nivel para generar alertas de seguridad vial.
- **ITS ↔ Gestión Ambiental (AT6):** Proporciona la plataforma para el monitoreo de indicadores de ruido, vibraciones y calidad del aire.
- **ITS ↔ SICC (AT4):** Alimenta al SICC con los datos necesarios para calcular los indicadores de desempeño contractuales.
- **ITS ↔ ITCS:** Integración con datos de sistemas de control embarcados usando ETCS Level 2 hasta AT3.
- **ITS ↔ FENOCO:** Intercambio de datos operacionales con sistemas FENOCO según protocolos UIC.

---

## 3. OPTIMIZACIONES EPC ESPECÍFICAS

### 3.1 Arquitectura Modular para Proyectos EPC
Se propone una arquitectura ITS modular que permite una implementación por fases y una gestión de riesgos eficiente:
- **Módulo 1 - Plataforma Central (CCO):** Implementación de la plataforma de software ITS en el CCO, con integración inicial al CTC y al SICC, garantizando disponibilidad según AT4.
- **Módulo 2 - Seguridad Vial:** Despliegue de sensores y paneles de mensaje variable (PMV) en los 146 pasos a nivel, integrados con el sistema de señalización.
- **Módulo 3 - Monitoreo Ambiental (AT6):** Instalación de estaciones de monitoreo de calidad del aire y ruido en puntos estratégicos, enviando datos en tiempo real a la plataforma ITS.
- **Módulo 4 - Información al Usuario:** Desarrollo de la aplicación móvil y el portal web para consulta de horarios y alertas.

### 3.2 Estrategia de Avance con Bloqueos AT3/AT4
Dado que las especificaciones detalladas de algunos sensores (AT3) y los KPIs finales (AT4) están bloqueados, se adopta una estrategia de mitigación:
- **Diseño Basado en Estándares:** La plataforma ITS se diseñará siguiendo el estándar ISO TC-204, lo que garantiza la compatibilidad con una amplia gama de sensores y facilita la integración futura.
- **Enfoque en Integración:** Se priorizará la integración con los sistemas ya definidos (CTC, Señalización, Fibra Óptica), dejando "placeholders" para los datos de los sensores que dependen de AT3.

---

## 4. MATRIZ DE CONTROL Y SEGUIMIENTO (REQUISITOS ITS)

### 4.1 Requisitos Consolidados del Sistema ITS
La siguiente matriz integra los requisitos de los diferentes apéndices en funcionalidades concretas del sistema.

| Requisito Contractual | Fuente | Funcionalidad ITS Asociada | Estado AT3/AT4 |
|---|---|---|:---:|
| **Infraestructura de Control y Gestión** | AT1, Cap. 4.3.2 | Implementación de la plataforma ITS en el CCO (UF2) como parte de la infraestructura de control.<br>- **Disponibilidad según AT4** | ✅ Definido |
| **Normas ISO TC-204** | AT3, Cap. 6.3 | Adopción de estándares ISO para la arquitectura, comunicación y gestión de datos del ITS. | ⚠️ Condicionado |
| **Seguridad Vial** | AT3, Cap. 6.6 | Sistemas de alerta temprana en pasos a nivel, detección de intrusiones y coordinación con semáforos. | ✅ Definido |
| **Integración con SICC** | AT4, Cap. 5.3 | Desarrollo de una API para enviar datos de operación y seguridad al SICC para el cálculo de indicadores. | 🔴 Bloqueado |
| **Monitoreo Ambiental** | AT6, Cap. 5.9, 7.1 | Instalación de sensores de calidad del aire, ruido y vibraciones, y creación de un dashboard ambiental en el CCO. | ✅ Definido |
| **Información al Usuario** | AT3, Cap. 6.2 | Desarrollo de paneles de mensaje variable (PMV), aplicación móvil y portal web con información en tiempo real.<br>- **Integración ITCS ETCS Level 2 hasta AT3**<br>- **Interoperabilidad FENOCO UIC** | ✅ Definido |

### 4.2 Indicadores de Riesgo por Bloqueo AT3/AT4
- **🟢 Verde (Proceder):** Diseño de la plataforma central, arquitectura de red, integración con CTC y sistemas de monitoreo ambiental.
- **🟡 Amarillo (Diseño Modular):** Diseño de los sistemas de seguridad vial en pasos a nivel. Se puede avanzar en la lógica, pero la selección final de sensores depende de AT3.
- **🔴 Rojo (Bloqueado):** Desarrollo de los dashboards de KPIs específicos (depende de AT4). Adquisición de sensores con especificaciones técnicas detalladas en AT3.

---

## 5. CONCLUSIONES Y PRÓXIMOS PASOS

### 5.1 Estado del Documento v4.0
Este documento ha sido actualizado a la versión 4.0, estableciendo un **plan conceptual integrado para el Sistema Inteligente de Transporte (ITS)**. Define una arquitectura modular, integra los requisitos de 4 apéndices técnicos (AT1, AT3, AT4, AT6) y establece una estrategia clara para mitigar los riesgos derivados de los bloqueos documentales.

### 5.2 Acciones Requeridas para Mantener v4.0
- **Validación de Arquitectura:** El equipo de ingeniería debe validar la arquitectura modular y las interfaces propuestas con los proveedores de tecnología ITS.
- **Coordinación con Gestión Ambiental:** El diseño del módulo ambiental debe realizarse en talleres conjuntos con el equipo de Gestión Ambiental (AT6).

### 5.3 Criterios para Avance
La aprobación de este documento conceptual permite:
- **Desbloquear el Paquete de Trabajo 3.2 (Sistema CCTV):** Al definir la plataforma de integración y los requisitos de análisis de video.
- **Iniciar el Diseño Básico del ITS:** Incluyendo la elaboración de los diagramas de arquitectura y la especificación de la plataforma de software.
- **Avanzar en el Plan de Obras (AT9):** Detallar el cronograma de despliegue de sensores y PMV.

---

**Estado del documento:** ✅ Completado - 27 de enero de 2025
**Versión:** 4.1
**Responsable:** Administrador Contractual EPC
**Próxima actualización:** 27 de febrero de 2025

---

## 🔄 **ACTUALIZACIÓN v4.1 - REVISIÓN METODOLOGÍA PUNTO 42**

### ✅ **MEJORAS IMPLEMENTADAS:**

1. **🚂 ITCS ETCS Level 2:** Integración especificada para datos de sistemas de control embarcados
2. **🔗 Interoperabilidad FENOCO:** Protocolos UIC especificados para intercambio de datos
3. **📊 Criterios de Disponibilidad AT4:** Disponibilidad especificada para plataforma ITS
4. **🎯 Matriz de Requisitos:** Actualizada con criterios ITCS, FENOCO y AT4

### 🎯 **VACÍOS IDENTIFICADOS Y CORREGIDOS:**
- ✅ **ITCS:** Integración ETCS Level 2 especificada para datos de trenes
- ✅ **FENOCO:** Protocolos UIC para intercambio de datos operacionales
- ✅ **AT4:** Criterios de disponibilidad para plataforma ITS
- ✅ **Interfaces:** Especificación de interfaces ITCS y FENOCO

### ⚠️ **RIESGOS IDENTIFICADOS PARA ANÁLISIS PMI:**

| **ID** | **Riesgo** | **Categoría** | **Probabilidad** | **Impacto** | **Descripción** |
|:---:|:---|:---:|:---:|:---|:---|
| **R-050** | **Dependencia AT3 para sensores** | **Técnico** | **Alta** | **Alto** | Especificaciones de sensores ITS pendientes de AT3 |
| **R-051** | **Interoperabilidad FENOCO** | **Técnico** | **Media** | **Alto** | Intercambio de datos con FENOCO requiere protocolos UIC |
| **R-052** | **Disponibilidad según AT4** | **Contractual** | **Media** | **Alto** | Cumplimiento AT4 requiere redundancia crítica |
| **R-053** | **Integración múltiples módulos** | **Técnico** | **Media** | **Medio** | Complejidad de integración de 4 módulos ITS |
| **R-054** | **Integración ITCS-ITS** | **Técnico** | **Media** | **Alto** | Complejidad de integración con datos de control |

### 📋 **RECOMENDACIONES PARA GESTIÓN DE RIESGOS:**
- **Análisis PMI requerido** para definir estrategias de mitigación
- **Plan de contingencia** para dependencias AT3
- **Protocolos de interoperabilidad** con FENOCO según UIC
- **Matriz de disponibilidad** para cumplimiento AT4
- **Gestión de módulos** crítica para arquitectura ITS
