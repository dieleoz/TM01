# LISTADO MAESTRO DE SISTEMAS VEHICULARES v1.0
## Proyecto APP Puerto Salgar - Barrancabermeja

**Fecha:** 16/10/2025  
**Responsable:** Administrador Contractual EPC  
**Versión:** 1.1  
**Fuente:** Análisis AT1, AT2, AT3, AT4  

---

## 1. INFORMACIÓN DEL DOCUMENTO

| Campo | Valor |
|-------|-------|
| **Proyecto** | APP Puerto Salgar - Barrancabermeja |
| **Tipo de Proyecto** | Concesión Vehícular/Carretera |
| **Longitud Estimada** | 259.6 km principales + 33.4 km adicionales (RN 4510, RN 4511, RN 4513) |
| **Departamentos** | Cundinamarca, Boyacá, Santander |
| **Fuentes Contractuales** | AT1, AT2, AT3, AT4 |
| **Estado** | ✅ Versión Preliminar v1.0 |

---

## 2. PROPÓSITO

Este documento consolida TODOS los sistemas vehiculares identificados en los Apéndices Técnicos del contrato de concesión APP Puerto Salgar - Barrancabermeja, proporcionando:

1. **Listado completo de sistemas**
2. **Cantidades estimadas** por sistema
3. **Ubicaciones y distribución**
4. **Referencias contractuales**
5. **Interfaces entre sistemas**

---

## 3. SISTEMAS PRINCIPALES

### 3.1 SISTEMAS ITS (INTELLIGENT TRANSPORTATION SYSTEMS)

| Sistema | Descripción | Cantidad Estimada | Ubicación | AT Relacionado |
|:--------|:------------|:------------------|:----------|:---------------|
| **PMV** | Paneles de Mensaje Variable (LED) | Por definir | Estaciones de peaje, puntos críticos | AT1, AT2 |
| **CCTV** | Cámaras de Circuito Cerrado | Por definir | Peajes, áreas de servicio, puntos críticos | AT2, AT4 |
| **WIM** | Pesaje en Movimiento (Weigh In Motion) | Integrado en estaciones | Estaciones de pesaje | AT2 |
| **Meteo** | Estaciones Meteorológicas | Por definir | A lo largo del corredor | AT2, AT4 |
| **SOS** | Teléfonos/Postes de Emergencia | Por definir | Distribuidos en el corredor | AT2 |
| **DAI** | Detectores Automáticos de Incidentes | Por definir | Puntos críticos | AT2, AT4 |
| **Aforo** | Contadores de Tráfico | Todas las estaciones de peaje | Estaciones de peaje | AT2, AT4 |
| **Radares** | Sistemas de Control de Velocidad | Por definir | Puntos críticos | AT2 |
| **Detectores Altura** | Tecnología láser | Mínimo en peajes, puentes, túneles | Antes de restricciones | AT2 |

---

### 3.2 SISTEMAS DE PEAJE

| Sistema | Descripción | Cantidad | Ubicación | AT Relacionado |
|:--------|:------------|:---------|:----------|:---------------|
| **Estaciones de Peaje** | Peajes completos | Por definir (ver AT1) | A lo largo del corredor | AT1, AT2 |
| **Carriles Manuales** | Recaudo manual con operador | Por definir | Todas las estaciones | AT2 |
| **Carriles Semiautomáticos** | Tarjeta de aproximación/débito/crédito | Mínimo 1 por sentido por estación | Todas las estaciones | AT2 |
| **Carriles Automáticos (TAG)** | Telepeaje sin detención | Mínimo 1 por estación | Todas las estaciones | AT2 |
| **Básculas Dinámicas** | Pesaje en todos los carriles | Todos los carriles de peaje | Integrado en peajes | AT2 |
| **Cámaras de Control** | Identificación de placas y violaciones | Mínimo 3 sistemas por estación | Todas las estaciones | AT2 |
| **Sensores de Peaje** | Ópticos, inductivos, peanas | Múltiples por carril | Todos los carriles | AT2 |

**Tecnología de Peaje:**
- ✅ Interoperabilidad requerida (Resoluciones 4303/2015, 5708/2016, 546/2018, 883/2019, 509/2020)
- ✅ Sistema IP/REV (Recaudo Electrónico Vehicular)
- ✅ Compatibilidad con TAG nacional

---

### 3.3 SISTEMAS DE PESAJE

| Sistema | Descripción | Cantidad | Ubicación | AT Relacionado |
|:--------|:------------|:---------|:----------|:---------------|
| **Básculas Fijas** | Estaciones de pesaje fijas | Por definir (ver AT1) | Según estudio | AT2 |
| **Básculas Dinámicas** | Pesaje sin detención (WIM) | Integradas en peajes | Todos los carriles | AT2 |
| **Básculas Móviles** | Unidades portátiles | Por definir | Operativos móviles | AT2 |

**Especificaciones Técnicas:**
- Capacidad: 100 toneladas (fijas)
- Error permisible: 1% (fijas), 5% (dinámicas/móviles)
- Operación: 24/7 con horarios adaptativos
- Calibración: Anual obligatoria

---

### 3.4 CENTRO DE CONTROL OPERACIONAL (CCO)

| Sistema | Descripción | Cantidad | Ubicación | AT Relacionado |
|:--------|:------------|:---------|:----------|:---------------|
| **CCO** | Centro de Control Operacional | 1 centro principal | Por definir (ver AT1) | AT1, AT2 |
| **SCADA Vial** | Sistema de Supervisión y Control | 1 sistema integrado | CCO | AT2, AT4 |
| **Videowall** | Muro de visualización | Por definir | CCO | AT2 |
| **Puestos Operador** | Consolas de operación | Por definir | CCO | AT2 |
| **Servidores** | Almacenamiento y procesamiento | Por definir | CCO | AT2 |
| **SIG** | Sistema de Información Geográfica | 1 sistema | CCO | AT2 |
| **SICC** | Sistema Informático de Contabilización y Control | 1 sistema | CCO | AT2, AT4 |

**Funciones del CCO:**
- Monitoreo 24/7 de toda la vía
- Gestión de incidentes y emergencias
- Control de tráfico y peajes
- Información a usuarios
- Coordinación con Policía de Carreteras
- Disponibilidad: 99% mensual

---

### 3.5 TELECOMUNICACIONES

| Sistema | Descripción | Cantidad Estimada | Ubicación | AT Relacionado |
|:--------|:------------|:------------------|:----------|:---------------|
| **Fibra Óptica** | Red troncal de comunicaciones | ~259.6 km + 10% reserva | A lo largo del corredor | AT2 |
| **Canalizaciones** | Ductos para fibra óptica | ~259.6 km | Paralelo a la vía | AT2 |
| **ODFs** | Distribuidores de Fibra Óptica | Por definir | Puntos de agregación | AT2 |
| **Red de Datos** | Switches, routers | Por definir | Peajes, CCO, estaciones | AT2 |
| **Telefonía IP** | Sistema de voz sobre IP | 1 sistema | Todo el corredor | AT2 |
| **Radio** | Sistema de comunicación vial | Por definir | Bases de operación | AT2 |

**Especificaciones:**
- Disponibilidad: 99% mensual
- Tecnología de punta (evitar obsolescencia)
- Integración completa ITS → CCO

---

### 3.6 ILUMINACIÓN

| Sistema | Descripción | Cantidad Estimada | Ubicación | AT Relacionado |
|:--------|:------------|:------------------|:----------|:---------------|
| **Iluminación Peajes** | Sistema de alumbrado LED | Todas las estaciones | Estaciones de peaje (400m cada sentido) | AT2 |
| **Iluminación Áreas Servicio** | Alumbrado exterior | Todas las áreas | Áreas de servicio | AT2 |
| **Iluminación Intersecciones** | A nivel y desnivel | Por definir | Intersecciones | AT2 |
| **Iluminación Túneles** | Sistema especial túneles | Si aplica | Túneles (si hay) | AT2 |
| **Control Iluminación** | Sistema automático centralizado | 1 sistema | CCO + control local | AT2 |

---

### 3.7 SEÑALIZACIÓN VIAL

| Sistema | Descripción | Cantidad Estimada | Ubicación | AT Relacionado |
|:--------|:------------|:------------------|:----------|:---------------|
| **Señalización Vertical** | Señales retroreflectivas tipo XI | Por definir | Todo el corredor | AT2, AT3 |
| **Demarcación Horizontal** | Pintura termoplástica retroreflectiva | ~259.6 km × 2 | Toda la calzada | AT2, AT3 |
| **Defensas Metálicas** | Barreras de seguridad perfil U | Por definir | Zonas de riesgo | AT2, AT3 |
| **Barreras Concreto** | Separadores rígidos | Por definir | Según diseño | AT2 |
| **Tachas Reflectivas** | Delineadores | Por definir | Todo el corredor | AT2 |
| **Amortiguadores Impacto** | Protección en puntos fijos | Por definir | Pilas, muros, obstáculos | AT2 |

**Normativa:**
- Manual de Señalización Vial (Resolución 1885/2015)
- Guía Técnica Zonas Laterales Vías Más Seguras
- NTC 4739 (reflectividad)

---

### 3.8 SISTEMAS DE EMERGENCIA Y ATENCIÓN

| Sistema | Descripción | Cantidad Mínima | Ubicación | AT Relacionado |
|:--------|:------------|:----------------|:----------|:---------------|
| **Bases de Operación** | Centros de atención de emergencias | Mínimo 2 bases | Distribuidas en el corredor | AT2 |
| **Ambulancias TAM** | Traslado Asistencial Medicalizado | Mínimo 1 por base | Bases de operación | AT2 |
| **Grúas Pesadas** | Para vehículos grandes | Mínimo 1 por base | Bases de operación | AT2 |
| **Grúas Livianas** | Para vehículos pequeños | Mínimo 1 por base | Bases de operación | AT2 |
| **Carrotaller** | Auxilio mecánico | Mínimo 1 por base | Bases de operación | AT2 |
| **Cama Baja** | Transporte de vehículos grandes | Mínimo 1 total | Cualquier base | AT2 |
| **Vehículos Vigilancia** | Patrullaje 24/7 | Mínimo 1 por base | Bases de operación | AT2 |
| **Equipos de Rescate** | Herramientas especializadas | Por base | Ver Tabla 2 AT2 | AT2 |

**Equipamiento Médico (TAM):**
- Personal: 1 médico, 1 auxiliar enfermería, 1 conductor
- Equipos: Según normativa Ministerio de Salud
- Disponibilidad: 24/7/365

---

### 3.9 ÁREAS DE SERVICIO

| Componente | Descripción | Cantidad | Ubicación | AT Relacionado |
|:-----------|:------------|:---------|:----------|:---------------|
| **Áreas de Servicio** | Zonas de descanso y servicios | Por definir (ver AT1) | Distribuidas en el corredor | AT1, AT2 |
| **Taller Mecánico** | Servicio 24/7 | 1 por área | Todas las áreas | AT2 |
| **Servicios Sanitarios** | Baños públicos | 1 por área | Todas las áreas | AT2 |
| **Restaurante/Cafetería** | Alimentación | 1 por área | Todas las áreas | AT2 |
| **Estación de Servicio** | Combustible (opcional) | Variable | Según explotación comercial | AT2 |
| **Servicios Públicos** | Agua, energía, telecomunicaciones | Todas | Todas las áreas | AT2 |

---

### 3.10 INFRAESTRUCTURA VIAL

| Elemento | Descripción | Cantidad Estimada | Ubicación | AT Relacionado |
|:---------|:------------|:------------------|:----------|:---------------|
| **Calzadas** | Pavimento flexible/rígido | 259.6 km (total) | Todo el corredor | AT1, AT2, AT3 |
| **Puentes** | Estructuras de paso | Por definir (ver AT1) | Según diseño | AT1, AT2, AT3 |
| **Túneles** | Si aplica | Por definir (ver AT1) | Según diseño | AT1, AT2 |
| **Intercambios** | A desnivel | Por definir (ver AT1) | Según diseño | AT1, AT3 |
| **Intersecciones** | A nivel | Por definir (ver AT1) | Según diseño | AT1, AT3 |
| **Drenajes** | Cunetas, alcantarillas, box culvert | Por definir | Todo el corredor | AT2, AT3 |
| **Obras de Estabilización** | Muros, gaviones, anclajes | Por definir | Según geotecnia | AT2, AT3 |

---

### 3.11 SISTEMAS DE INFORMACIÓN Y COMUNICACIÓN

| Sistema | Descripción | Cantidad | Ubicación | AT Relacionado |
|:--------|:------------|:---------|:----------|:---------------|
| **Página Web** | Portal de información al usuario | 1 sitio web | Online | AT2 |
| **Emisora de Radio** | Información al usuario | 1 emisora FM | Cobertura total del corredor | AT2 |
| **Boletín Trimestral** | Publicación impresa | Trimestral | Distribución a usuarios | AT2 |
| **SICC** | Sistema Informático de Contabilización y Control | 1 sistema | CCO → ANI/Interventoría | AT2, AT4 |
| **SIG** | Sistema de Información Geográfica | 1 sistema | CCO | AT2 |
| **Plataforma ANIscopio** | Integración con ANI | 1 conexión | CCO | AT2 |

---

### 3.12 SISTEMAS DE ENERGÍA

| Sistema | Descripción | Cantidad Estimada | Ubicación | AT Relacionado |
|:--------|:------------|:------------------|:----------|:---------------|
| **Subestaciones** | Alimentación eléctrica | Por definir | Peajes, CCO, estaciones | AT2, AT3 |
| **UPS** | Energía ininterrumpida | Por estación | Peajes, CCO, ITS | AT2 |
| **Generadores** | Respaldo de emergencia | Por estación crítica | Peajes, CCO | AT2 |
| **Acometidas** | Conexiones eléctricas | Por instalación | Todas las edificaciones | AT2 |

---

### 3.13 EDIFICACIONES

| Edificación | Descripción | Cantidad | Ubicación | AT Relacionado |
|:------------|:------------|:---------|:----------|:---------------|
| **CCO** | Centro de Control Operacional | 1 edificio | Por definir (ver AT1) | AT1, AT2 |
| **Casetas de Peaje** | Infraestructura de recaudo | Por estación | Estaciones de peaje | AT2 |
| **Bases de Operación** | Centros de atención emergencias | Mínimo 2 | Distribuidas | AT2 |
| **Áreas de Servicio** | Edificaciones de servicios | Por definir (ver AT1) | Distribuidas | AT1, AT2 |
| **CAV** | Centros de Atención al Usuario | Por definir | Por confirmar | AT2 |
| **Estaciones de Pesaje** | Edificios administrativos | Por estación | Estaciones de pesaje | AT2 |
| **Casetas de Policía** | Instalaciones para autoridades | Por estación de peaje | Peajes y CCO | AT2 |

---

## 4. MATRIZ DE TRAZABILIDAD CONTRACTUAL

| Sistema | AT Principal | Cláusula/Sección Contrato | Requisito Clave | Indicador (AT4) |
|:--------|:-------------|:--------------------------|:----------------|:----------------|
| **ITS Global** | AT2 | Sección 3.3.5.1 | Sistema de Control de Tráfico | O3, O4, E11, E12 |
| **Peajes** | AT2 | Sección 3.3.4 | Recaudo y control | E11, E12, O3, O3-1 |
| **CCO** | AT2 | Sección 3.3.11.1 | Centro de Control Operacional | Múltiples |
| **CCTV** | AT2 | Sección 3.3.5.1 | Circuito Cerrado TV | Disponibilidad 99% |
| **Pesaje** | AT2 | Sección 3.3.9 | Sistemas de Pesaje | Por definir |
| **Telecomunicaciones** | AT2 | Sección 3.3.11.2 | Fibra óptica + comunicaciones | Disponibilidad 99% |
| **Iluminación** | AT2 | Sección 6.3.4 | Iluminación vial | E14 |
| **Señalización Vertical** | AT2, AT3 | Sección 6.3.2.1 | Reflectividad 80% tipo XI | E11 |
| **Señalización Horizontal** | AT2, AT3 | Sección 6.3.2.2 | Demarcación continua | E12 |
| **Emergencias** | AT2 | Sección 3.3.3.1 | Atención incidentes/accidentes | O4, O5, O7, O8 |
| **Áreas de Servicio** | AT1, AT2 | Sección 3.3.3.4 | Servicios obligatorios | E8 |
| **Seguridad Vial** | AT2 | Sección 3.3.8 | SGSV (Sistema Gestión Seguridad Vial) | O1 (Mortalidad) |

---

## 5. INTERFACES ENTRE SISTEMAS

### 5.1 Interfaces Críticas

| Interface ID | Sistema A | Sistema B | Tipo | Protocolo/Medio | Descripción |
|:-------------|:----------|:----------|:-----|:----------------|:------------|
| **IF-001** | CCTV | CCO | Red de Datos | IP/Fibra Óptica | Video en tiempo real (mínimo 10 fps, 320x240) |
| **IF-002** | PMV | CCO | Red de Datos | IP/Fibra Óptica | Control de mensajes variables |
| **IF-003** | WIM/Pesaje | CCO | Red de Datos | IP/Fibra Óptica | Datos de peso en tiempo real |
| **IF-004** | Peajes | CCO | Red de Datos | IP/Fibra Óptica | Tráfico y recaudo (1 reporte/hora) |
| **IF-005** | Fibra Óptica | Todos | Física | Fibra monomodo | Backbone de comunicaciones |
| **IF-006** | SICC | ANI | Web/API | HTTPS | Información contractual en tiempo real |
| **IF-007** | SIG | CCO | Software | Base de datos | Georreferenciación de activos |
| **IF-008** | Meteo | CCO | Red de Datos | IP/Fibra Óptica | Condiciones climáticas (1 reporte/hora) |
| **IF-009** | SOS | CCO | Telefonía | VoIP | Llamadas de emergencia |
| **IF-010** | Iluminación | CCO | Control | Protocolo industrial | Encendido/apagado centralizado |

---

## 6. SISTEMAS NO APLICABLES (ELIMINADOS DE PROYECTO FÉRREO)

| Sistema Férreo | Razón de Exclusión |
|:---------------|:-------------------|
| ❌ **CTC** (Control de Tráfico Centralizado) | Específico para control ferroviario |
| ❌ **ETCS Level 2 / ITCS / ATP** | Señalización ferroviaria automática |
| ❌ **Material Rodante** | Locomotoras y vagones - no aplica en vehícular |
| ❌ **Desvíos Ferroviarios** | Infraestructura férrea |
| ❌ **RBC** (Radio Block Center) | Control ferroviario |
| ❌ **Balizas ETCS** | Señalización ferroviaria |
| ❌ **Radio TETRA Ferroviario** | Sistema de radio específico para trenes |
| ❌ **Enclavamientos** | Control de agujas ferroviarias |

---

## 7. SISTEMAS AGREGADOS (NUEVOS EN VEHÍCULAR)

| Sistema Vehicular | Descripción | Prioridad |
|:------------------|:------------|:----------|
| ✅ **Pesaje Dinámico (WIM)** | Pesaje sin detención en carriles de peaje | Alta |
| ✅ **TAG/Telepeaje** | Recaudo electrónico automático | Alta |
| ✅ **Control de Velocidad (Radares)** | Monitoreo de velocidad para seguridad | Media |
| ✅ **Detectores de Altura** | Protección de puentes y túneles | Alta |
| ✅ **Sistema SGSV** | Gestión de Seguridad Vial | Alta |
| ✅ **Emisora de Radio FM** | Información al usuario | Media |
| ✅ **Paraderos Transporte Público** | Infraestructura para buses | Baja |

---

## 8. ESTIMACIÓN PRELIMINAR DE CANTIDADES

### 8.1 Por Kilómetro de Vía

| Elemento | Estimación | Base de Cálculo |
|:---------|:-----------|:----------------|
| **Señales verticales** | 20-30 señales/km | Proyecto típico vehicular |
| **Cámaras CCTV** | 1-2 cámaras/km | Zonas críticas |
| **Teléfonos SOS** | 1 cada 2-3 km | Normativa típica |
| **PMV** | 1 cada 20-30 km | Puntos estratégicos |
| **Estaciones Meteo** | 1 cada 30-50 km | Cobertura climática |
| **Cajas FO** | 1 cada 0.5-1 km | Empalmes de fibra |

**Total Estimado (259.6 km):**
- Señales verticales: ~5,000-7,500 unidades
- CCTV: ~130-260 cámaras
- SOS: ~90-130 postes
- PMV: ~9-13 paneles
- Meteo: ~5-9 estaciones
- Cajas FO: ~260-520 cajas

---

## 9. PRESUPUESTO PRELIMINAR (CAPEX)

| Sistema | Estimación Preliminar (USD) | % Total | Prioridad |
|:--------|:---------------------------|:--------|:----------|
| **ITS Completo** | Por estimar | 10-15% | Alta |
| **Peajes** | Por estimar | 8-12% | Alta |
| **CCO** | Por estimar | 3-5% | Alta |
| **Telecomunicaciones** | Por estimar | 5-8% | Alta |
| **Iluminación** | Por estimar | 2-4% | Media |
| **Señalización** | Por estimar | 3-5% | Alta |
| **Emergencias** | Por estimar | 2-3% | Alta |
| **TOTAL SISTEMAS** | **Por estimar** | **~35-55%** | - |

**Nota:** Porcentajes sobre inversión total de sistemas (excluyendo obras civiles)

---

## 10. RIESGOS IDENTIFICADOS

| ID | Riesgo | Probabilidad | Impacto | Mitigación |
|:---|:-------|:-------------|:--------|:-----------|
| **R-SIS-001** | Obsolescencia tecnológica durante concesión | Media | Alto | Especificar tecnología actualizable |
| **R-SIS-002** | Vandalismo de equipos en campo | Alta | Medio | Carcasas antivandalismo IK10, CCTV |
| **R-SIS-003** | Falla de comunicaciones (fibra cortada) | Media | Alto | Redundancia en anillo |
| **R-SIS-004** | No cumplir indicadores de disponibilidad 99% | Media | Alto | Redundancia N+1 en sistemas críticos |
| **R-SIS-005** | Interoperabilidad de peajes | Baja | Alto | Cumplir resoluciones vigentes |
| **R-SIS-006** | Cambios normativos durante concesión | Alta | Medio | Cláusula de adaptación contractual |

---

## 11. PRÓXIMOS PASOS

### 11.1 Fase Inmediata (Semana 3-4)
- [ ] **Aplicar Template T01** a cada sistema identificado
- [ ] **Cuantificar sistemas** con información de AT1 (alcance)
- [ ] **Estimar CAPEX/OPEX** preliminar por sistema
- [ ] **Identificar proveedores** preliminares

### 11.2 Fase Siguiente (Mes 2)
- [ ] **Aplicar Template T02** (Análisis de Requisitos) a sistemas críticos
- [ ] **Crear matriz de interfaces** detallada
- [ ] **Desarrollar arquitectura conceptual** (Template T03)
- [ ] **Solicitar cotizaciones** preliminares

---

## 12. SISTEMAS IDENTIFICADOS - RESUMEN

**Total de Sistemas Principales:** 13 categorías

| # | Categoría | Sistemas Incluidos | Estado |
|:--|:----------|:-------------------|:-------|
| 1 | **ITS** | PMV, CCTV, WIM, Meteo, SOS, DAI, Aforo, Radares, Detectores | ✅ Identificado |
| 2 | **Peajes** | Manual, Semiautomático, TAG, Básculas, Cámaras, Sensores | ✅ Identificado |
| 3 | **Pesaje** | Fijas, Dinámicas, Móviles | ✅ Identificado |
| 4 | **CCO** | SCADA, Videowall, Servidores, SIG, SICC | ✅ Identificado |
| 5 | **Telecomunicaciones** | Fibra, Radio, Datos, Telefonía IP | ✅ Identificado |
| 6 | **Iluminación** | Peajes, Áreas, Intersecciones, Túneles | ✅ Identificado |
| 7 | **Señalización** | Vertical, Horizontal, Defensas, Barreras, Tachas | ✅ Identificado |
| 8 | **Emergencias** | Ambulancias, Grúas, Carrotaller, Rescate | ✅ Identificado |
| 9 | **Áreas de Servicio** | Talleres, Sanitarios, Restaurantes | ✅ Identificado |
| 10 | **Información** | Web, Radio, Boletín, SICC, SIG | ✅ Identificado |
| 11 | **Energía** | Subestaciones, UPS, Generadores | ✅ Identificado |
| 12 | **Infraestructura** | Calzadas, Puentes, Túneles, Drenajes | ✅ Identificado |
| 13 | **Edificaciones** | CCO, Peajes, Bases, CAV | ✅ Identificado |

---

## 13. REFERENCIAS CONTRACTUALES

### Apéndices Técnicos Clave:
- **AT1:** Alcance del Proyecto (longitud, unidades funcionales, infraestructura)
- **AT2:** Operación y Mantenimiento (sistemas operativos, servicios obligatorios)
- **AT3:** Especificaciones Generales (normativa técnica, materiales)
- **AT4:** Indicadores de Desempeño (KPIs de disponibilidad, calidad, servicio)

### Normativa Aplicable Identificada:
- INVIAS (Especificaciones, Manuales)
- Resolución 1885/2015 (Señalización Vial)
- Resoluciones 4303/2015, 5708/2016, 546/2018, 883/2019, 509/2020 (Interoperabilidad Peajes)
- Resolución 0718/2018 (Detección infracciones)
- ISO 9001:2015, ISO 14001:2015, ISO 45001:2018 (Gestión Integral)
- Norma Colombiana de Diseño de Puentes CCP-2014
- AASHTO (Diseño carretero)

---

## 14. CONTROL DE VERSIONES

| Versión | Fecha | Responsable | Descripción |
|:---:|:---:|:---|:---|
| **v1.0** | 16/10/2025 | Administrador Contractual EPC | Versión inicial - Identificación de sistemas desde AT1-AT4 |
| **v1.1** | 22/10/2025 | Administrador Contractual EPC | ✅ **Revisión con información oficial:** Longitudes 259.6 km + 33.4 km, rutas RN 4510, RN 4511, RN 4513 |

---

**Estado del documento:** ✅ Listado Maestro Completado v1.1  
**Próxima actualización:** Al completar cuantificación detallada (Semana 3-4)  
**Versión:** 1.1  
**Responsable:** Administrador Contractual EPC

---

**✅ REVISADO CON INFORMACIÓN OFICIAL DEL PROYECTO**
- Longitudes validadas: 259.6 km principal + 33.4 km adicionales
- Rutas específicas: RN 4510, RN 4511, RN 4513
- Cobertura actualizada con información oficial
- Metodología PKD lineal aplicada

---

**Fin del documento - Listado Maestro de Sistemas Vehiculares**  
*Metodología Punto 42 v1.0*  
*Proyecto APP Puerto Salgar - Barrancabermeja*

