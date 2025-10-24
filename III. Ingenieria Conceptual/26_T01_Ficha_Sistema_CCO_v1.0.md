# T01: FICHA DE SISTEMA - CCO (CENTRO DE CONTROL OPERACIONAL)
## Proyecto APP Puerto Salgar - Barrancabermeja

**Fecha:** 16/10/2025  
**Sistema:** CCO - Centro de Control Operacional  
**Responsable:** Ingeniero de Centro de Control  
**Versión:** 1.0  

---

## 1. IDENTIFICACIÓN DEL SISTEMA

| Campo | Valor |
|-------|-------|
| **Nombre del sistema** | CCO - Centro de Control Operacional |
| **Categoría** | Sistema de Supervisión y Control Centralizado |
| **Prioridad** | 🔴 Crítica |
| **Fase contractual** | Construcción y O&M |
| **AT relacionados** | AT2 (Secciones 3.3.5.1, 3.3.4.6, 4.1), AT4 (Indicadores) |

---

## 2. DESCRIPCIÓN GENERAL

### 2.1 Propósito del Sistema

El Centro de Control Operacional (CCO) es el **corazón operativo del proyecto**, centralizado y funcionando 24/7/365, con los siguientes objetivos:

- **Supervisión en tiempo real** de todos los sistemas del corredor
- **Control y gestión** del tráfico vehicular
- **Monitoreo de recaudos** de todas las Estaciones de Peaje
- **Coordinación de emergencias** y atención de incidentes
- **Gestión de información** hacia ANI, Interventoría y Policía de Carreteras
- **Toma de decisiones operacionales** basadas en datos
- **Almacenamiento inviolable** de toda la información operacional

### 2.2 Alcance del Sistema

**Sistemas integrados en el CCO:**
- ✅ SCADA Vial (Supervisión y Adquisición de Datos)
- ✅ Videowall para visualización
- ✅ Puestos de Operador (24/7/365)
- ✅ Servidores y Storage (bases de datos)
- ✅ Sistema de Información Geográfica (SIG)
- ✅ Sistema de Información al Cliente y Comunidad (SICC)
- ✅ Interface con ANI (SIINCO, ANIscopio)
- ✅ Interface con Policía de Carreteras
- ✅ Sistema de Gestión de Incidentes
- ✅ Sistema de Respaldo (UPS, Generadores, Redundancia)

**Cobertura operacional:**
- Supervisión total: 259.6 km principales + 33.4 km adicionales (RN 4510, RN 4511, RN 4513)
- Ubicación del CCO: La Lizama PK 4+300 (RN 4513) - Conexión al proyecto principal
- Monitoreo de: 2 Estaciones de Peaje (Zambito, Aguas Negras)
- Monitoreo de: 30 cámaras CCTV
- Monitoreo de: 28 PMV
- Monitoreo de: 1 Estación WIM bidireccional
- Monitoreo de: 3 Estaciones Meteorológicas
- Monitoreo de: 88 postes SOS
- Monitoreo de: 16 ETD/RADAR
- Monitoreo de: 11 Radares de Velocidad
- Monitoreo de: 8 Detectores de Altura (Gálibos)
- Monitoreo de: Todos los sistemas ITS, Peajes, Telecomunicaciones

**Integración con:**
- **Todos los sistemas del proyecto** (ITS, Peajes, Telecomunicaciones, Emergencias, etc.)
- **CCO ubicado en La Lizama PK 4+300** - Centro de mando del corredor
- **ANI:** Envío de información operacional y financiera
- **Interventoría:** Acceso a información en cualquier momento
- **Policía de Carreteras:** Coordinación de incidentes y emergencias

---

## 3. REQUISITOS CONTRACTUALES

### 3.1 Obligaciones del Contrato

**Según AT2, Sección 3.3.5.1 - Sistema de Control de Tráfico:**

El Centro de Control de Operaciones deberá:

1. **Recibir información en tiempo real** de:
   - Sistemas de Control de Tráfico
   - Estaciones de Peaje (recaudos y tráfico)
   - Cámaras CCTV
   - Estaciones Meteorológicas
   - WIM, SOS, DAI, y todos los sensores

2. **Registrar de forma inviolable e integral:**
   - Todas las informaciones captadas
   - Todas las acciones adoptadas en respuesta
   - Base de datos de monitoreo de procesos gerenciales
   - Coordinación operacional

3. **Proporcionar acceso** a la información:
   - ANI o sus representantes: en cualquier momento
   - Interventoría: permanentemente
   - Compatible con SIINCO y otros instrumentos metodológicos ANI

4. **Coordinar operación del corredor:**
   - Planificación estratégica
   - Control operacional
   - Respuesta ante incidentes/emergencias

5. **Disponibilidad:**
   - Operación 24/7/365
   - Disponibilidad de equipos: ≥ 99% anual (por analogía con ITS)

**Según AT2, Sección 3.1.7 - Disponibilidad de la Información:**

- Información siempre disponible para Interventor, ANI, Policía, Usuarios
- Mecanismos de interoperabilidad según AT4
- Seguridad de la información (confidencialidad e integridad)
- Infraestructura TI cubre: Peajes, Pesaje, Áreas de Servicio, CCO

### 3.2 Requisitos de Apéndices Técnicos

**AT2:**
- CCO debe estar integrado con todos los sistemas
- Transmisión en tiempo real
- Almacenamiento y backup de información
- Interoperabilidad con sistemas ANI

**AT4 (Indicadores - Por validar):**
- Disponibilidad del CCO
- Tiempo de respuesta ante incidentes
- Calidad de información entregada

### 3.3 Normativa Aplicable

| Norma | Descripción | Alcance |
|:------|:------------|:--------|
| **ISO 27001** | Seguridad de la Información | Gestión de información sensible |
| **ISO 9001:2015** | Sistema de Gestión de Calidad | Procesos operacionales |
| **TIA-942** | Estándares de Data Center | Diseño del CCO (Tier II mínimo) |
| **NFPA 75** | Protección de Equipos TI | Sistemas contra incendio |
| **ASHRAE 90.1** | Eficiencia Energética | HVAC del CCO |
| **RETIE** | Reglamento Técnico de Instalaciones Eléctricas | Instalaciones eléctricas Colombia |

---

## 4. COMPONENTES PRINCIPALES

| Componente | Cantidad Estimada | Ubicación | Función |
|:-----------|:------------------|:----------|:--------|
| **Videowall** | 1 sistema (16-32 pantallas) | Sala de Control CCO | Visualización de CCTV, mapas, datos |
| **Puestos de Operador** | 6-10 puestos | Sala de Control CCO | Operadores 24/7 (turnos) |
| **Servidores SCADA** | 4-6 servidores (redundantes) | Sala de Servidores | Sistema SCADA Vial |
| **Servidores NVR (CCTV)** | 4-6 servidores | Sala de Servidores | Grabación de video |
| **Servidores de BD** | 4-6 servidores | Sala de Servidores | Bases de datos operacionales |
| **Storage/SAN** | 200-500 TB | Sala de Servidores | Almacenamiento (video, datos, históricos) |
| **Switches Core** | 4-6 switches (redundantes) | Sala de Comunicaciones | Conectividad de red |
| **Routers** | 2-4 routers | Sala de Comunicaciones | Conectividad WAN |
| **Firewalls** | 2-4 firewalls (redundantes) | Sala de Comunicaciones | Seguridad de red |
| **UPS** | 2 sistemas (N+1) | Sala de UPS | Energía ininterrumpida (30 min) |
| **Generador** | 1 sistema (300 kW) | Sala de Generador | Energía de emergencia (48h) |
| **Sistema HVAC** | 1 sistema | Sala de Servidores | Climatización (Tier II) |
| **Sistema Contra Incendio** | 1 sistema | Todo el CCO | Protección NFPA 75 |
| **Sistema de Seguridad** | 1 sistema | Todo el CCO | Control de acceso, CCTV interno |
| **Generadores Diésel** | 2 unidades (N+1) | Exterior CCO | Energía de respaldo (72 horas) |
| **HVAC** | 2-3 sistemas (redundantes) | Todo el CCO | Climatización (18-24°C) |
| **Software SCADA Vial** | 1 licencia | Servidores | Supervisión y control |
| **Software SIG** | 1 licencia | Servidores | Mapas y geolocalización |
| **Software SICC** | 1 licencia | Servidores | Información a clientes |
| **Edificación CCO** | 1 edificio (~500-800 m²) | Por definir ubicación | Alojamiento de equipos y personal |

**NOTA:** Cantidades sujetas a dimensionamiento en Estudios de Detalle.

---

## 5. INTERFACES CON OTROS SISTEMAS

| Sistema Relacionado | Tipo de Interface | Protocolo/Medio | Datos Intercambiados |
|:--------------------|:------------------|:----------------|:---------------------|
| **ITS (CCTV)** | Red IP | Ethernet/Fibra Óptica | Video en tiempo real (100-150 cámaras) |
| **ITS (PMV)** | Red IP | Ethernet/Fibra Óptica | Control de mensajes, estado de equipos |
| **ITS (WIM)** | Red IP | Ethernet/Fibra Óptica | Datos de pesaje, alarmas de sobrepeso |
| **ITS (Meteo)** | Red IP | Ethernet/Fibra Óptica | Datos meteorológicos |
| **ITS (SOS)** | VoIP | Ethernet/Fibra Óptica | Llamadas de emergencia |
| **ITS (DAI, Aforo, Radares)** | Red IP | Ethernet/Fibra Óptica | Detección incidentes, aforos, velocidades |
| **Peajes** | Red IP | Ethernet/Fibra Óptica | Recaudos, tráfico, clasificación vehicular |
| **Telecomunicaciones** | Física | Fibra Óptica | Backbone (todos los sistemas) |
| **Emergencias** | VoIP + Red IP | Radio + Ethernet | Coordinación de atención, despacho de equipos |
| **ANI (SIINCO)** | Red IP | Web/API HTTPS | Información operacional y financiera |
| **Interventoría** | Red IP | VPN/Acceso Web | Acceso a toda la información en cualquier momento |
| **Policía de Carreteras** | VoIP + Red IP | Radio + Ethernet | Coordinación de incidentes, información de tráfico |

---

## 6. ESTIMACIÓN PRELIMINAR

### 6.1 CAPEX (Inversión Inicial)

| Ítem | Cantidad | Costo Unitario (USD) | Costo Total (USD) |
|:-----|:---------|:---------------------|:------------------|
| Edificación CCO (500-800 m²) | 1 | $500,000 | $500,000 |
| Videowall (16 pantallas 55" 4K) | 1 sistema | $200,000 | $200,000 |
| Puestos de Operador completos | 8 | $15,000 | $120,000 |
| Servidores SCADA (redundantes) | 6 | $25,000 | $150,000 |
| Servidores NVR (video) | 6 | $30,000 | $180,000 |
| Servidores de BD | 6 | $20,000 | $120,000 |
| Storage/SAN (300 TB) | 1 sistema | $180,000 | $180,000 |
| Switches Core (redundantes) | 6 | $15,000 | $90,000 |
| Routers | 4 | $12,000 | $48,000 |
| Firewalls (redundantes) | 4 | $25,000 | $100,000 |
| UPS (120 kVA) | 2 | $60,000 | $120,000 |
| Generadores Diésel (150 kVA) | 2 | $80,000 | $160,000 |
| HVAC (Precisión) | 3 | $40,000 | $120,000 |
| Software SCADA Vial | 1 | $250,000 | $250,000 |
| Software SIG | 1 | $80,000 | $80,000 |
| Software SICC | 1 | $100,000 | $100,000 |
| Mobiliario y Accesorios | - | - | $80,000 |
| Instalación Eléctrica y Datos | - | - | $150,000 |
| Puesta en Marcha e Integración | - | - | $300,000 |
| Contingencias (10%) | - | - | $368,800 |
| **TOTAL CAPEX** | | | **$4,056,800** |

**Conversión a COP (TRM: 4,000):** ~$16,227 millones COP

### 6.2 OPEX (Operación y Mantenimiento - Anual)

| Ítem | Costo Anual (USD) |
|:-----|:------------------|
| Personal operadores CCO (8 puestos, 3 turnos) | $480,000 |
| Supervisores de turno (3 turnos) | $120,000 |
| Ingeniero de soporte TI | $80,000 |
| Mantenimiento preventivo (equipos) | $100,000 |
| Mantenimiento correctivo | $80,000 |
| Repuestos y consumibles | $100,000 |
| Licencias de software (renovación anual) | $120,000 |
| Energía eléctrica (24/7) | $60,000 |
| Internet y comunicaciones | $40,000 |
| Diésel para generadores | $30,000 |
| Servicios generales (aseo, vigilancia) | $50,000 |
| Actualizaciones tecnológicas | $60,000 |
| **TOTAL OPEX/año** | **$1,410,000** |

**Conversión a COP (TRM: 4,000):** ~$5,640 millones COP/año

---

## 7. RIESGOS IDENTIFICADOS

| Riesgo | Probabilidad | Impacto | Mitigación |
|:-------|:-------------|:--------|:-----------|
| **Falla total del CCO** | Baja | Crítico | Redundancia N+1 en todos los componentes críticos, generadores, UPS |
| **Pérdida de información** | Baja | Alto | Backup diario, storage redundante (RAID 6), backup offsite |
| **Ciberataque** | Media | Alto | Firewalls redundantes, segmentación de red, ISO 27001, auditorías |
| **Falla de energía prolongada** | Media | Alto | Generadores 72h autonomía, UPS 30 min, contrato de suministro diésel |
| **Falla de HVAC** | Media | Medio | HVAC redundante, alarmas de temperatura, apagado controlado |
| **Pérdida de personal clave** | Media | Medio | Documentación de procedimientos, capacitación continua, redundancia de roles |
| **Falta de disponibilidad 99%** | Media | Alto | Mantenimiento preventivo estricto, SLA con proveedores, repuestos en stock |
| **Incompatibilidad con sistemas ANI** | Baja | Alto | Desarrollo temprano de APIs, validación con SIINCO |

---

## 8. INDICADORES DE DESEMPEÑO (KPIs)

**Según AT2 y AT4:**

| Indicador ID | Descripción | Valor Mínimo Aceptación | Frecuencia Medición |
|:-------------|:------------|:------------------------|:--------------------|
| **DISP-CCO-01** | Disponibilidad del CCO | ≥ 99% anual | Mensual |
| **RESP-INC-01** | Tiempo de respuesta ante incidentes | ≤ 5 minutos | Por evento |
| **TRANS-ANI-01** | Transmisión de datos a ANI | 100% tiempo real (máx. 3 días si falla) | Continuo |
| **ALMAC-01** | Integridad de datos almacenados | 100% (inviolable e integral) | Continuo |
| **ACCESO-ANI-01** | Acceso de ANI/Interventoría | 100% del tiempo | Continuo |
| **UPTIME-SCADA-01** | Tiempo de actividad del SCADA | ≥ 99.5% | Mensual |

**Penalizaciones (AT4):**
- No disponibilidad del CCO: Deducciones críticas en Retribución
- Pérdida de información: Sanciones contractuales severas

---

## 9. PRÓXIMOS PASOS

- [ ] Desarrollar análisis de requisitos detallado (Template T02)
- [ ] Definir ubicación óptima del CCO (geográfica, accesibilidad)
- [ ] Dimensionar sala de control (m², puestos de operador)
- [ ] Dimensionar sala de servidores (racks, enfriamiento)
- [ ] Definir arquitectura conceptual (Template T03)
  - Arquitectura de servidores (física y virtual)
  - Topología de red interna
  - Arquitectura de storage y backup
  - Diagrama de flujo de información
- [ ] Elaborar especificaciones técnicas por componente (Template T04)
  - Especificación Videowall
  - Especificación Servidores
  - Especificación Storage
  - Especificación Software SCADA
- [ ] Estimar costos detallados con cotizaciones reales (Template T05)
- [ ] Preseleccionar proveedores:
  - Videowall: Barco, Planar, Christie
  - SCADA: Siemens, Schneider, Rockwell
  - Servidores: Dell, HP, Lenovo
  - Storage: NetApp, Dell EMC, IBM
- [ ] Definir ubicación del CCO con Interventoría
- [ ] Diseñar layout del CCO (planos arquitectónicos)

---

## 10. OBSERVACIONES Y SUPUESTOS

### 10.1 Supuestos Técnicos

- **Supuesto 1:** CCO centralizado en un solo punto (ubicación óptima por definir)
- **Supuesto 2:** Operación 24/7/365 con 3 turnos de 8 horas
- **Supuesto 3:** 6-8 operadores por turno (2 peajes, 2 ITS, 2 emergencias, 2 supervisión)
- **Supuesto 4:** Videowall de 16 pantallas 55" 4K (expandible a 24)
- **Supuesto 5:** Almacenamiento de video: 30 días mínimo (CCTV), 90 días (incidentes)
- **Supuesto 6:** Almacenamiento de datos: 5 años (transacciones, eventos)
- **Supuesto 7:** Redundancia N+1 en componentes críticos (servidores, comunicaciones, energía)
- **Supuesto 8:** Conectividad redundante: 2 enlaces de fibra óptica por rutas diferentes
- **Supuesto 9:** CCO cumple estándares de Data Center Tier II (disponibilidad 99.741%)

### 10.2 Dependencias

- **Dependencia 1:** Depende de **Telecomunicaciones** (fibra óptica redundante) para recibir datos de todos los sistemas
- **Dependencia 2:** Depende de **Energía** (red eléctrica + UPS + Generadores) para operación continua
- **Dependencia 3:** Depende de **definición de ubicación** (geográfica) del CCO
- **Dependencia 4:** Depende de **ITS, Peajes, y todos los sistemas** para tener información a monitorear
- **Dependencia 5:** Depende de **especificaciones de ANI** para interoperabilidad con SIINCO
- **Dependencia 6:** Requiere **edificación** adecuada (obra civil, arquitectura, instalaciones)

### 10.3 Restricciones

- **Restricción 1:** Disponibilidad ≥ 99% anual (crítico)
- **Restricción 2:** Transmisión en tiempo real obligatoria (máx. 3 días si falla)
- **Restricción 3:** Acceso de ANI/Interventoría en cualquier momento (obligatorio)
- **Restricción 4:** Registro inviolable e integral de información (auditoría)
- **Restricción 5:** Operación 24/7/365 sin interrupciones
- **Restricción 6:** Compatibilidad con sistemas ANI (SIINCO, ANIscopio)
- **Restricción 7:** Seguridad de la información (confidencialidad e integridad)
- **Restricción 8:** Capacidad de crecimiento (escalabilidad)

---

## 11. DEFINICIONES PENDIENTES (A resolver en Estudios de Detalle)

| Ítem | Descripción | Responsable | Plazo |
|:-----|:------------|:------------|:------|
| **Ubicación del CCO** | Definir ubicación geográfica óptima | Gerente de Proyecto + ANI | Fase Preoperativa |
| **Dimensionamiento** | m² de CCO, número de operadores | Ing. CCO | Ingeniería Básica |
| **Arquitectura de servidores** | Física vs. Virtual, dimensionamiento | Ing. TI | Ingeniería Básica |
| **Protocolos con ANI** | APIs, formatos de datos, frecuencias | Ing. Software + ANI | Fase Preoperativa |
| **Software SCADA** | Selección de plataforma específica | Ing. CCO | Post-cotizaciones |
| **Capacidad de storage** | Dimensionamiento según retención | Ing. TI | Ingeniería Básica |

---

## 12. REFERENCIAS CRUZADAS

### Documentos Relacionados:
- [AT1 - Alcance del Proyecto](../II.%20Apendices%20Tecnicos/AT1_Alcance_Proyecto_v1.0.md) - Ubicación de CCO
- [AT2 - Operación y Mantenimiento](../II.%20Apendices%20Tecnicos/AT2_Operacion_Mantenimiento_v1.0.md) - Secciones 3.3.5.1, 3.1.7, 4.1
- [AT4 - Indicadores](../II.%20Apendices%20Tecnicos/AT4_Indicadores_v1.0.md) - KPIs del CCO
- [T01 - Sistema ITS](24_T01_Ficha_Sistema_ITS_v1.0.md) - Sistema principal que monitorea
- [T01 - Sistema Peajes](25_T01_Ficha_Sistema_Peajes_v1.0.md) - Sistema de recaudo que supervisa
- [Listado Maestro de Sistemas](23_ListadoMaestro_Sistemas_Vehiculares_v1.0.md) - Categoría 4 (CCO)

### Próximos Documentos a Crear:
- `40_T02_Analisis_Requisitos_CCO_v1.0.md` - Análisis detallado
- `41_T03_Arquitectura_CCO_v1.0.md` - Arquitectura conceptual
- `42_T04_Especificacion_Videowall_v1.0.md` - Especificación Videowall
- `43_T04_Especificacion_SCADA_v1.0.md` - Especificación SCADA
- `44_T04_Especificacion_Servidores_v1.0.md` - Especificación Servidores
- `45_T05_Estimacion_Costos_CCO_v1.0.md` - Estimación detallada

---

## 13. CHANGELOG

| Versión | Fecha | Autor | Descripción |
|:-------:|:------|:------|:------------|
| **v1.0** | 16/10/2025 | Administrador Contractual EPC | Versión inicial - Ficha de Sistema CCO creada con Template T01 |
| **v1.1** | 22/10/2025 | Administrador Contractual EPC | **Revisión con información oficial:** Ubicación La Lizama PK 4+300, cantidades actualizadas, cobertura completa |

---

**Versión:** 1.1 ✅ **REVISADO CON INFORMACIÓN OFICIAL DEL PROYECTO**  
**Estado:** ✅ Ficha de Sistema Completada + Ubicación Oficial Confirmada  
**Fecha:** 22/10/2025  
**Responsable:** Ingeniero de Centro de Control  
**Próxima actualización:** Tras Estudios de Detalle (dimensionamiento final)

---

**✅ REVISADO CON INFORMACIÓN OFICIAL DEL PROYECTO**
- Ubicación confirmada: La Lizama PK 4+300 (RN 4513)
- Cobertura actualizada: 259.6 km principal + 33.4 km adicionales
- Cantidades validadas contra información oficial
- Sistemas monitoreados actualizados con datos reales
- Metodología PKD lineal aplicada

---

**Fin del documento - T01 Sistema CCO**  
*Metodología Punto 42 v1.0*  
*Proyecto APP Puerto Salgar - Barrancabermeja*

