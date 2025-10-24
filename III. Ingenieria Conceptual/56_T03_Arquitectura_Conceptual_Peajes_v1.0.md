# T03: ARQUITECTURA CONCEPTUAL - SISTEMA DE PEAJES
## Proyecto APP Puerto Salgar - Barrancabermeja

**Fecha:** 17/10/2025  
**Sistema:** Sistema de Peajes (2 Estaciones: Zambito, Aguas Negras)  
**Responsable:** Ingeniero de Sistemas de Peaje / Arquitecto de Soluciones  
**Versión:** 1.0  

---

## 1. INTRODUCCIÓN

### 1.1 Propósito del Documento

Este documento define la **arquitectura conceptual** del Sistema de Peajes para el proyecto APP Puerto Salgar - Barrancabermeja, estableciendo:

- Arquitectura de 3 niveles de red (Carril → Centro de Plaza → CCO)
- Layout físico de las 2 estaciones de peaje
- Sistemas de cobro (manual, semiautomático, TAG)
- Integración con ITS y CCO
- Redundancia y disponibilidad

### 1.2 Alcance

Esta arquitectura cubre las **2 estaciones de peaje** del corredor:

**Estaciones:**
1. **Peaje Zambito** (PK 9+200, Puerto Salgar)
2. **Peaje Aguas Negras** (PK 80+000, Puerto Boyacá)

**Componentes por estación:**
- 6-9 carriles de cobro bidireccionales
- Sistemas de cobro: Manual, TAG/Telepeaje, Exento
- CCTV (6-8 cámaras por estación)
- PMV (2 por estación)
- Básculas dinámicas WIM (todos los carriles)
- Detectores de altura
- Red de datos de 3 niveles
- Edificio administrativo
- Iluminación LED
- Integración con CCO La Lizama PK 4+300

**Operación:** 24/7/365 durante 25 años

### 1.3 Referencias

- [T01 - Ficha Sistema Peajes](25_T01_Ficha_Sistema_Peajes_v1.0.md)
- [T02 - Análisis de Requisitos Peajes](33_T02_Analisis_Requisitos_Peajes_v1.0.md)
- [AT2 - Operación y Mantenimiento](../II.%20Apendices%20Tecnicos/AT2_Operacion_Mantenimiento_v1.0.md) - Sección 3.3.4
- [T03 - Arquitectura CCO](54_T03_Arquitectura_Conceptual_CCO_v1.0.md)
- [T03 - Arquitectura Telecomunicaciones](55_T03_Arquitectura_Conceptual_Telecomunicaciones_v1.0.md)

---

## 2. ARQUITECTURA DE ALTO NIVEL

### 2.1 Arquitectura de 3 Niveles de Red

```
┌─────────────────────────────────────────────────────────────────┐
│                NIVEL 3: CCO (NÚCLEO CENTRAL)                    │
│   ┌───────────────────────────────────────────────────┐        │
│   │  Servidores SCADA Peajes (Consolidación)          │        │
│   │  - Recaudos en tiempo real                        │        │
│   │  - Tráfico vehicular                               │        │
│   │  - Video de todas las estaciones                   │        │
│   │  - Reportes consolidados                           │        │
│   └───────────────────┬───────────────────────────────┘        │
└───────────────────────┼─────────────────────────────────────────┘
                        │ Fibra Óptica 10 Gbps
                        │ (Parte del anillo de telecomunicaciones)
                        │
        ┌───────────────┼───────────────┐
        │               │               │
┌───────▼────────┐              ┌──────▼────────┐
│  NIVEL 2:      │              │  NIVEL 2:     │
│  CENTRO PLAZA  │              │  CENTRO PLAZA │
│  Peaje Zambito │              │  Peaje Aguas  │
│  (PK 9+200)    │              │  Negras (PK80)│
│                │              │               │
│  ┌──────────┐  │              │  ┌──────────┐ │
│  │Servidor  │  │              │  │Servidor  │ │
│  │Local de  │  │              │  │Local de  │ │
│  │Peaje     │  │              │  │Peaje     │ │
│  │          │  │              │  │          │ │
│  │-Recaudos │  │              │  │-Recaudos │ │
│  │-Tráfico  │  │              │  │-Tráfico  │ │
│  │-Video    │  │              │  │-Video    │ │
│  │-Backup   │  │              │  │-Backup   │ │
│  └────┬─────┘  │              │  └────┬─────┘ │
│       │Switch  │              │       │Switch │ │
│       │Agregac.│              │       │Agregac│ │
└───────┼────────┘              └───────┼───────┘
        │ Fibra/Ethernet                │
        │ 1 Gbps                         │
        │                                │
    ┌───┴────┬─────┬─────┬─────┬───┐   │ (Similar)
    │        │     │     │     │   │   │
┌───▼──┐ ┌──▼─┐ ┌─▼──┐ ┌─▼──┐ ... │
│NIVEL1│ │NIV1│ │NIV1│ │NIV1│     │
│CARRIL│ │CAR2│ │CAR3│ │CAR6│     │
│  1   │ │    │ │    │ │    │     │
│      │ │    │ │    │ │    │     │
│┌────┐│ │┌──┐│ │┌──┐│ │┌──┐│     │
││TAG ││ ││TAG││ ││TAG││ ││TAG││     │
││Lect││ ││   ││ ││   ││ ││   ││     │
│└────┘│ │└──┘│ │└──┘│ │└──┘│     │
│┌────┐│ │┌──┐│ │┌──┐│ │┌──┐│     │
││Báscu││ ││Bás││ ││Bás││ ││Bás││     │
││WIM ││ ││WIM││ ││WIM││ ││WIM││     │
│└────┘│ │└──┘│ │└──┘│ │└──┘│     │
│┌────┐│ │┌──┐│ │┌──┐│ │┌──┐│     │
││Cám ││ ││Cám││ ││Cám││ ││Cám││     │
││CCTV││ ││   ││ ││   ││ ││   ││     │
│└────┘│ │└──┘│ │└──┘│ │└──┘│     │
│┌────┐│ │┌──┐│ │┌──┐│ │┌──┐│     │
││Sema││ ││Sem││ ││Sem││ ││Sem││     │
││foro││ ││   ││ ││   ││ ││   ││     │
│└────┘│ │└──┘│ │└──┘│ │└──┘│     │
└──────┘ └────┘ └────┘ └────┘

6-9 carriles por estación (bidireccional)
```

### 2.2 Descripción de Componentes por Estación

| Componente | Función | Especificación Preliminar | Cantidad/Estación |
|:-----------|:--------|:--------------------------|:------------------|
| **Casetas de Cobro** | Cabinas para operadores | Prefabricadas, clima, vidrio antibalas | 6-9 |
| **Equipos de Carril (Nivel 1)** | Cobro y control | PC, lector TAG, impresora, cámara, interfono | 6-9 sets |
| **Lectores TAG/ETC** | Cobro electrónico | DSRC 5.9 GHz, ISO 18000-63 | 6-9 |
| **Básculas WIM (carril)** | Pesaje dinámico | ±5% error, integrado con cobro | 6-9 |
| **Semáforos de carril** | Control de paso | LED (rojo/verde), control remoto | 6-9 |
| **CCTV de carril** | Video de transacciones | IP 1080p, lectura de matrícula | 12-18 (2/carril) |
| **Servidor Local (Nivel 2)** | Consolidación de plaza | Dell/HP, redundante, SQL Server | 2 (redundante) |
| **Switch de Agregación** | Red de plaza | Gigabit, L3, 48 puertos | 2 (redundante) |
| **UPS** | Respaldo energético | 50 kVA, 30 min | 1 |
| **Generador** | Energía de emergencia | 150 kW diésel, 48h | 1 |
| **Edificio Administrativo** | Oficinas, sanitarios, control | 200 m² | 1 |
| **Iluminación LED** | Iluminación de plaza 24/7 | 150W, 50 luminarias | 50 |

---

## 3. TOPOLOGÍA DEL SISTEMA DE PEAJES

### 3.1 Red de 3 Niveles (Según AT2, Sección 3.3.4)

**NIVEL 1: Carril (Lane Level)**
- Equipos en cada carril de cobro
- Conexión a switch de plaza vía Ethernet (Cat6)
- Alimentación PoE para cámaras
- Distancia máxima: 100 m desde caseta a switch

**NIVEL 2: Centro de Plaza (Plaza Level)**
- Servidor local de peaje (consolidación)
- Switch de agregación (toda la plaza)
- UPS y respaldo local
- Transmisión a CCO (Nivel 3)

**NIVEL 3: CCO (Network Level)**
- Servidores SCADA de Peajes (consolidación de 2 estaciones)
- Reportes financieros
- Integración con ANI

### 3.2 Diagrama de Topología de Red de Peaje

```
PEAJE ZAMBITO (PK 9+200) - Ejemplo de 1 estación:

             [CENTRO DE PLAZA - Nivel 2]
                 Edificio Administrativo
    ┌────────────────────────────────────────────┐
    │  Servidor Peaje 1 (Principal)              │
    │  Servidor Peaje 2 (Respaldo)               │
    │  Switch Agregación 1 (Principal)           │
    │  Switch Agregación 2 (Respaldo)            │
    │  UPS 50 kVA                                │
    └───────┬─────────┬─────────┬────────────────┘
            │         │         │
      ┌─────┴───┐ ┌──┴────┐ ┌─┴─────┐
      │         │ │       │ │       │
[Carril 1] [Carril 2] [Carril 3]  ... [Carril 6-9]
  Nivel 1    Nivel 1    Nivel 1
     │          │          │
  ┌──▼────┐  ┌─▼─────┐  ┌─▼─────┐
  │TAG    │  │TAG    │  │TAG    │
  │Lector │  │Lector │  │Lector │
  ├───────┤  ├───────┤  ├───────┤
  │Báscula│  │Báscula│  │Báscula│
  │WIM    │  │WIM    │  │WIM    │
  ├───────┤  ├───────┤  ├───────┤
  │Cámara │  │Cámara │  │Cámara │
  │CCTV(2)│  │CCTV(2)│  │CCTV(2)│
  ├───────┤  ├───────┤  ├───────┤
  │Semáfor│  │Semáfor│  │Semáfor│
  │LED    │  │LED    │  │LED    │
  └───────┘  └───────┘  └───────┘

Conectividad Nivel 2 → Nivel 3:
Centro de Plaza ──[Fibra Óptica]──► CCO
  (Switch Agr.)    Anillo 10 Gbps    (Switches Core)
```

---

## 4. FLUJO DE DATOS E INFORMACIÓN

### 4.1 Flujo de Transacción de Peaje

```
┌──────────────────────────────────────────────────────────┐
│ 1. DETECCIÓN Y CLASIFICACIÓN (CARRIL - Nivel 1)         │
│    - Semáforo verde, vehículo se aproxima               │
│    - Sensor de presencia detecta vehículo               │
│    - Báscula WIM pesa vehículo (pre-clasificación)      │
│    - Lector TAG lee OBU (si tiene TAG)                  │
│    - Cámara CCTV captura matrícula                       │
└──────────────┬───────────────────────────────────────────┘
               ▼
┌──────────────────────────────────────────────────────────┐
│ 2. PROCESAMIENTO (NIVEL 1 + NIVEL 2)                    │
│    - Sistema determina categoría (I-VI)                  │
│    - Sistema calcula tarifa según categoría              │
│    - Si tiene TAG → Débito automático                    │
│    - Si manual → Operador cobra en caseta               │
│    - Sistema verifica pago                               │
│    - Semáforo verde → Vehículo pasa                      │
└──────────────┬───────────────────────────────────────────┘
               ▼
┌──────────────────────────────────────────────────────────┐
│ 3. REGISTRO LOCAL (SERVIDOR PLAZA - Nivel 2)            │
│    - Transacción registrada en BD local                  │
│    - Foto de matrícula almacenada                        │
│    - Recaudo consolidado (por carril, por turno)         │
│    - Backup local (si falla comunicación con CCO)        │
└──────────────┬───────────────────────────────────────────┘
               ▼
┌──────────────────────────────────────────────────────────┐
│ 4. TRANSMISIÓN A CCO (Fibra Óptica - Nivel 3)          │
│    - Transacciones en tiempo real → SCADA Peajes CCO    │
│    - Recaudo consolidado cada 15 minutos                │
│    - Video de carriles (si necesario)                   │
└──────────────┬───────────────────────────────────────────┘
               ▼
┌──────────────────────────────────────────────────────────┐
│ 5. CONSOLIDACIÓN EN CCO (Nivel 3)                       │
│    - SCADA consolida recaudo de 2 estaciones            │
│    - Generación de reportes (diario, mensual)           │
│    - Transmisión a ANI (recaudo, tráfico)               │
└──────────────────────────────────────────────────────────┘
```

### 4.2 Tipos de Datos

| Tipo de Dato | Formato | Volumen/Día | Retención | Ancho de Banda |
|:-------------|:--------|:------------|:----------|:---------------|
| **Transacciones de peaje** | SQL | 20 MB (12,000 transac.) | 25 años | < 1 Mbps |
| **Recaudo consolidado** | SQL | 5 MB | 25 años | < 0.5 Mbps |
| **Video de carriles** | H.265, 1080p | 500 MB (16 cámaras) | 30 días | 25 Mbps |
| **Fotos de matrículas** | JPEG | 200 MB (12,000 fotos) | 6 meses | < 5 Mbps |
| **Logs de sistema** | Syslog | 50 MB | 5 años | < 0.5 Mbps |

**Ancho de banda total por estación:** ~30 Mbps

---

## 5. REDUNDANCIA Y DISPONIBILIDAD

### 5.1 Estrategia de Redundancia

| Componente | Tipo de Redundancia | Configuración | Justificación |
|:-----------|:--------------------|:--------------|:--------------|
| **Servidores de Plaza** | Activo-Pasivo | 2 servidores por plaza | Operación continua obligatoria (100%) |
| **Switches de Agregación** | Activo-Activo | 2 switches por plaza | Alta disponibilidad de red |
| **Enlaces a CCO** | Dual (Anillo) | 2 rutas por anillo de fibra | Protección ante corte |
| **Energía** | UPS + Generador | UPS 30 min + Generador 48h | Operación en falla eléctrica (obligatorio) |
| **Equipos de Carril** | Sin redundancia | 1 set por carril | Si falla 1 carril, otros 5-8 operan |

### 5.2 SLA (Service Level Agreement)

- **Disponibilidad de peaje:** ≥ 99.5% mensual (según AT4)
- **Operación obligatoria:** 24/7/365 (sin excepciones)
- **MTBF (Equipos de carril):** ≥ 5,000 horas
- **MTTR (Reparación):** < 4 horas (con repuesto en sitio)
- **Tiempo de operación con generador:** 48 horas mínimo

**Disponibilidad 99.5% = Máximo 3.6 horas indisponibilidad/mes**

### 5.3 Puntos Únicos de Falla

| Componente | Es SPOF? | Mitigación |
|:-----------|:---------|:-----------|
| **Edificio de Plaza** | Sí | Diseño sismoresistente, protección contra incendios |
| **Fibra llegada a plaza** | No | Anillo redundante (2 rutas de entrada) |
| **Servidores de Plaza** | No | Configuración activo-pasivo |
| **Carril individual** | Sí | Si falla 1 carril, otros 5-8 carriles operan (degradación aceptable) |
| **Energía eléctrica** | Sí | UPS + Generador (obligatorio según AT2) |

---

## 6. SEGURIDAD

### 6.1 Seguridad Física

- **Perímetro:** Muro de 2.5 m, concertina
- **Control de acceso:** Portón vehicular, portón peatonal, vigilancia 24/7
- **Casetas de cobro:** Vidrio antibalas, sistema de alarma personal
- **Caja fuerte:** Para efectivo (cambio de turno)
- **CCTV de seguridad:** 12-16 cámaras (cobertura 100% de plaza)
- **Iluminación perimetral:** Disuasión de intrusiones

### 6.2 Seguridad Lógica / Ciberseguridad

- **Autenticación:** Control de acceso por roles (operador, supervisor, tesorero)
- **Segregación de red:** VLAN de peaje separada de otras redes
- **Cifrado:** Transmisión de recaudos cifrada (TLS)
- **Auditoría:** Log de todas las transacciones (inviolable)
- **Backup cifrado:** Copias diarias con cifrado AES-256
- **Cámaras anti-fraude:** Grabación de operadores (prevención de corrupción)

### 6.3 Normativa de Seguridad Aplicable

| Norma | Aplicación |
|:------|:-----------|
| **PCI DSS** | Seguridad de datos de tarjetas (si se acepta pago con tarjeta) |
| **ISO 27001** | Seguridad de la información (recaudos) |
| **Ley 1273/2009** | Protección de la información (delitos informáticos) |

---

## 7. ARQUITECTURA DE SOFTWARE

### 7.1 Capas del Sistema de Peajes

```
┌─────────────────────────────────────────────────────────┐
│   CAPA DE PRESENTACIÓN                                  │
│   - Interfaz de operador (caseta de cobro)              │
│   - Dashboard supervisor (centro de plaza)              │
│   - Consola de gestión (CCO)                            │
│   - Reportes web para ANI                               │
├─────────────────────────────────────────────────────────┤
│   CAPA DE LÓGICA DE NEGOCIO                            │
│   - Clasificación vehicular automática                  │
│   - Cálculo de tarifas (tabla de tarifas)              │
│   - Procesamiento de TAG (débito automático)            │
│   - Detección de evasión                                │
│   - Generación de reportes de recaudo                   │
├─────────────────────────────────────────────────────────┤
│   CAPA DE DATOS                                        │
│   - SQL Server (transacciones, recaudos)                │
│   - File system (fotos de matrículas)                   │
│   - Backup diario (servidor local + CCO)                │
└─────────────────────────────────────────────────────────┘
```

### 7.2 Tecnologías Propuestas

| Capa | Tecnología | Justificación |
|:-----|:-----------|:--------------|
| **Sistema de Peaje** | Kapsch, Q-Free, TransCore, Viapass | Proveedores especializados en peaje electrónico |
| **Base de Datos** | SQL Server Standard | Transacciones financieras, alta disponibilidad |
| **Lectores TAG** | DSRC 5.9 GHz (Kapsch, TransCore) | Estándar ISO 18000-63, interoperabilidad |
| **Software de Gestión** | Integrado con proveedor de peaje | Consolidación de recaudos, reportes |
| **Interface ANI** | API REST (JSON) | Según especificaciones ANI |

---

## 8. INTEGRACIÓN CON OTROS SISTEMAS

| Sistema Externo | Interface | Protocolo | Datos Intercambiados | Frecuencia |
|:----------------|:----------|:----------|:---------------------|:-----------|
| **CCO (SCADA Peajes)** | IF-PJ-001 | TCP/IP, Fibra | Recaudos, tráfico, alarmas, video | Tiempo real |
| **ITS (Aforo, WIM)** | IF-PJ-002 | SQL, API | Aforo vs recaudo, WIM vs categoría | Tiempo real |
| **Telecomunicaciones** | IF-PJ-003 | Fibra óptica | Backbone de comunicaciones | Continuo |
| **Energía** | IF-PJ-004 | AC 220V, UPS | Alimentación eléctrica | Continuo |
| **ANI** | IF-PJ-005 | HTTPS, API REST | Recaudos, tráfico, reportes | Diario + tiempo real |
| **Operador TAG** | IF-PJ-006 | API, VPN | Validación TAG, débitos | Por transacción |
| **Bancos** | IF-PJ-007 | API financiera | Conciliación de recaudos | Diario |

---

## 9. ESCALABILIDAD

### 9.1 Dimensionamiento Actual vs Futuro

| Parámetro | Año 1 | Año 10 | Año 25 | Capacidad Diseñada |
|:----------|:------|:-------|:-------|:-------------------|
| **Transacciones/día** (2 estaciones) | 10,000 | 13,000 | 16,000 | 20,000 (+25%) |
| **Carriles operativos** | 12 (6/estación) | 14 | 16 | 18 (9/estación max) |
| **Recaudo anual** | $15M USD | $20M USD | $25M USD | Sistema soporta crecimiento |
| **Ancho de banda** | 60 Mbps (2 estaciones) | 80 Mbps | 100 Mbps | 200 Mbps diseñado |

### 9.2 Estrategia de Crecimiento

**Sin cambios en arquitectura (hasta año 20):**
- Agregar carriles (hasta 9 por estación)
- Actualizar servidores (mayor capacidad de procesamiento)

**Con cambios menores (año 20-25):**
- Reemplazo de equipos obsoletos (ciclo de vida 15-20 años)

---

## 10. TECNOLOGÍA Y ESTÁNDARES

### 10.1 Tecnologías Seleccionadas

| Categoría | Tecnología | Estándar | Proveedores Sugeridos |
|:----------|:-----------|:---------|:----------------------|
| **TAG/ETC** | DSRC 5.9 GHz | ISO 18000-63 | Kapsch, Q-Free, TransCore |
| **Sistema de Peaje** | Integrado | Propietario + API estándar | Kapsch, Q-Free, Viapass |
| **Básculas WIM** | Piezoeléctricas | ASTM E1318 | Kistler, Intercomp |
| **CCTV** | IP 1080p | ONVIF Profile S | Axis, Hikvision |
| **Servidores** | x86 rackmount | Estándar industria | Dell, HP |
| **Base de Datos** | SQL Server | MS SQL | Microsoft |

### 10.2 Interoperabilidad

- **Con operador TAG nacional:** Compatible con sistema de telepeaje existente en Colombia
- **Con ANI:** API REST para transmisión de recaudos y tráfico
- **Multi-vendor (limitado):** Sistema de peaje suele ser propietario de un proveedor principal

---

## 11. ANÁLISIS DE ALTERNATIVAS

### 11.1 Alternativa 1: Peaje 100% Manual (Sin TAG)

**Ventajas:**
- Costo inicial menor
- Tecnología simple

**Desventajas:**
- Lento (mayor tiempo de transacción)
- Mayor personal requerido
- No cumple estándares modernos

**Descartada:** No cumple con requisitos contractuales (TAG obligatorio según AT2)

---

### 11.2 Alternativa 2: Peaje Híbrido (Manual + TAG + Free-Flow) ⭐ **RECOMENDADA**

**Descripción:** Sistema que combina:
- Carriles manuales (operador en caseta)
- Carriles TAG/Telepeaje (cobro automático)
- Carril Exento (vehículos oficiales, emergencia)
- Pre-clasificación con WIM en TODOS los carriles

**Ventajas:**
- ✅ **Flexibilidad** (atiende vehículos con y sin TAG)
- ✅ **Eficiencia** (TAG reduce tiempos de transacción)
- ✅ **Cumplimiento normativo** (según AT2, WIM en todos los carriles)
- ✅ **Detección de evasión** (WIM vs categoría de cobro)
- ✅ **Escalable** (puede migrar a 100% TAG en futuro)

**Desventajas:**
- Costo inicial mayor (equipos TAG + WIM)
- Requiere acuerdo con operador nacional de TAG

**Costo estimado (2 estaciones):** $4.2M - $4.8M USD

**Justificación de selección:**
- Cumple con requisitos contractuales (AT2)
- Preparado para crecimiento futuro (adopción de TAG)
- Detección de evasión mediante WIM (protección de ingresos)
- Estándar en concesiones APP modernas

---

## 12. PLAN DE IMPLEMENTACIÓN

### 12.1 Fases de Implementación

| Fase | Actividad | Duración | Dependencias | Entregable |
|:-----|:----------|:---------|:-------------|:-----------|
| **Fase 1** | Diseño de Detalle | 3 meses | T03 aprobado, predio disponible | Planos arquitectónicos, T04 |
| **Fase 2** | Construcción de Edificios/Plazas | 12 meses | Diseño aprobado, predios | 2 estaciones construidas |
| **Fase 3** | Adquisición de Sistema de Peaje | 6 meses | T04, licitación | Contratos adjudicados |
| **Fase 4** | Instalación de Equipos | 4 meses | Edificios terminados, equipos disponibles | Equipos instalados |
| **Fase 5** | Integración y Pruebas | 3 meses | Instalación completa, fibra operativa | Pruebas FAT/SAT |
| **Fase 6** | Capacitación y Puesta en Marcha | 1 mes | Pruebas aprobadas | Peajes operativos |

**Duración total:** 24 meses (con overlapping)

### 12.2 Hitos Críticos

- **H1:** Predios adquiridos, diseño aprobado - Mes 3
- **H2:** Inicio construcción 2 estaciones - Mes 4
- **H3:** Licitación de sistema de peaje adjudicada - Mes 9
- **H4:** Edificios terminados - Mes 16
- **H5:** Equipos instalados - Mes 20
- **H6:** Pruebas completadas - Mes 23
- **H7:** Peajes en operación - Mes 24

---

## 13. ESTIMACIÓN DE RECURSOS

### 13.1 Infraestructura Civil (por estación)

| Ítem | Costo (USD) |
|:-----|:------------|
| Plaza de peaje (pavimento, isla central) | $400,000 |
| Casetas de cobro (6-9 unidades) | $180,000 |
| Edificio administrativo (200 m²) | $250,000 |
| Iluminación LED (50 luminarias) | $60,000 |
| Señalización y demarcación | $30,000 |
| Drenajes y servicios | $80,000 |
| **SUBTOTAL CIVIL/Estación** | **$1,000,000** |
| **TOTAL 2 ESTACIONES** | **$2,000,000** |

### 13.2 Sistema de Peaje (por estación)

| Ítem | Cantidad | Costo Unitario | Costo Total (USD) |
|:-----|:---------|:---------------|:------------------|
| Equipos de carril (TAG, WIM, cám, semáforo) | 6-9 | $45,000 | $315,000 |
| Servidores de plaza | 2 | $15,000 | $30,000 |
| Switches de agregación | 2 | $8,000 | $16,000 |
| Software de peaje (licencia) | 1 | $120,000 | $120,000 |
| UPS 50 kVA | 1 | $35,000 | $35,000 |
| Generador 150 kW | 1 | $80,000 | $80,000 |
| CCTV local (12-16 cámaras) | 14 | $2,500 | $35,000 |
| PMV (2 por estación) | 2 | $35,000 | $70,000 |
| **SUBTOTAL EQUIPOS/Estación** | | | **$701,000** |
| **TOTAL 2 ESTACIONES** | | | **$1,402,000** |

### 13.3 CAPEX Total Peajes

| Ítem | Costo (USD) |
|:-----|:------------|
| Infraestructura civil (2 estaciones) | $2,000,000 |
| Sistema de peaje (2 estaciones) | $1,402,000 |
| Instalación e integración | $350,000 |
| Capacitación y puesta en marcha | $80,000 |
| Gestión de proyecto | $120,000 |
| **TOTAL CAPEX PEAJES** | **$3,952,000 USD** |

**Conversión COP (TRM 4,000):** COP 15,808,000,000 (~15.8 mil millones)

---

## 14. PRÓXIMOS PASOS

- [ ] Validar arquitectura con ANI e Interventoría
- [ ] Definir ubicaciones exactas (PKs, predios)
- [ ] Adquirir predios para 2 estaciones (10,000-15,000 m² c/u)
- [ ] Desarrollar diseño arquitectónico detallado de plazas
- [ ] Solicitar cotizaciones a proveedores de sistema de peaje:
  - Kapsch TrafficCom
  - Q-Free
  - TransCore
  - Viapass (Colombia)
- [ ] Elaborar especificaciones técnicas (T04)
- [ ] Coordinar con operador nacional de TAG (acuerdo de interoperabilidad)
- [ ] Estimar costos con cotizaciones reales (T05)

---

## 15. CONTROL DE VERSIONES

| Versión | Fecha | Responsable | Descripción |
|:---:|:---:|:---|:---|
| **v1.0** | 17/10/2025 | Administrador Contractual EPC | Arquitectura conceptual inicial del sistema de peajes |
| **v1.2** | 22/10/2025 | Administrador Contractual EPC | **Revisión con información oficial:** Integración CCO La Lizama PK 4+300 |

---

**Versión:** 1.2 ✅ **REVISADO CON INFORMACIÓN OFICIAL DEL PROYECTO**  
**Estado:** ✅ Arquitectura Conceptual Definida + Información Oficial Integrada  
**Fecha:** 22/10/2025  
**Responsable:** Ingeniero de Sistemas de Peaje  
**Próximo documento:** T04 - Especificaciones Técnicas del Sistema de Peajes  

---

**✅ REVISADO CON INFORMACIÓN OFICIAL DEL PROYECTO**
- Integración con CCO La Lizama PK 4+300 (RN 4513) documentada
- Ubicaciones de peajes validadas contra información oficial
- Metodología PKD lineal aplicada

---

**Fin del documento - T03 Arquitectura Conceptual Sistema de Peajes**  
*Metodología Punto 42 v1.0*  
*Proyecto APP Puerto Salgar - Barrancabermeja*

