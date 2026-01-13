﻿# SISTEMA CCTV INTEGRADO v4.0 - MONITOREO Y SEGURIDAD
## APP La Dorada - Chiriguaná

---

## 1. MARCO CONTRACTUAL

### 1.1 Base Legal
El Sistema de Circuito Cerrado de Televisión (CCTV) es un componente clave para la seguridad operativa y comunitaria. Su diseño conceptual integra requisitos de:
- **AT1 (Alcance):** Define la necesidad de CCTV en el CCO (UF2, Tabla 16) y en los talleres (UF1, Tablas 12-15).
- **AT3 (Especificaciones):** Detalla los requisitos técnicos para el sistema CCTV, incluyendo el cumplimiento de normas UNE-EN 50132 y ONVIF (Cap. 6.12, 8.8).
- **AT4 (Indicadores):** Exige el monitoreo del indicador "Cerramiento y CCTV", con una disponibilidad del 100% (Cap. 4).
- **AT8 (Gestión Social):** Requiere que la videovigilancia respete la privacidad y los derechos fundamentales, y se coordine con los programas de atención al usuario (Cap. 7.4).

---

### 1.2 ⚠️ EVALUACIÓN DE DEPENDENCIAS DOCUMENTALES
Este documento define la arquitectura de videovigilancia del proyecto, siendo un pilar para la seguridad física y la gestión de incidentes.

- **Depende de:**
    - `AT1`, `AT3`, `AT4`, `AT8`: Fuentes primarias de requisitos.
    - `28_Sistema_FibraOptica_Integrado...md`: Define el backbone de comunicaciones para la transmisión de video.
    - `30_Sistema_ITS_Integrado...md`: Define la plataforma donde se integrará el análisis de video.
- **Gobierna a:**
    - `V. Ingenieria de detalle/8_CCTV_Contrato_8_8_1.md`: El diseño de detalle de la red de cámaras y el VMS se basa en este concepto.
    - `36_Criterios_Ciberseguridad...md`: Define los activos de video que deben ser protegidos.

---

## 2. INTEGRACIÓN CON DOCUMENTOS RELACIONADOS

### 2.1 Documentos Base (Completados ✅)
Este análisis se fundamenta en la estructura de trabajo ya aprobada.

| Documento | Aporte Clave |
|---|---|
| `22` a `25_...md` | Establecen la metodología, listado de sistemas, trazabilidad y WBS. |
| `28_Sistema_FibraOptica_Integrado...md` | Proporciona la red de transporte para el video. |
| `30_Sistema_ITS_Integrado...md` | Proporciona la plataforma de software para la integración y análisis. |

---

### 2.2 Documentos Dependientes (Bloqueados 🔴)
El diseño detallado de la red CCTV no puede avanzar hasta que este concepto de integración sea validado.

| Documento | Dependencia |
|---|---|
| `V. Ingenieria de detalle/8_CCTV_Contrato_8_8_1.md` | Requiere la arquitectura de red, el plan de cobertura y las especificaciones del VMS. |

### 2.3 Interfaces Críticas
- **CCTV ↔ Fibra Óptica:** La red de fibra es el medio de transporte para el video de alta definición desde las cámaras hasta el CCO.
- **CCTV ↔ Gestión Social (AT8):** El diseño del plan de cobertura debe ser consultado con las comunidades para respetar la privacidad y potenciar la seguridad comunitaria.
- **CCTV ↔ SICC (AT4):** El sistema debe reportar su estado de funcionamiento para el cálculo del indicador "Cerramiento y CCTV".
- **CCTV ↔ Control de Accesos:** Integración para la verificación visual de eventos de acceso en áreas críticas.
- **CCTV ↔ ITCS:** Monitoreo visual de sistemas de control embarcados usando ETCS Level 2 hasta AT3.
- **CCTV ↔ FENOCO:** Coordinación con sistemas de videovigilancia FENOCO según protocolos UIC.

---

## 3. OPTIMIZACIONES EPC ESPECÍFICAS

### 3.1 Arquitectura de Videovigilancia para Proyectos EPC
Se propone una arquitectura de CCTV por zonas, que optimiza la gestión y la escalabilidad:
- **Zona 1 - Infraestructura Crítica:** Cobertura de alta seguridad en CCO, talleres, estaciones de enclavamiento y subestaciones eléctricas. Uso de cámaras PTZ, térmicas y con analítica de video para detección de intrusiones.
- **Zona 2 - Corredor y Pasos a Nivel:** Cámaras fijas en los 146 pasos a nivel para monitoreo del tráfico y apoyo en la investigación de incidentes.
- **Zona 3 - Áreas Públicas y Comunitarias:** Cámaras en estaciones y oficinas de atención al usuario, con un diseño que prioriza la seguridad de los usuarios y el respeto a la privacidad.
- **Plataforma Centralizada:** Un único Video Management System (VMS) en el CCO para la gestión de todas las cámaras, con almacenamiento redundante (mínimo 30 días) y un videowall para monitoreo 24/7, garantizando disponibilidad 100% según AT4.

### 3.2 Estrategia de Integración Social (AT8)
El sistema CCTV no es solo técnico, es una herramienta social. Su implementación seguirá estos principios:
- **Diseño Participativo:** Se realizarán talleres con las comunidades para definir la ubicación de las cámaras en espacios públicos, buscando un consenso entre seguridad y privacidad.
- **Protocolo de Uso Ético:** Se creará y socializará un protocolo claro sobre el uso de las grabaciones, en cumplimiento de la Ley 1581 de 2012, definiendo quién puede acceder a ellas y con qué propósito.
- **Señalización Visible:** Todas las áreas bajo videovigilancia contarán con señalización clara e informativa, como lo exige la normativa de protección de datos.

---

## 4. MATRIZ DE CONTROL Y SEGUIMIENTO (REQUISITOS CCTV)

### 4.1 Requisitos Consolidados del Sistema CCTV
La siguiente matriz integra los requisitos de los diferentes apéndices en funcionalidades concretas del sistema.

| Requisito Contractual | Fuente | Funcionalidad CCTV Asociada | Estado AT3/AT4 |
|---|---|---|:---:|
| **Seguridad en CCO y Talleres** | AT1, Tablas 12-16 | Implementación de cámaras perimetrales, de control de acceso y de supervisión de procesos en UF1 y UF2.<br>- **Disponibilidad 100% según AT4** | ✅ Definido |
| **Normas Técnicas (UNE-EN, ONVIF)** | AT3, Cap. 6.12 | Selección de cámaras, VMS y NVR que cumplan con los estándares de interoperabilidad y calidad de video. | ⚠️ Condicionado |
| **Indicador "Cerramiento y CCTV"** | AT4, Cap. 4 | El sistema debe tener una disponibilidad del 100%, con interrupciones mínimas. Se requiere un sistema de monitoreo de salud de los equipos. | 🔴 Bloqueado |
| **Privacidad y Derechos Fundamentales** | AT8, Cap. 7 | Diseño de la cobertura en consulta con la comunidad y creación de un protocolo de uso de datos. | ✅ Definido |
| **Integración con Control de Accesos** | AT3, Cap. 6.13 | Correlación de eventos de video con los registros del sistema de control de accesos.<br>- **Monitoreo ITCS ETCS Level 2 hasta AT3**<br>- **Interoperabilidad FENOCO UIC** | ✅ Definido |

### 4.2 Indicadores de Riesgo por Bloqueo AT3/AT4
- **🟢 Verde (Proceder):** Diseño conceptual de la arquitectura de red, plan de cobertura preliminar, desarrollo del protocolo de uso ético (AT8).
- **🟡 Amarillo (Diseño Modular):** Selección de la plataforma VMS. Se puede avanzar con VMS que soporten ONVIF, pero la selección final puede depender de especificaciones en AT3.
- **🔴 Rojo (Bloqueado):** Adquisición de modelos de cámaras específicos (depende de AT3). Desarrollo del dashboard de KPIs para el indicador de disponibilidad (depende de AT4).

---

## 5. CONCLUSIONES Y PRÓXIMOS PASOS

### 5.1 Estado del Documento v4.0
Este documento ha sido actualizado a la versión 4.0, estableciendo un **plan conceptual integrado para el Sistema CCTV**. Define una arquitectura por zonas, integra los requisitos técnicos (AT1, AT3) con los sociales (AT8) y de desempeño (AT4), y establece una estrategia clara para mitigar los riesgos derivados de los bloqueos documentales.

### 5.2 Acciones Requeridas para Mantener v4.0
- **Ejecución de Talleres Sociales:** Iniciar la coordinación con el equipo de Gestión Social para planificar los talleres de diseño participativo.
- **Validación de Arquitectura:** El equipo de ingeniería debe validar la arquitectura de red y los requisitos de ancho de banda con el equipo de telecomunicaciones.

### 5.3 Criterios para Avance
La aprobación de este documento conceptual permite:
- **Desbloquear el Paquete de Trabajo 4.0 (Material Rodante):** Al definir los sistemas de seguridad que podrían integrarse en el material rodante.
- **Iniciar el Diseño Básico del CCTV:** Incluyendo la elaboración de los planos de ubicación de cámaras y el diseño del centro de monitoreo en el CCO.
- **Avanzar en el Plan de Obras (AT9):** Detallar el cronograma de instalación de cámaras y canalizaciones.

---

**Estado del documento:** ✅ Completado - 27 de enero de 2025
**Versión:** 4.1
**Responsable:** Administrador Contractual EPC
**Próxima actualización:** 27 de febrero de 2025

---

## 🔄 **ACTUALIZACIÓN v4.1 - REVISIÓN METODOLOGÍA PUNTO 42**

### ✅ **MEJORAS IMPLEMENTADAS:**

1. **🚂 ITCS ETCS Level 2:** Monitoreo visual especificado para sistemas de control embarcados
2. **🔗 Interoperabilidad FENOCO:** Protocolos UIC especificados para coordinación con FENOCO
3. **📊 Criterios de Disponibilidad AT4:** 100% especificado para sistema CCTV
4. **🎯 Matriz de Requisitos:** Actualizada con criterios ITCS, FENOCO y AT4

### 🎯 **VACÍOS IDENTIFICADOS Y CORREGIDOS:**
- ✅ **ITCS:** Monitoreo visual ETCS Level 2 especificado para sistemas embarcados
- ✅ **FENOCO:** Protocolos UIC para coordinación con sistemas FENOCO
- ✅ **AT4:** Criterios de disponibilidad 100% para sistema CCTV
- ✅ **Interfaces:** Especificación de interfaces ITCS y FENOCO

### ⚠️ **RIESGOS IDENTIFICADOS PARA ANÁLISIS PMI:**

| **ID** | **Riesgo** | **Categoría** | **Probabilidad** | **Impacto** | **Descripción** |
|:---:|:---|:---:|:---:|:---|:---|
| **R-055** | **Dependencia AT3 para equipos** | **Técnico** | **Alta** | **Alto** | Especificaciones de cámaras CCTV pendientes de AT3 |
| **R-056** | **Interoperabilidad FENOCO** | **Técnico** | **Media** | **Alto** | Coordinación con sistemas FENOCO requiere protocolos UIC |
| **R-057** | **Disponibilidad 100%** | **Contractual** | **Media** | **Alto** | Cumplimiento AT4 requiere redundancia crítica |
| **R-058** | **Gestión social AT8** | **Gestión** | **Media** | **Medio** | Complejidad de talleres participativos y protocolos éticos |
| **R-059** | **Integración ITCS-CCTV** | **Técnico** | **Media** | **Alto** | Complejidad de monitoreo visual de sistemas de control |

### 📋 **RECOMENDACIONES PARA GESTIÓN DE RIESGOS:**
- **Análisis PMI requerido** para definir estrategias de mitigación
- **Plan de contingencia** para dependencias AT3
- **Protocolos de interoperabilidad** con FENOCO según UIC
- **Matriz de disponibilidad** para cumplimiento AT4
- **Gestión social** crítica para AT8
