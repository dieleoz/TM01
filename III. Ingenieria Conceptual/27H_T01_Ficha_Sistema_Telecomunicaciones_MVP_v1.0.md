# T01: FICHA DE SISTEMA - TELECOMUNICACIONES (MVP)
## Proyecto APP Puerto Salgar - Barrancabermeja

**Fecha:** 05/12/2025  
**Sistema:** Telecomunicaciones (Fibra Óptica, Red de Datos, Radio, VoIP)  
**Responsable:** Ingeniero de Telecomunicaciones  
**Versión:** 1.0 MVP  
**Referencia Base:** 27_T01_Ficha_Sistema_Telecomunicaciones_v1.0.md  

---

## 1. IDENTIFICACIÓN DEL SISTEMA

| Campo | Valor |
|-------|-------|
| **Nombre del sistema** | Sistema de Telecomunicaciones del Corredor |
| **Categoría** | Infraestructura de Comunicaciones |
| **Prioridad** | 🔴 CRÍTICA (Backbone de todos los sistemas) |
| **Fase contractual** | Construcción y O&M |
| **AT relacionados** | AT2 (Secciones 3.3.5.1, 3.3.4.6, 3.1.7), AT4 (Indicadores) |

---

## 2. DESCRIPCIÓN GENERAL

### 2.1 Propósito del Sistema

El Sistema de Telecomunicaciones es el **backbone crítico** que interconecta todos los sistemas del proyecto, proporcionando:

- **Conectividad de fibra óptica** a lo largo de 293 km del corredor
- **Transmisión en tiempo real** de datos de ITS, CCTV, Peajes al CCO
- **Comunicaciones de voz** (VoIP) para emergencias y operación
- **Red de datos** para gestión operacional
- **Conectividad con ANI** para envío de información
- **Redundancia y disponibilidad** ≥ 99.5% para garantizar operación continua

### 2.2 Alcance del Sistema

**Componentes principales:**
- Red Troncal de Fibra Óptica: 322 km (293 km + 10% reserva técnica)
- Red de Datos Ethernet/IP (Switches, Routers)
- Radio Troncalizado (OPCIONAL - sujeto a validación de cobertura celular)
- Telefonía IP (VoIP): 88 postes SOS + 60 internos
- Enlaces de Respaldo (Microondas, 4G/5G)
- Sistema de Gestión de Red (NMS)
- Canalización y Ductos: 322 km

**Cobertura geográfica:**
- Longitud Principal: 259.6 km (RN 4510 + RN 4511)
- Longitud Total: 293 km (incluyendo RN 4513 conexión CCO)
- CCO ubicado en La Lizama PK 4+300 (RN 4513)
- Topología: Anillo redundante con 7 nodos principales

**Integración con:**
- **ITS:** CCTV (30), PMV (28), WIM (1), Meteo (3), SOS (88), ETD/RADAR (15), Gálibos (8)
- **Peajes:** 2 Estaciones (Zambito, Aguas Negras)
- **CCO:** Hub central en La Lizama PK 4+300
- **Emergencias:** Radio troncalizado, telefonía IP
- **ANI:** Enlaces de datos para SIINCO, ANIscopio

---

## 3. CANTIDADES CONTRACTUALES

### 3.1 Cantidad Validada

| Componente | Cantidad Contractual | Fuente |
|:-----------|:---------------------|:-------|
| **Fibra Óptica Monomodo** | 322 km de CABLE (12-24 hilos) | Cálculo: 293 km + 10% reserva |
| **Switches de Acceso** | 84 switches | Según T05 L2 (Campo) |
| **Switches de Agregación/Core** | 11 switches | Según T05 L3 (7 Nodos + Stacks) |
| **Firewalls** | 2 unidades | HA en CCO |
| **Radio Bases** | 3-4 bases (OPCIONAL) | Sujeto a validación cobertura |
| **Radios Móviles** | 20-30 radios (OPCIONAL) | Vehículos emergencia |
| **Central Telefónica IP** | 1 PBX | CCO La Lizama |
| **Teléfonos IP** | 148 teléfonos | 88 SOS + 60 internos |
| **Canalizaciones** | 322 km | Protección de fibra |

### 3.2 Aclaración Técnica: 322 km de Fibra Óptica

**IMPORTANTE:** Los **322 km** se refieren a la **longitud física del CABLE de fibra óptica** a adquirir e instalar.

**Desglose del cálculo:**
```
Corredor vial:           293 km (longitud real del trazado)
Reserva técnica (+10%):  +29 km (ondulaciones, reparaciones, empalmes)
─────────────────────────────────────────────────────────
TOTAL CABLE A ADQUIRIR:  322 km
```

**Composición del cable:**
- **1 cable** de 322 km de longitud física
- **Contiene:** 12-24 hilos de fibra (según especificación técnica)
- **Cada hilo:** 322 km de longitud (dentro del mismo cable)

**Unidad de compra y presupuesto:**
- ✅ CORRECTO: "322 km de cable de fibra óptica"
- ❌ INCORRECTO: "322 km × 24 hilos = 7,728 km"

Esta distinción es fundamental para:
- **Presupuesto:** Comprar 322 km de cable (no multiplicar por número de hilos)
- **RFQs:** Especificar "322 km de cable de fibra óptica monomodo de 12-24 hilos"
- **Instalación:** Tender 322 km de cable físico a lo largo del corredor

### 3.3 Coherencia Documental

✅ **Coherencia 100% verificada** entre:
- T01 (esta ficha): 322 km cable fibra, 7 nodos anillo
- T02 (Análisis de Requisitos): Requisitos alineados
- T03 (Arquitectura Conceptual): Topología anillo 7 nodos
- T04 (Especificaciones Técnicas): Validado (actualizar 285→322 km)
- T05 (Ingeniería de Detalle): Validado (actualizar 285→322 km)

---

## 4. COMPONENTES PRINCIPALES

| Componente | Cantidad | Ubicación | Función |
|:-----------|:---------|:----------|:--------|
| **Fibra Óptica Monomodo** | 322 km | A lo largo del corredor | Backbone de comunicaciones |
| **ODF** | 30-50 cajas | Puntos de agregación | Terminación y distribución |
| **Switches de Acceso** | 40-50 | Campo (peajes, ITS) | Conectividad local |
| **Switches de Agregación** | 7 | 7 nodos del anillo | Agregación de tráfico |
| **Switches Core** | 4 | CCO La Lizama | Núcleo de la red |
| **Routers** | 2 | CCO La Lizama | Conectividad WAN |
| **Firewalls** | 2 | CCO La Lizama | Seguridad de red |
| **Radio Bases** | 3-4 (OPCIONAL) | CCO + Bases emergencia | Comunicación voz móvil |
| **Radios Móviles** | 20-30 (OPCIONAL) | Vehículos | Comunicación campo |
| **PBX IP** | 1 | CCO La Lizama | Gestión telefonía |
| **Teléfonos IP** | 148 | CCO, Peajes, SOS | Comunicación interna |
| **Enlaces Respaldo** | 2-4 | Puntos críticos | Redundancia |
| **NMS** | 1 | CCO La Lizama | Monitoreo y gestión |
| **Canalizaciones** | 322 km | A lo largo del corredor | Protección fibra |

---

## 5. INTERFACES CON OTROS SISTEMAS

| Sistema Relacionado | Tipo de Interface | Protocolo/Medio | Datos Intercambiados |
|:--------------------|:------------------|:----------------|:---------------------|
| **ITS (CCTV)** | Física + Red IP | Fibra Óptica + Ethernet | Video H.264/H.265 |
| **ITS (PMV, WIM, Meteo, etc.)** | Física + Red IP | Fibra Óptica + Ethernet | Datos sensores, comandos |
| **Peajes** | Física + Red IP | Fibra Óptica + Ethernet | Recaudos, tráfico, video |
| **CCO** | Física + Red IP | Fibra Óptica + Ethernet | Todos los datos (hub) |
| **Emergencias** | VoIP + Radio | Fibra Óptica + RF | Voz, datos, coordinación |
| **ANI** | Red IP | Internet/VPN | Información operacional |

**NOTA:** Este sistema es el backbone de TODOS los demás. Sin telecomunicaciones funcionales, ningún otro sistema puede operar.

---

## 6. ESTIMACIÓN PRELIMINAR

### 6.1 CAPEX (Inversión Inicial)

| Ítem | Costo Total (USD) |
|:-----|:------------------|
| Infraestructura Pasiva (Fibra, Ductos, Civil) | $7,661,295 |
| Equipos Activos (L2, L3, Firewalls) | $322,351 |
| Instalación e Integración | Incluido |
| Contingencias (10%) | Incluido |
| **TOTAL CAPEX** | **$7,983,646** |

**Conversión a COP (TRM: 4,000):** ~$26,880 millones COP

**NOTA:** Sistema de Radio marcado como OPCIONAL (-$99,000 USD si se elimina tras validar cobertura celular)

### 6.2 OPEX (Operación y Mantenimiento - Anual)

| Ítem | Costo Anual (USD) |
|:-----|:------------------|
| Mantenimiento preventivo y correctivo | $270,000 |
| Personal técnico especializado | $120,000 |
| Enlaces de Internet/WAN | $80,000 |
| Licencias de software | $30,000 |
| Energía de equipos activos | $40,000 |
| Certificaciones y pruebas | $30,000 |
| **TOTAL OPEX/año** | **$570,000** |

**Conversión a COP (TRM: 4,000):** ~$2,280 millones COP/año

---

## 7. RIESGOS IDENTIFICADOS

| Riesgo | Probabilidad | Impacto | Mitigación |
|:-------|:-------------|:--------|:-----------|
| **Corte de fibra óptica** | Alta | Crítico | Anillo redundante, respuesta <24h |
| **Falla de switch/router crítico** | Media | Alto | Redundancia N+1, failover |
| **Saturación de ancho de banda** | Media | Medio | Dimensionamiento +30-50% margen |
| **Daño por rayo** | Media | Alto | Protección sobretensiones, UPS |
| **Robo de cable** | Media | Alto | Fibra en ducto enterrado, CCTV |
| **Falla enlaces WAN** | Media | Alto | Enlaces redundantes |

---

## 8. INDICADORES DE DESEMPEÑO (KPIs)

| Indicador ID | Descripción | Valor Mínimo | Frecuencia |
|:-------------|:------------|:-------------|:-----------|
| **DISP-TELECOM-01** | Disponibilidad red fibra óptica | ≥ 99.5% anual | Mensual |
| **DISP-EQUIPOS-01** | Disponibilidad equipos activos | ≥ 99% | Mensual |
| **LATENCIA-01** | Latencia extremo a extremo | ≤ 50 ms | Continuo |
| **PERDIDA-PAQ-01** | Pérdida de paquetes | ≤ 0.1% | Continuo |
| **TIEMPO-REPAR-01** | Tiempo reparación fibra | ≤ 24 horas | Por evento |
| **ANCHO-BANDA-01** | Utilización ancho de banda | ≤ 70% (pico) | Continuo |

---

## 9. PRÓXIMOS PASOS

- [ ] Desarrollar análisis de requisitos detallado (T02 MVP)
- [ ] Definir arquitectura conceptual (T03 MVP)
- [ ] Validar T04 (Especificaciones Técnicas) existente
- [ ] Validar T05 (Ingeniería de Detalle) existente
- [ ] Realizar estudio de ruta de fibra óptica
- [ ] Dimensionar ancho de banda requerido
- [ ] Validar cobertura celular (para decisión sobre radio)
- [ ] Solicitar licencia radio a MinTIC (si aplica)
- [ ] Preseleccionar proveedores (Fibra, Switches, Radio)

---

## 10. OBSERVACIONES Y SUPUESTOS

### 10.1 Supuestos Técnicos

- Fibra óptica monomodo 12-24 hilos (6-12 activos, resto reserva)
- Topología anillo con 7 nodos principales
- Velocidad: 1 Gbps (acceso), 10 Gbps (agregación y core)
- Instalación subterránea en ducto (95%), aérea en puentes (5%)
- Radio troncalizado digital (OPCIONAL - sujeto a validación)
- VoIP sobre la misma red de fibra óptica (VLAN dedicada)
- Redundancia geográfica en tramos críticos
- QoS implementado: Prioridad VoIP > Video > Datos

### 10.2 Dependencias

- Depende de **Gestión Predial** para servidumbres
- Depende de **Obras Civiles** para canalización
- Depende de **Energía** para alimentación de equipos
- Es **CRÍTICO para TODOS los demás sistemas** (backbone)

### 10.3 Restricciones

- Disponibilidad ≥ 99.5% anual (crítico para operación)
- Transmisión en tiempo real obligatoria
- Redundancia obligatoria en secciones críticas
- Compatibilidad con protocolos estándar
- Reserva técnica mínima 10% en longitud de fibra

---

## 11. REFERENCIAS CRUZADAS

### Documentos Relacionados:
- [AT2 - Operación y Mantenimiento](../II.%20Apendices%20Tecnicos/AT2_Operacion_Mantenimiento_v1.0.md)
- [T01 - Sistema ITS](24_T01_Ficha_Sistema_ITS_v1.0.md)
- [T01 - Sistema Peajes](25_T01_Ficha_Sistema_Peajes_v1.0.md)
- [T01 - Sistema CCO](26_T01_Ficha_Sistema_CCO_v1.0.md)
- [T02 - Análisis Requisitos Telecomunicaciones](48_T02_Analisis_Requisitos_Telecomunicaciones_v1.0.md)
- [T03 - Arquitectura Telecomunicaciones](55_T03_Arquitectura_Conceptual_Telecomunicaciones_v1.0.md)
- [T04 - Especificaciones Técnicas Fibra Óptica](../IV.%20Ingenieria%20Basica/55_T04_Especificacion_Fibra_Optica_v1.0.md)

### Próximos Documentos MVP:
- `27H_T02_Analisis_Requisitos_Telecomunicaciones_MVP_v1.0.md`
- `27H_T03_Arquitectura_Conceptual_Telecomunicaciones_MVP_v1.0.md`

---

## 12. CHANGELOG

| Versión | Fecha | Autor | Descripción |
|:-------:|:------|:------|:------------|
| **v1.0 MVP** | 05/12/2025 | Administrador Contractual EPC | Versión MVP - Ficha Sistema Telecomunicaciones siguiendo metodología validada |

---

**Versión:** 1.0 MVP ✅  
**Estado:** ✅ Ficha de Sistema MVP Completada  
**Fecha:** 05/12/2025  
**Metodología:** Punto 42 MVP v2.0  
**Sistemas Completados:** 7/7 (SOS, CCTV, PMV, ETD/RADAR, WIM, Meteo, **Telecomunicaciones**)

---

**Fin del documento - T01 MVP Sistema Telecomunicaciones**  
*Metodología Punto 42 MVP v2.0*  
*Proyecto APP Puerto Salgar - Barrancabermeja*
