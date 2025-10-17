# T01: FICHA DE SISTEMA - TELECOMUNICACIONES
## Proyecto APP Puerto Salgar - Barrancabermeja

**Fecha:** 16/10/2025  
**Sistema:** Telecomunicaciones  
**Responsable:** Ingeniero de Telecomunicaciones  
**Versión:** 1.0  

---

## 1. IDENTIFICACIÓN DEL SISTEMA

| Campo | Valor |
|-------|-------|
| **Nombre del sistema** | Sistema de Telecomunicaciones del Corredor |
| **Categoría** | Infraestructura de Comunicaciones |
| **Prioridad** | 🔴 Crítica (Backbone de todos los sistemas) |
| **Fase contractual** | Construcción y O&M |
| **AT relacionados** | AT2 (implícito en comunicaciones), AT4 (Indicadores) |

---

## 2. DESCRIPCIÓN GENERAL

### 2.1 Propósito del Sistema

El Sistema de Telecomunicaciones es el **backbone crítico** que interconecta todos los sistemas del proyecto, proporcionando:

- **Conectividad de fibra óptica** a lo largo de los 259.6 km del corredor
- **Transmisión en tiempo real** de datos de ITS, CCTV, Peajes al CCO
- **Comunicaciones de voz** (VoIP) para emergencias y operación
- **Red de datos** para gestión operacional
- **Conectividad con ANI** para envío de información
- **Redundancia y disponibilidad** ≥ 99% para garantizar operación continua

### 2.2 Alcance del Sistema

**Sistemas incluidos:**
- ✅ Red Troncal de Fibra Óptica (~260 km + reserva técnica 10%)
- ✅ Radio Troncalizado (Bases de Emergencia, Patrullas, CCO)
- ✅ Telefonía IP (VoIP)
- ✅ Red de Datos Ethernet/IP
- ✅ Equipos de Comunicación (Switches, Routers, ODF)
- ✅ Enlaces de Respaldo (Microondas, 4G/5G)
- ✅ Sistema de Gestión de Red
- ✅ Canalización y Ductos

**Cobertura geográfica:**
- Longitud total: 259.6 km (Puerto Salgar - San Roque)
- Estimación fibra óptica: ~285 km (259.6 km + 10% reserva técnica)
- Topología: Anillo redundante en secciones críticas
- Departamentos: Cundinamarca, Boyacá, Santander

**Integración con:**
- **ITS:** Conectividad de CCTV, PMV, WIM, Meteo, SOS, DAI, Aforo, Radares (100+ equipos)
- **Peajes:** Conectividad de 8-12 Estaciones de Peaje (3 niveles de red)
- **CCO:** Hub central de todas las comunicaciones
- **Emergencias:** Radio troncalizado, telefonía IP
- **ANI:** Enlaces de datos para envío de información

---

## 3. REQUISITOS CONTRACTUALES

### 3.1 Obligaciones del Contrato

**Según AT2 (implícito en Secciones 3.3.5.1, 3.3.4.6, 3.1.7):**

El Concesionario deberá:

1. **Proporcionar conectividad en tiempo real:**
   - De todos los equipos ITS al CCO
   - De todas las Estaciones de Peaje al CCO (3 niveles)
   - Del CCO a la ANI

2. **Garantizar transmisión de datos:**
   - Tiempo real preferiblemente
   - Máximo 3 días en caso de interrupción (almacenamiento local + retransmisión)

3. **Interoperabilidad:**
   - Compatible con sistemas ANI (SIINCO, ANIscopio)
   - Protocolos estándar (TCP/IP, Ethernet)

4. **Disponibilidad:**
   - ≥ 99% anual (por analogía con otros sistemas críticos)
   - Redundancia en secciones críticas

5. **Comunicaciones de emergencia:**
   - VoIP para teléfonos SOS
   - Radio para equipos de emergencia
   - Comunicación con Policía de Carreteras

### 3.2 Requisitos de Apéndices Técnicos

**AT2, Sección 3.3.4 (Peajes):**
- Red de transmisión Nivel 1 (Carril IP/REV) → Nivel 2 (Centro de plaza) → Nivel 3 (CCO)

**AT2, Sección 3.3.5.1 (ITS):**
- Transmisión de video, datos de sensores en tiempo real
- Almacenamiento y retransmisión en caso de falla

**AT4 (Indicadores - Por validar):**
- Disponibilidad de telecomunicaciones
- Calidad de servicio (latencia, pérdida de paquetes)

### 3.3 Normativa Aplicable

| Norma | Descripción | Alcance |
|:------|:------------|:--------|
| **UIT-T G.652** | Fibra Óptica Monomodo | Especificaciones de fibra óptica |
| **TIA-568** | Cableado Estructurado | Instalaciones de red |
| **TIA-942** | Infraestructura de Data Center | Sala de comunicaciones |
| **IEEE 802.3** | Ethernet | Protocolos de red |
| **RETIE** | Reglamento Técnico Eléctrico Colombia | Instalaciones eléctricas |
| **ETSI/P.25** | Radio Troncalizado | Sistemas de radio (si aplica) |

---

## 4. COMPONENTES PRINCIPALES

| Componente | Cantidad Estimada | Ubicación | Función |
|:-----------|:------------------|:----------|:--------|
| **Fibra Óptica Monomodo** | 285 km (12-24 hilos) | A lo largo del corredor | Backbone de comunicaciones |
| **Cajas ODF (Optical Distribution Frame)** | 30-50 cajas | Puntos de agregación | Terminación y distribución de fibra |
| **Switches de Acceso** | 50-80 switches | Campo (peajes, ITS) | Conectividad local de equipos |
| **Switches de Agregación** | 10-15 switches | Puntos intermedios | Agregación de tráfico |
| **Switches Core** | 4-6 switches | CCO | Núcleo de la red |
| **Routers** | 2-4 routers | CCO | Conectividad WAN (Internet, ANI) |
| **Firewalls** | 2-4 firewalls | CCO | Seguridad de red |
| **Radio Bases** | 2-4 bases | Bases de Emergencia + CCO | Comunicación de voz móvil |
| **Radios Móviles** | 20-30 radios | Vehículos emergencia, patrullas | Comunicación en campo |
| **Centrales Telefónicas IP (PBX)** | 1-2 centrales | CCO | Gestión de telefonía |
| **Teléfonos IP** | 50-80 teléfonos | CCO, Peajes, Bases | Comunicación interna |
| **Enlaces de Respaldo** | 2-4 enlaces | Puntos críticos | Redundancia (microondas, 4G/5G) |
| **Sistema de Gestión de Red** | 1 sistema | CCO | Monitoreo y gestión (SNMP, Syslog) |
| **Canalizaciones y Ductos** | 285 km | A lo largo del corredor | Protección de fibra |
| **Cámaras de Inspección** | 500-800 cámaras | Cada 300-500 m | Acceso a ductos |

**NOTA:** Cantidades preliminares sujetas a Estudios de Detalle y topología de red.

---

## 5. INTERFACES CON OTROS SISTEMAS

| Sistema Relacionado | Tipo de Interface | Protocolo/Medio | Datos Intercambiados |
|:--------------------|:------------------|:----------------|:---------------------|
| **ITS (CCTV)** | Física + Red IP | Fibra Óptica + Ethernet | Video H.264/H.265 (100-150 cámaras × 6 Mbps) |
| **ITS (PMV, WIM, Meteo, etc.)** | Física + Red IP | Fibra Óptica + Ethernet | Datos de sensores, comandos de control |
| **Peajes** | Física + Red IP | Fibra Óptica + Ethernet (3 niveles) | Recaudos, tráfico, video |
| **CCO** | Física + Red IP | Fibra Óptica + Ethernet | Todos los datos (hub central) |
| **Emergencias** | VoIP + Radio | Fibra Óptica + RF | Voz, datos, coordinación |
| **ANI** | Red IP | Internet/VPN | Información operacional, financiera |
| **Interventoría** | Red IP | VPN/Acceso Remoto | Acceso a sistemas |
| **Iluminación, Energía, etc.** | Red IP | Ethernet | Datos de control y supervisión |

**NOTA:** Este sistema es el backbone de TODOS los demás. Sin telecomunicaciones funcionales, ningún otro sistema puede operar.

---

## 6. ESTIMACIÓN PRELIMINAR

### 6.1 CAPEX (Inversión Inicial)

| Ítem | Cantidad | Costo Unitario (USD) | Costo Total (USD) |
|:-----|:---------|:---------------------|:------------------|
| Fibra Óptica Monomodo (12 hilos) | 285 km | $8,000/km | $2,280,000 |
| Cajas ODF | 40 | $3,000 | $120,000 |
| Switches de Acceso PoE+ | 70 | $3,500 | $245,000 |
| Switches de Agregación | 12 | $12,000 | $144,000 |
| Switches Core (redundantes) | 6 | $15,000 | $90,000 |
| Routers | 4 | $12,000 | $48,000 |
| Firewalls | 4 | $25,000 | $100,000 |
| Sistema Radio Troncalizado (bases) | 3 | $50,000 | $150,000 |
| Radios Móviles | 25 | $2,500 | $62,500 |
| Central Telefónica IP (PBX) | 1 | $40,000 | $40,000 |
| Teléfonos IP | 70 | $300 | $21,000 |
| Enlaces de Respaldo (microondas) | 3 | $80,000 | $240,000 |
| Sistema de Gestión de Red | 1 | $60,000 | $60,000 |
| Canalizaciones y Ductos | 285 km | $5,000/km | $1,425,000 |
| Cámaras de Inspección (ductos) | 700 | $800 | $560,000 |
| Obra Civil (zanjas, cruces, etc.) | - | - | $800,000 |
| Instalación, Empalmes, Certificación | - | - | $600,000 |
| Integración y Puesta en Marcha | - | - | $300,000 |
| Contingencias (10%) | - | - | $628,550 |
| **TOTAL CAPEX** | | | **$7,914,050** |

**Conversión a COP (TRM: 4,000):** ~$31,656 millones COP

### 6.2 OPEX (Operación y Mantenimiento - Anual)

| Ítem | Costo Anual (USD) |
|:-----|:------------------|
| Mantenimiento preventivo (fibra, equipos) | $150,000 |
| Mantenimiento correctivo (reparaciones) | $120,000 |
| Repuestos y consumibles | $100,000 |
| Personal técnico especializado (2 técnicos) | $120,000 |
| Enlaces de Internet/WAN | $80,000 |
| Licencias de software de gestión | $30,000 |
| Energía de equipos activos | $40,000 |
| Certificaciones y pruebas (OTDR) | $30,000 |
| **TOTAL OPEX/año** | **$670,000** |

**Conversión a COP (TRM: 4,000):** ~$2,680 millones COP/año

---

## 7. RIESGOS IDENTIFICADOS

| Riesgo | Probabilidad | Impacto | Mitigación |
|:-------|:-------------|:--------|:-----------|
| **Corte de fibra óptica (accidente, obras)** | Alta | Crítico | Anillo redundante, rutas diversas, respuesta <24h |
| **Falla de switch/router crítico** | Media | Alto | Redundancia N+1, switches apilados, protocolos de failover |
| **Saturación de ancho de banda** | Media | Medio | Dimensionamiento con 30-50% de margen, QoS implementado |
| **Daño por rayo en equipos activos** | Media | Alto | Protección contra sobretensiones, puesta a tierra, UPS |
| **Robo de cable de fibra** | Media | Alto | Fibra en ducto enterrado, señalización, vigilancia CCTV |
| **Falla de enlaces WAN (Internet/ANI)** | Media | Alto | Enlaces redundantes por operadores diferentes |
| **Obsolescencia de equipos activos** | Baja | Medio | Equipos estándar (Cisco, Huawei), ciclo de renovación 5-7 años |
| **Incompatibilidad de protocolos** | Baja | Medio | Uso de estándares abiertos (Ethernet, TCP/IP, SNMP) |

---

## 8. INDICADORES DE DESEMPEÑO (KPIs)

**Según AT2 (implícito) y AT4:**

| Indicador ID | Descripción | Valor Mínimo Aceptación | Frecuencia Medición |
|:-------------|:------------|:------------------------|:--------------------|
| **DISP-TELECOM-01** | Disponibilidad de red de fibra óptica | ≥ 99% anual | Mensual |
| **DISP-EQUIPOS-01** | Disponibilidad de equipos activos | ≥ 99% | Mensual |
| **LATENCIA-01** | Latencia extremo a extremo | ≤ 50 ms | Continuo |
| **PERDIDA-PAQ-01** | Pérdida de paquetes | ≤ 0.1% | Continuo |
| **TIEMPO-REPAR-01** | Tiempo de reparación de fibra cortada | ≤ 24 horas | Por evento |
| **ANCHO-BANDA-01** | Utilización de ancho de banda | ≤ 70% (pico) | Continuo |

**Penalizaciones (AT4):**
- No disponibilidad de telecomunicaciones: Afecta a TODOS los demás sistemas

---

## 9. PRÓXIMOS PASOS

- [ ] Desarrollar análisis de requisitos detallado (Template T02)
- [ ] Definir topología de red detallada (anillo vs. lineal, puntos de redundancia)
- [ ] Realizar estudio de ruta de fibra óptica (PKs, cruces, interferencias)
- [ ] Dimensionar ancho de banda requerido:
  - CCTV: 120 cámaras × 6 Mbps = 720 Mbps
  - Datos ITS/Peajes: 100-200 Mbps
  - VoIP: 20-50 Mbps
  - Total estimado: 1-2 Gbps (considerar Ethernet 10G)
- [ ] Definir arquitectura conceptual (Template T03)
  - Topología física de fibra (mapa)
  - Arquitectura de red lógica
  - VLANs y segmentación
  - Redundancia y failover
- [ ] Elaborar especificaciones técnicas por componente (Template T04)
  - Especificación Fibra Óptica
  - Especificación Switches
  - Especificación Sistema Radio
- [ ] Estimar costos detallados con cotizaciones reales (Template T05)
- [ ] Preseleccionar proveedores:
  - Fibra: Furukawa, Corning, Prysmian
  - Switches/Routers: Cisco, Huawei, Juniper
  - Radio: Motorola, Hytera, Kenwood
- [ ] Validar rutas con Gestión Predial (servidumbres)
- [ ] Coordinar con Gestión Ambiental (permisos de paso)

---

## 10. OBSERVACIONES Y SUPUESTOS

### 10.1 Supuestos Técnicos

- **Supuesto 1:** Fibra óptica monomodo 12 hilos (6 hilos activos, 6 reserva)
- **Supuesto 2:** Topología en anillo parcial (secciones críticas) + lineal (secciones normales)
- **Supuesto 3:** Velocidad de red: Gigabit Ethernet (1 Gbps), enlaces críticos 10 Gbps
- **Supuesto 4:** Instalación subterránea en ducto (95%), aérea en puentes/viaductos (5%)
- **Supuesto 5:** Radio troncalizado digital (no análogo)
- **Supuesto 6:** VoIP sobre la misma red de fibra óptica (VLAN dedicada)
- **Supuesto 7:** Redundancia geográfica: Rutas diversas en tramos críticos
- **Supuesto 8:** Protocolos de redundancia: RSTP/MSTP (Spanning Tree), VRRP/HSRP (routers)
- **Supuesto 9:** QoS implementado: Prioridad VoIP > Video > Datos

### 10.2 Dependencias

- **Dependencia 1:** Depende de **Gestión Predial** para servidumbres y permisos de paso
- **Dependencia 2:** Depende de **Obras Civiles** para canalización y ductos
- **Dependencia 3:** Depende de **Energía** para alimentación de equipos activos
- **Dependencia 4:** Depende de **Definición de ubicaciones** de ITS, Peajes, CCO
- **Dependencia 5:** Depende de **Gestión Ambiental** para permisos de intervención
- **Dependencia 6:** Es **CRÍTICO para TODOS los demás sistemas** (backbone)

### 10.3 Restricciones

- **Restricción 1:** Disponibilidad ≥ 99% anual (crítico para operación)
- **Restricción 2:** Transmisión en tiempo real obligatoria
- **Restricción 3:** Redundancia obligatoria en secciones críticas
- **Restricción 4:** Compatibilidad con protocolos estándar
- **Restricción 5:** Canalización subterránea preferible (protección)
- **Restricción 6:** Reserva técnica mínima 10% en longitud de fibra
- **Restricción 7:** Ancho de banda dimensionado con margen 30-50%

---

## 11. DEFINICIONES PENDIENTES (A resolver en Estudios de Detalle)

| Ítem | Descripción | Responsable | Plazo |
|:-----|:------------|:------------|:------|
| **Ruta exacta de fibra** | Levantamiento topográfico de ruta | Ing. Civil + Ing. Telecom | Estudios de Detalle |
| **Puntos de agregación** | Ubicación de switches/ODF | Ing. Telecomunicaciones | Ingeniería Básica |
| **Topología de red** | Anillo, lineal, o mixta | Ing. Telecomunicaciones | Ingeniería Básica |
| **Tipo de fibra** | 12, 24, 48 hilos | Ing. Telecomunicaciones | Dimensionamiento |
| **Tecnología de radio** | Digital, frecuencia, licencias | Ing. Telecomunicaciones | Fase Preoperativa |
| **Ancho de banda total** | Cálculo preciso según equipos | Ing. Telecomunicaciones | Post-definición ITS/Peajes |

---

## 12. REFERENCIAS CRUZADAS

### Documentos Relacionados:
- [AT1 - Alcance del Proyecto](../II.%20Apendices%20Tecnicos/AT1_Alcance_Proyecto_v1.0.md) - Longitud del corredor
- [AT2 - Operación y Mantenimiento](../II.%20Apendices%20Tecnicos/AT2_Operacion_Mantenimiento_v1.0.md) - Requisitos de comunicaciones
- [AT4 - Indicadores](../II.%20Apendices%20Tecnicos/AT4_Indicadores_v1.0.md) - KPIs de telecomunicaciones
- [T01 - Sistema ITS](24_T01_Ficha_Sistema_ITS_v1.0.md) - Principal usuario de telecomunicaciones
- [T01 - Sistema Peajes](25_T01_Ficha_Sistema_Peajes_v1.0.md) - Red de 3 niveles
- [T01 - Sistema CCO](26_T01_Ficha_Sistema_CCO_v1.0.md) - Hub central
- [Listado Maestro de Sistemas](23_ListadoMaestro_Sistemas_Vehiculares_v1.0.md) - Categoría 5 (Telecomunicaciones)

### Próximos Documentos a Crear:
- `50_T02_Analisis_Requisitos_Telecomunicaciones_v1.0.md` - Análisis detallado
- `51_T03_Arquitectura_Telecomunicaciones_v1.0.md` - Topología de red
- `52_T04_Especificacion_Fibra_Optica_v1.0.md` - Especificación de fibra
- `53_T04_Especificacion_Switches_v1.0.md` - Especificación de switches
- `54_T04_Especificacion_Radio_v1.0.md` - Especificación de radio
- `55_T05_Estimacion_Costos_Telecomunicaciones_v1.0.md` - Estimación detallada

---

## 13. CHANGELOG

| Versión | Fecha | Autor | Descripción |
|:-------:|:------|:------|:------------|
| **v1.0** | 16/10/2025 | Administrador Contractual EPC | Versión inicial - Ficha de Sistema Telecomunicaciones creada con Template T01 |

---

**Versión:** 1.0  
**Estado:** ✅ Ficha de Sistema Completada  
**Fecha:** 16/10/2025  
**Responsable:** Ingeniero de Telecomunicaciones  
**Próxima actualización:** Tras estudio de ruta de fibra óptica

---

**Fin del documento - T01 Sistema Telecomunicaciones**  
*Metodología Punto 42 v1.0*  
*Proyecto APP Puerto Salgar - Barrancabermeja*

