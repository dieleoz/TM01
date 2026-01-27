# DOCUMENTO DE REQUERIMIENTOS CONSOLIDADO
## Proyecto APP Puerto Salgar - Barrancabermeja
## Extracción y Consolidación de Requerimientos desde Documentos Servidos

**Fecha:** 24/10/2025  
**Versión:** 1.0  
**Responsable:** Administrador Contractual EPC  
**Estado:** 🔄 En Elaboración - Pendiente Validación por Áreas

---

## 1. PROPÓSITO Y ALCANCE

### 1.1 Objetivo

Este documento consolida los requerimientos extraídos de los **documentos de ingeniería servidos** en el Sistema WBS, organizándolos por área responsable y estableciendo una matriz de trazabilidad para garantizar el cierre formal de cada documento antes de la elaboración del documento de requerimientos final.

### 1.2 Metodología

1. **Extracción:** Identificación de requisitos desde documentos T01, T02, T03, T04 y validaciones contractuales
2. **Clasificación:** Agrupación por área responsable (Operaciones, Mantenimiento, Ingenierías, EPE/Ambiental, Concesionario)
3. **Consolidación:** Matriz de requerimientos con estado de validación
4. **Validación:** Revisión cruzada y cierre formal por cada área
5. **Documentación:** Registro de aceptaciones, observaciones y acciones requeridas

---

## 2. CLASIFICACIÓN DE DOCUMENTOS SERVIDOS

### 2.1 Sistemas Técnicos (6 documentos)

| # | Documento | Sistema | Ubicación | Estado |
|:--|:----------|:--------|:----------|:-------|
| 1 | Control y Señalización | CTC Virtual, ATP/ITCS, ENCE | `III. Ingenieria Conceptual/` | ✅ Servido |
| 2 | Telecomunicaciones | Fibra óptica, TETRA, GSM-R | `27_T01_Ficha_Sistema_Telecomunicaciones_v1.0.md` | ✅ Servido |
| 3 | ITS y Seguridad | CCTV, ITS, Control de Accesos | `24_T01_Ficha_Sistema_ITS_v1.0.md` | ✅ Servido |
| 4 | Material Rodante | Locomotoras, Equipos a Bordo | N/A (Proyecto Vehicular) | ⏳ N/A |
| 5 | Infraestructura Operativa | Energía, SCADA, UPS | `38_T01_Ficha_Sistema_Energia_Electrica_v1.0.md` | ✅ Servido |
| 6 | Integración y Coordinación | Interfaces entre sistemas | `III. Ingenieria Conceptual/` | ✅ Servido |

### 2.2 Especialidades (5 documentos)

| # | Documento | Especialidad | Ubicación | Estado |
|:--|:----------|:-------------|:----------|:-------|
| 1 | Ingeniería Civil | Obras civiles, cimentaciones, canalizaciones | `IV. Ingenieria Basica/` | ✅ Servido |
| 2 | Ingeniería Eléctrica | Energía, transformadores, UPS, PAT | `38_T01_Ficha_Sistema_Energia_Electrica_v1.0.md` | ✅ Servido |
| 3 | Ingeniería Mecánica | Climatización, ventilación, estructuras | `III. Ingenieria Conceptual/` | ✅ Servido |
| 4 | Ingeniería de Sistemas | Software, redes, bases de datos | `27_T01_Ficha_Sistema_Telecomunicaciones_v1.0.md` | ✅ Servido |
| 5 | Ingeniería Ambiental | Gestión ambiental, permisos, monitoreo | `40_T01_Ficha_Sistema_Gestion_Ambiental_v1.0.md` | ✅ Servido |

### 2.3 Documentos Técnicos (3 documentos)

| # | Documento | Descripción | Ubicación | Estado |
|:--|:----------|:------------|:----------|:-------|
| 1 | Centro Control Tráfico CCO | Detalle del sistema CCO | `26_T01_Ficha_Sistema_CCO_v1.0.md` | ✅ Servido |
| 2 | Interfaces de Sistemas | ICD - Control de interfaces | `III. Ingenieria Conceptual/` | ✅ Servido |
| 3 | Protocolos de Comunicación | Interfaces entre sistemas | `27_T01_Ficha_Sistema_Telecomunicaciones_v1.0.md` | ✅ Servido |

### 2.4 Gestión (3 documentos)

| # | Documento | Descripción | Ubicación | Estado |
|:--|:----------|:------------|:----------|:-------|
| 1 | Alcance y Objetivos | Definición del alcance y objetivos | `AT1_Alcance_Proyecto_v1.0.md` | ✅ Servido |
| 2 | Cronograma y Recursos | Plan de trabajo, hitos y recursos | `IX. WBS y Planificacion/` | ✅ Servido |
| 3 | Reporte Cambios y DTs | Todas las decisiones técnicas | `VII. Documentos Transversales/DTs/` | ✅ Servido |

### 2.5 Respuestas a Contratistas y Herramientas (3 documentos)

| # | Documento | Descripción | Ubicación | Estado |
|:--|:----------|:------------|:----------|:-------|
| 1 | Respuesta Técnica Contratistas | Documentación de ofertas técnicas | `X. Entregables Consolidados/` | ✅ Servido |
| 2 | Equipos: PK + Consumo | Ubicación, cantidades y consumos | `Sistema_Validacion_Web/layout_datos.js` | ✅ Servido |
| 3 | Decisiones Técnicas Recientes | Últimas DTs y verificación | `VII. Documentos Transversales/DTs/` | ✅ Servido |

**TOTAL: 20 documentos servidos**

---

## 3. MATRIZ DE REQUERIMIENTOS POR ÁREA

### 3.1 Área: OPERACIONES

| ID | Sistema/Tema | Requerimiento Identificado | Documento Origen | Estado | Comentarios | Responsable |
|:---|:-------------|:---------------------------|:------------------|:-------|:------------|:-------------|
| REQ-OP-001 | ITS | Supervisión en tiempo real del flujo vehicular | T01 ITS §2.1 | ⏳ Pendiente | Requiere validación procedimientos | Jefe Operaciones |
| REQ-OP-002 | CCO | Operación 24/7/365 del Centro de Control | T01 CCO §2.1 | ⏳ Pendiente | Validar dotación de personal | Jefe Operaciones |
| REQ-OP-003 | CCTV | Monitoreo continuo de corredor vial | T01 CCTV §2.1 | ⏳ Pendiente | Definir protocolos de respuesta | Jefe Operaciones |
| REQ-OP-004 | PMV | Gestión de mensajes variables a usuarios | T01 PMV §2.1 | ⏳ Pendiente | Validar contenido de mensajes | Jefe Operaciones |
| REQ-OP-005 | Peajes | Operación de estaciones de peaje | T01 Peajes §2.1 | ⏳ Pendiente | Validar procedimientos TAG | Jefe Operaciones |
| REQ-OP-006 | Emergencias | Activación de protocolos de emergencia | T01 Emergencias §2.1 | ⏳ Pendiente | Coordinar con Policía | Jefe Operaciones |
| REQ-OP-007 | Telecomunicaciones | Transmisión de datos en tiempo real | T01 Telecom §5 | ⏳ Pendiente | Validar redundancia | Jefe Operaciones |
| REQ-OP-008 | Integración | Interacción con sistemas ANI (SIINCO) | T01 ITS §5 | ⏳ Pendiente | Validar APIs y protocolos | Jefe Operaciones |

**Total Requerimientos Operaciones: 8**

---

### 3.2 Área: MANTENIMIENTO

| ID | Sistema/Tema | Requerimiento Identificado | Documento Origen | Estado | Comentarios | Responsable |
|:---|:-------------|:---------------------------|:------------------|:-------|:------------|:-------------|
| REQ-MT-001 | ITS | Disponibilidad mínima 99% anual | T01 ITS §3.1 | ⏳ Pendiente | Validar SLA con proveedores | Jefe Mantenimiento |
| REQ-MT-002 | CCTV | Mantenimiento preventivo trimestral | T01 CCTV §6.2 | ⏳ Pendiente | Definir checklist de inspección | Jefe Mantenimiento |
| REQ-MT-003 | PMV | Mantenimiento de paneles y controladores | T01 PMV §6.2 | ⏳ Pendiente | Validar repuestos críticos | Jefe Mantenimiento |
| REQ-MT-004 | Energía | Mantenimiento de UPS y generadores | T01 Energía §6.2 | ⏳ Pendiente | Validar pruebas de respaldo | Jefe Mantenimiento |
| REQ-MT-005 | Telecomunicaciones | Mantenimiento de fibra óptica | T01 Telecom §6.2 | ⏳ Pendiente | Validar tiempos de reparación | Jefe Mantenimiento |
| REQ-MT-006 | Postes SOS | Mantenimiento de 88 postes SOS | T01 SOS §6.2 | ⏳ Pendiente | Validar frecuencia de inspección | Jefe Mantenimiento |
| REQ-MT-007 | WIM | Calibración periódica de estaciones | T01 WIM §6.2 | ⏳ Pendiente | Validar certificaciones | Jefe Mantenimiento |
| REQ-MT-008 | Estaciones Meteo | Mantenimiento según IDEAM | T01 Meteo §3.2 | ⏳ Pendiente | Coordinar con IDEAM | Jefe Mantenimiento |
| REQ-MT-009 | Repuestos | Stock mínimo de repuestos críticos | T01 ITS §6.2 | ⏳ Pendiente | Definir inventario mínimo | Jefe Mantenimiento |
| REQ-MT-010 | Tiempo Respuesta | ≤ 24 horas para equipos críticos | T01 ITS §8 | ⏳ Pendiente | Validar con proveedores | Jefe Mantenimiento |

**Total Requerimientos Mantenimiento: 10**

---

### 3.3 Área: INGENIERÍA CIVIL

| ID | Sistema/Tema | Requerimiento Identificado | Documento Origen | Estado | Comentarios | Responsable |
|:---|:-------------|:---------------------------|:------------------|:-------|:------------|:-------------|
| REQ-IC-001 | Postes SOS | 88 postes con cimentación adecuada | T01 SOS §4 | ⏳ Pendiente | Validar diseño estructural | Ing. Civil |
| REQ-IC-002 | PMV | Estructuras soporte para 28 PMV | T01 PMV §4 | ⏳ Pendiente | Validar cargas de viento | Ing. Civil |
| REQ-IC-003 | Canalizaciones | Canalizaciones para fibra óptica | T01 Telecom §4 | ⏳ Pendiente | Validar tritubo 283 km | Ing. Civil |
| REQ-IC-004 | Cimentaciones | Cimentaciones para equipos ITS | T01 ITS §4 | ⏳ Pendiente | Validar estudios de suelo | Ing. Civil |
| REQ-IC-005 | Áreas de Servicio | Obras civiles para áreas de servicio | T01 Áreas Servicio §4 | ⏳ Pendiente | Validar diseño arquitectónico | Ing. Civil |
| REQ-IC-006 | Peajes | Obras civiles para estaciones de peaje | T01 Peajes §4 | ⏳ Pendiente | Validar diseño funcional | Ing. Civil |
| REQ-IC-007 | CCO | Obras civiles para Centro de Control | T01 CCO §4 | ⏳ Pendiente | Validar diseño estructural | Ing. Civil |
| REQ-IC-008 | Gálibos | 8 puntos de detección de altura | T01 ITS §4 | ⏳ Pendiente | Validar ubicaciones PK | Ing. Civil |

**Total Requerimientos Ingeniería Civil: 8**

---

### 3.4 Área: INGENIERÍA ELÉCTRICA

| ID | Sistema/Tema | Requerimiento Identificado | Documento Origen | Estado | Comentarios | Responsable |
|:---|:-------------|:---------------------------|:------------------|:-------|:------------|:-------------|
| REQ-IE-001 | Energía Principal | Suministro eléctrico para corredor | T01 Energía §4 | ⏳ Pendiente | Validar capacidad transformadores | Ing. Eléctrico |
| REQ-IE-002 | UPS | Sistemas UPS para equipos críticos | T01 Energía §4 | ⏳ Pendiente | Validar autonomía y redundancia | Ing. Eléctrico |
| REQ-IE-003 | Generadores | Generadores de emergencia | T01 Energía §4 | ⏳ Pendiente | Validar capacidad y ubicaciones | Ing. Eléctrico |
| REQ-IE-004 | Iluminación | 200+ luminarias LED viales | T01 Iluminación §4 | ⏳ Pendiente | Validar diseño de alumbrado | Ing. Eléctrico |
| REQ-IE-005 | PAT | Plan de Aterrizaje a Tierra | T01 Energía §4 | ⏳ Pendiente | Validar diseño de puesta a tierra | Ing. Eléctrico |
| REQ-IE-006 | Consumos | Validación de consumos eléctricos | Layout §2.5 | ⏳ Pendiente | Validar cargas totales | Ing. Eléctrico |
| REQ-IE-007 | Protecciones | Sistemas de protección eléctrica | T01 Energía §4 | ⏳ Pendiente | Validar coordinación protecciones | Ing. Eléctrico |
| REQ-IE-008 | Distribución | Red de distribución eléctrica | T01 Energía §4 | ⏳ Pendiente | Validar diagrama unifilar | Ing. Eléctrico |

**Total Requerimientos Ingeniería Eléctrica: 8**

---

### 3.5 Área: INGENIERÍA DE SISTEMAS

| ID | Sistema/Tema | Requerimiento Identificado | Documento Origen | Estado | Comentarios | Responsable |
|:---|:-------------|:---------------------------|:------------------|:-------|:------------|:-------------|
| REQ-IS-001 | Telecomunicaciones | Red de fibra óptica 283 km anillo | T01 Telecom §4 | ⏳ Pendiente | Validar topología de red | Ing. Sistemas |
| REQ-IS-002 | Red L2/L3 | Switches de red Core y Acceso | T01 Telecom §4 | ⏳ Pendiente | Validar arquitectura de red | Ing. Sistemas |
| REQ-IS-003 | CCTV | Sistema de videovigilancia IP | T01 CCTV §4 | ⏳ Pendiente | Validar almacenamiento NVR | Ing. Sistemas |
| REQ-IS-004 | SCADA | Sistema SCADA para supervisión | T01 ITS §4 | ⏳ Pendiente | Validar arquitectura SCADA | Ing. Sistemas |
| REQ-IS-005 | Bases de Datos | Registro inviolable de operaciones | T01 ITS §3.1 | ⏳ Pendiente | Validar diseño de BD | Ing. Sistemas |
| REQ-IS-006 | Integración ANI | APIs compatibles con SIINCO | T01 ITS §5 | ⏳ Pendiente | Validar protocolos de integración | Ing. Sistemas |
| REQ-IS-007 | Seguridad | Seguridad de redes y sistemas | T01 Telecom §7 | ⏳ Pendiente | Validar políticas de seguridad | Ing. Sistemas |
| REQ-IS-008 | Software | Licencias de software operativo | T01 ITS §6.2 | ⏳ Pendiente | Validar requerimientos | Ing. Sistemas |

**Total Requerimientos Ingeniería de Sistemas: 8**

---

### 3.6 Área: INGENIERÍA AMBIENTAL

| ID | Sistema/Tema | Requerimiento Identificado | Documento Origen | Estado | Comentarios | Responsable |
|:---|:-------------|:---------------------------|:------------------|:-------|:------------|:-------------|
| REQ-IA-001 | Gestión Ambiental | Plan de Gestión Ambiental | T01 Gestión Ambiental §2 | ⏳ Pendiente | Validar cumplimiento normativo | Ing. Ambiental |
| REQ-IA-002 | Permisos | Permisos ambientales requeridos | T01 Gestión Ambiental §3 | ⏳ Pendiente | Validar estado de permisos | Ing. Ambiental |
| REQ-IA-003 | Monitoreo | Monitoreo ambiental continuo | T01 Gestión Ambiental §4 | ⏳ Pendiente | Validar puntos de monitoreo | Ing. Ambiental |
| REQ-IA-004 | Estaciones Meteo | Cumplimiento especificaciones IDEAM | T01 Meteo §3.2 | ⏳ Pendiente | Coordinar con IDEAM | Ing. Ambiental |
| REQ-IA-005 | Impactos | Evaluación de impactos ambientales | T01 Gestión Ambiental §7 | ⏳ Pendiente | Validar medidas de mitigación | Ing. Ambiental |
| REQ-IA-006 | Residuos | Gestión de residuos de construcción | T01 Gestión Ambiental §4 | ⏳ Pendiente | Validar plan de manejo | Ing. Ambiental |

**Total Requerimientos Ingeniería Ambiental: 6**

---

### 3.7 Área: EPE / PERMISOS Y CONCESIONARIO

| ID | Sistema/Tema | Requerimiento Identificado | Documento Origen | Estado | Comentarios | Responsable |
|:---|:-------------|:---------------------------|:------------------|:-------|:------------|:-------------|
| REQ-EPE-001 | Cumplimiento Normativo | Cumplimiento AT1, AT2, AT3, AT4 | AT1, AT2, AT3, AT4 | ⏳ Pendiente | Validar todos los ATs | EPE |
| REQ-EPE-002 | Presupuesto | Validación de presupuesto total | Presupuesto §6 | ⏳ Pendiente | Validar costos vs contrato | EPE |
| REQ-EPE-003 | Cronograma | Cumplimiento de hitos contractuales | WBS §2 | ⏳ Pendiente | Validar fechas críticas | EPE |
| REQ-EPE-004 | Indicadores | Cumplimiento de KPIs (AT4) | T01 ITS §8 | ⏳ Pendiente | Validar indicadores | EPE |
| REQ-EPE-005 | Entregables | Entregables según contrato | Alcance §2.1 | ⏳ Pendiente | Validar lista de entregables | EPE |
| REQ-EPE-006 | Decisiones Técnicas | Aprobación de DTs | DTs §2.5 | ⏳ Pendiente | Validar proceso de DTs | EPE |
| REQ-EPE-007 | Impacto Concesión | Impacto en modelo de negocio | T01 Áreas Servicio §6 | ⏳ Pendiente | Validar impacto financiero | Concesionario |
| REQ-EPE-008 | Retribución | Impacto en retribución mensual | AT4 §3 | ⏳ Pendiente | Validar penalizaciones | Concesionario |

**Total Requerimientos EPE/Concesionario: 8**

---

## 4. RESUMEN DE REQUERIMIENTOS

| Área | Total Requerimientos | Pendientes | Aceptados | Requiere Aclaración |
|:-----|:---------------------|:-----------|:----------|:-------------------|
| **Operaciones** | 8 | 8 | 0 | 0 |
| **Mantenimiento** | 10 | 10 | 0 | 0 |
| **Ingeniería Civil** | 8 | 8 | 0 | 0 |
| **Ingeniería Eléctrica** | 8 | 8 | 0 | 0 |
| **Ingeniería de Sistemas** | 8 | 8 | 0 | 0 |
| **Ingeniería Ambiental** | 6 | 6 | 0 | 0 |
| **EPE/Concesionario** | 8 | 8 | 0 | 0 |
| **TOTAL** | **56** | **56** | **0** | **0** |

---

## 5. REVISIÓN CRUZADA Y CONSISTENCIA

### 5.1 Interfaces Compartidas

| Interface | Sistema A | Sistema B | Requerimiento | Estado |
|:----------|:----------|:----------|:--------------|:-------|
| Fibra Óptica | Telecomunicaciones | ITS | REQ-IS-001, REQ-OP-007 | ⏳ Pendiente |
| Energía | Energía Eléctrica | ITS | REQ-IE-001, REQ-OP-001 | ⏳ Pendiente |
| CCO | CCO | ITS | REQ-OP-002, REQ-IS-004 | ⏳ Pendiente |
| ANI | ITS | Integración | REQ-OP-008, REQ-IS-006 | ⏳ Pendiente |

### 5.2 Conflictos Identificados

| # | Conflicto | Áreas Involucradas | Acción Requerida | Responsable |
|:--|:----------|:-------------------|:-----------------|:-------------|
| 1 | Ninguno identificado aún | - | - | - |

---

## 6. PLAN DE CIERRE DE DOCUMENTOS

### 6.1 Proceso de Validación

1. **Distribución:** Enviar checklist de cierre a cada área responsable
2. **Revisión:** Cada área revisa sus requerimientos asignados
3. **Validación:** Confirmación de completitud y corrección
4. **Observaciones:** Registro de lagunas o modificaciones
5. **Aceptación:** Firma formal de aceptación o rechazo
6. **Consolidación:** Actualización de matriz con respuestas
7. **Cierre:** Documento cerrado cuando todas las áreas aceptan

### 6.2 Cronograma de Cierre

| Fase | Actividad | Responsable | Fecha Objetivo |
|:-----|:----------|:-------------|:---------------|
| 1 | Distribución de checklists | Administrador Contractual | 25/10/2025 |
| 2 | Revisión por áreas | Jefes de Área | 01/11/2025 |
| 3 | Consolidación de respuestas | Administrador Contractual | 05/11/2025 |
| 4 | Resolución de conflictos | Gerente de Proyecto | 08/11/2025 |
| 5 | Cierre formal | Todas las áreas | 10/11/2025 |

---

## 7. ACCIONES REQUERIDAS

### 7.1 Acciones Inmediatas

- [ ] Generar checklists de cierre por área (usar prompt proporcionado)
- [ ] Distribuir checklists a jefes de área
- [ ] Establecer reuniones de validación
- [ ] Crear registro de seguimiento

### 7.2 Acciones Post-Validación

- [ ] Actualizar matriz con respuestas de áreas
- [ ] Resolver conflictos identificados
- [ ] Generar documento de requerimientos final consolidado
- [ ] Obtener aprobación formal de todas las áreas

---

## 8. ANEXOS

### Anexo A: Referencias a Documentos Origen

- [Listado completo de documentos T01, T02, T03, T04]
- [Enlaces a validaciones contractuales]
- [Referencias a Apéndices Técnicos]

### Anexo B: Glosario de Términos

- **REQ-XX-YYY:** Requerimiento [Área]-[Número]
- **AT:** Apéndice Técnico
- **DT:** Decisión Técnica
- **CCO:** Centro de Control Operacional
- **ITS:** Intelligent Transportation Systems

---

## 9. CONTROL DE VERSIONES

| Versión | Fecha | Autor | Descripción |
|:-------:|:------|:------|:------------|
| 1.0 | 24/10/2025 | Administrador Contractual EPC | Versión inicial - Matriz de requerimientos consolidada |

---

**Versión:** 1.0  
**Estado:** 🔄 En Elaboración - Pendiente Validación por Áreas  
**Próxima Actualización:** Tras validación de todas las áreas (objetivo: 10/11/2025)

---

**Fin del documento - Requerimientos Consolidado**


