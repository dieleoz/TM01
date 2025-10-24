# T03: ARQUITECTURA CONCEPTUAL - SISTEMA DE ILUMINACIÓN VIAL
## Proyecto APP Puerto Salgar - Barrancabermeja

**Fecha:** 18/10/2025  
**Sistema:** Iluminación Vial  
**Responsable:** Ingeniero de Sistemas Eléctricos  
**Versión:** 1.0  

---

## 1. INTRODUCCIÓN

### 1.1 Propósito del Documento

Este documento define la **arquitectura conceptual** del Sistema de Iluminación Vial para el proyecto APP Puerto Salgar - Barrancabermeja, estableciendo:

- Arquitectura de distribución de iluminación
- Topología de control y monitoreo
- Tipos de luminarias y postes según ubicación
- Sistema SCADA de iluminación
- Integración con CCO y sistema eléctrico

### 1.2 Alcance

Esta arquitectura cubre **413 luminarias LED** distribuidas en zonas críticas del corredor de 259.6 km principales + 33.4 km adicionales:

**Zonas iluminadas:**
- 2 Estaciones de Peaje (Zambito, Aguas Negras)
- Estaciones de Pesaje
- Centro de Control Operacional (CCO La Lizama PK 4+300)
- **2 Áreas de Servicio** (obligatorias asociadas a peajes - AT1 Cap. 3)
- Intersecciones a nivel y desnivel
- Puentes peatonales y paraderos

**Total estimado:** 410 luminarias LED con control centralizado desde CCO La Lizama PK 4+300

### 1.3 Referencias

- [T01 - Ficha Sistema Iluminación](34_T01_Ficha_Sistema_Iluminacion_v1.0.md)
- [T02 - Análisis de Requisitos Iluminación](43_T02_Analisis_Requisitos_Iluminacion_v1.0.md)
- [T03 - Arquitectura Energía Eléctrica](57_T03_Arquitectura_Conceptual_Energia_Electrica_v1.0.md)
- [T03 - Arquitectura CCO](54_T03_Arquitectura_Conceptual_CCO_v1.0.md)

---

## 2. ARQUITECTURA DE ALTO NIVEL

### 2.1 Diagrama de Arquitectura

```
┌──────────────────────────────────────────────────────────────┐
│                    CCO - SALA DE CONTROL                     │
│                                                              │
│  ┌────────────────────────────────────────────────┐         │
│  │  SCADA de Iluminación                          │         │
│  │  - Dashboard de control                        │         │
│  │  - Visualización de estado (410 luminarias)    │         │
│  │  - Programación horaria                        │         │
│  │  - Generación de alarmas                       │         │
│  └────────────────┬───────────────────────────────┘         │
│                   │ Modbus TCP / Ethernet                    │
└───────────────────┼──────────────────────────────────────────┘
                    │ Red de Fibra Óptica
                    │
        ┌───────────┼───────────┬──────────┐
        │           │           │          │
    ┌───▼────┐  ┌──▼─────┐ ┌──▼─────┐ ┌─▼──────┐
    │Control │  │Control │ │Control │ │Control │
    │Zona 1  │  │Zona 2  │ │Zona 3  │ │Zona 4-5│
    │(Peaje  │  │(Peaje  │ │(CCO)   │ │(2 Áreas│
    │Zambito)│  │Aguas N)│ │        │ │integr) │
    └───┬────┘  └──┬─────┘ └──┬─────┘ └─┬──────┘
        │          │           │         │
    ┌───▼────────────────────────────────▼────┐
    │    13 Transformadores de Iluminación    │
    │    (15-30 kVA cada uno)                 │
    │    Con fotocélula + temporizador        │
    └───┬──────────┬──────────┬───────────────┘
        │          │          │
    ┌───▼───┐  ┌──▼───┐  ┌──▼───┐
    │Grupo  │  │Grupo │  │Grupo │  ... (13 grupos)
    │Lum. 1 │  │Lum.2 │  │Lum.3 │
    │30-40  │  │30-40 │  │20-30 │
    └───────┘  └──────┘  └──────┘

TOTAL: 410 luminarias LED organizadas en 13 zonas/grupos
```

### 2.2 Descripción de Componentes

| Componente | Función | Especificación | Cantidad |
|:-----------|:--------|:---------------|:---------|
| **Luminarias LED 150W** | Iluminación alta intensidad (peajes, intersecciones) | 150W, >15,000 lm, 4000K, IP66/IK10 | 220 |
| **Luminarias LED 100W** | Iluminación media intensidad (CCO, áreas) | 100W, >10,000 lm, 4000K, IP66/IK10 | 140 |
| **Luminarias LED 50W** | Iluminación peatonal (paraderos) | 50W, >5,000 lm, 4000K, IP66 | 50 |
| **Postes metálicos galvanizados** | Soporte de luminarias | 8-12m altura, galvanizado en caliente | 410 |
| **Transformadores 15-30 kVA** | Alimentación eléctrica distribución | Monofásico/Trifásico, poste | 13 |
| **Tableros de control** | Control local, protección | IP54, fotocélula, temporizador, breakers | 13 |
| **Controladores Modbus** | Comunicación con SCADA | Modbus TCP/IP, RTU | 13 |
| **Sistema SCADA Iluminación** | Monitoreo y control centralizado | Software integrado con CCO | 1 |
| **Cableado subterráneo** | Interconexión eléctrica | Cu 3x10 AWG, ductos PVC | 25 km |

#### 🔴 **CONCEPTO ARQUITECTÓNICO:**

Las **2 áreas de servicio** SÍ tienen iluminación, pero:
- ✅ Se alimentan desde la subestación del peaje (ya dimensionada para eso)
- ✅ 40 luminarias LED 100W (20 por área)
- ✅ Se contabilizan en el total (410 luminarias)
- ❌ NO requieren transformadores adicionales propios
- ✅ La iluminación del área es parte del "paquete" del complejo Peaje+Área

---

## 3. TOPOLOGÍA DEL SISTEMA

### 3.1 Topología de Control

- **Tipo:** Jerárquica con control centralizado
- **Niveles:** 2 niveles (Local + CCO)
- **Protocolo:** Modbus TCP/IP sobre Ethernet
- **Control local:** Fotocélula + temporizador (autónomo)
- **Control remoto:** SCADA desde CCO (override)

### 3.2 Zonas de Iluminación

| Zona | Ubicación | Luminarias | Transformador | Control |
|:-----|:----------|:-----------|:--------------|:--------|
| **Zona 1** | Peaje Zambito (PK 9.2) | 50 x 150W | 30 kVA | SCADA + Local |
| **Zona 2** | Peaje Aguas Negras (PK 80) | 50 x 150W | 30 kVA | SCADA + Local |
| **Zona 3** | CCO (PK 130) | 40 x 100W | 20 kVA | SCADA + Local |
| **Zona 4-5** | **2 Áreas de Servicio** (Zambito, Aguas Negras) | 20 x 100W c/u | 15 kVA c/u | Local |
| **Zona 6-13** | Intersecciones críticas (8) | 30-50 x 150W c/u | 20-30 kVA | Local |

**Total:** 13 zonas, 410 luminarias, 13 transformadores

#### 🔴 **Nota de Ajuste Contractual:**
**Versión anterior:** 14 áreas de servicio (Zona 4-17) = 280 luminarias  
**Versión ajustada:** 2 áreas de servicio (Zona 4-5) = 40 luminarias  
**Reducción:** -240 luminarias (-37% del total)  
**Fundamento:** AT1 Cap. 3 - Solo 2 áreas obligatorias (1 por peaje)

---

## 4. FLUJO DE CONTROL

### 4.1 Secuencia de Encendido/Apagado

```
┌────────────────────────────────────────────────────┐
│ 1. DETECCIÓN (LOCAL - FOTOCÉLULA)                 │
│    - Fotocélula detecta nivel de luz < 10 lux     │
│    - Hora: ~18:00 (atardecer)                     │
└──────────────┬─────────────────────────────────────┘
               ▼
┌────────────────────────────────────────────────────┐
│ 2. VERIFICACIÓN (TEMPORIZADOR)                    │
│    - Temporizador verifica horario programado     │
│    - Horario: 18:00 - 06:00                       │
└──────────────┬─────────────────────────────────────┘
               ▼
┌────────────────────────────────────────────────────┐
│ 3. ACTIVACIÓN (CONTACTOR/RELÉ)                    │
│    - Contactor cierra circuito                    │
│    - Luminarias LED se encienden (< 1 segundo)    │
└──────────────┬─────────────────────────────────────┘
               ▼
┌────────────────────────────────────────────────────┐
│ 4. NOTIFICACIÓN A CCO (SCADA)                     │
│    - Controlador Modbus envía estado "ON"         │
│    - SCADA registra evento de encendido           │
│    - Operador visualiza en dashboard              │
└────────────────────────────────────────────────────┘

Proceso inverso al amanecer (~06:00)
```

---

## 5. REDUNDANCIA Y DISPONIBILIDAD

### 5.1 Estrategia de Disponibilidad

| Zona | Redundancia | Justificación |
|:-----|:------------|:--------------|
| **Peajes** | Doble circuito (preferible) | Criticidad operativa (disponibilidad 99%) |
| **CCO** | Doble circuito + generador | Operación 24/7 |
| **Áreas de Servicio** | Circuito simple + generador (6 principales) | Confort de usuarios |
| **Intersecciones** | Circuito simple | Disponibilidad 98% aceptable |

**SLA:**
- Disponibilidad objetivo: ≥ 98% mensual
- MTBF luminarias LED: > 15,000 horas
- MTTR: < 24 horas (reposición)

---

## 6. SEGURIDAD

### 6.1 Seguridad Física

- Postes galvanizados (resistencia a corrosión)
- Carcasas antivandalismo (IK10)
- Puesta a tierra en cada poste (< 10 Ω)
- Protección contra sobretensiones (DPS)

### 6.2 Seguridad Eléctrica

- Cumplimiento RETILAP y NTC 2050
- Protecciones en tableros (breakers, diferenciales)
- Señalización de riesgo eléctrico
- Acceso controlado a tableros

---

## 7. TECNOLOGÍA Y ESTÁNDARES

### 7.1 Tecnologías Seleccionadas

| Componente | Tecnología | Estándar | Proveedores Sugeridos |
|:-----------|:-----------|:---------|:----------------------|
| **Luminarias LED** | LED COB, eficacia >100 lm/W | RETILAP, CIE 115 | Philips, Schréder, GE Current, Cree |
| **Postes** | Acero galvanizado | ASTM A123 | Fabricantes nacionales |
| **Control SCADA** | Modbus TCP/IP | IEC 61850 | Schneider Electric, Siemens |
| **Fotocélulas** | Sensores crepusculares | IP66 | Standard industrial |

---

## 8. ANÁLISIS DE ALTERNATIVAS

### 8.1 Alternativa 1: Control Local Únicamente (Sin SCADA)

**Ventajas:** Menor costo inicial, simple
**Desventajas:** Sin monitoreo remoto, detección de fallas tardía
**Costo:** $1.6M USD
**Decisión:** Descartada (no permite gestión proactiva)

### 8.2 Alternativa 2: Control Local + SCADA Centralizado ⭐ **RECOMENDADA**

**Ventajas:** 
- ✅ Monitoreo en tiempo real desde CCO
- ✅ Detección temprana de fallas
- ✅ Control remoto (encendido/apagado manual)
- ✅ Cumple indicador E14 (medición continua)

**Costo:** $1.9M USD (+$300K vs Alt. 1)
**Decisión:** Recomendada (beneficio justifica inversión)

---

## 9. PLAN DE IMPLEMENTACIÓN

| Fase | Actividad | Duración | Entregable |
|:-----|:----------|:---------|:-----------|
| **Fase 1** | Diseño de Detalle | 2 meses | Planos de iluminación, T04 |
| **Fase 2** | Adquisición de Equipos | 4 meses | Luminarias, postes, controles |
| **Fase 3** | Instalación | 12 meses | 650 luminarias instaladas |
| **Fase 4** | Comisionamiento | 1 mes | Sistema operativo |

**Duración total:** 15 meses (con overlapping)

---

## 10. ESTIMACIÓN DE RECURSOS

### 10.1 CAPEX CORREGIDO

| Ítem | Cantidad | Costo Unitario | Costo Total (USD) |
|:-----|:---------|:---------------|:------------------|
| **Luminarias LED** |
| LED 150W (peajes, intersecciones) | 220 | $350 | $77,000 |
| LED 100W (CCO, áreas) | 140 | $280 | $39,200 |
| LED 50W (peatonal, paraderos) | 50 | $220 | $11,000 |
| **Infraestructura** |
| Postes metálicos galvanizados (8-12m) | 410 | $800 | $328,000 |
| Transformadores iluminación (15-30 kVA) | 13 | $5,000 | $65,000 |
| Tableros de control (IP54, fotocélula) | 13 | $3,500 | $45,500 |
| **Control y Comunicaciones** |
| Sistema SCADA iluminación (software) | 1 | $80,000 | $80,000 |
| Controladores Modbus | 13 | $2,000 | $26,000 |
| **Cableado e Instalación** |
| Cableado subterráneo (Cu 3x10 AWG) | 25 km | $15,000/km | $375,000 |
| Canalizaciones y ductos | Global | $80,000 | $80,000 |
| Instalación, montaje y pruebas | Global | 20% | $212,540 |
| **TOTAL CAPEX** | | | **$1,264,240 USD** |

**Conversión COP (TRM 4,000):** COP 5,386,960,000 (~5.39 mil millones)

#### 🔴 **Nota de Ajuste - PMV Complementarios:**
**Versión anterior:** 410 luminarias LED  
**Versión ajustada:** 413 luminarias LED  
**Incremento:** +3 luminarias complementarias (+$7,500 USD)  
**Justificación:** Iluminación complementaria para 3 PMV adicionales

---

### 10.2 Comparación vs. Versión Anterior

| Concepto | v1.0 (14 áreas indep.) | v1.1 (2 áreas integradas) | Cambio |
|:---------|:----------------------|:--------------------------|:-------|
| Luminarias LED | 650 × $300 = $195K | 410 × $310 prom = $127.2K | **-$67,800** |
| Postes | 650 × $800 = $520K | 410 × $800 = $328K | **-$192,000** |
| Transformadores | 25 × $5K = $125K | 13 × $5K = $65K | **-$60,000** |
| Tableros | 25 × $3.5K = $87.5K | 13 × $3.5K = $45.5K | **-$42,000** |
| Cableado | 35 km × $15K = $525K | 25 km × $15K = $375K | **-$150,000** |
| Controladores | 25 × $2K = $50K | 13 × $2K = $26K | **-$24,000** |
| SCADA | $80K | $80K | $0 |
| **TOTAL CAMBIOS** | | | **-$535,800 USD** |

**Ahorro neto estimado:** -$535,800 USD (-29% del CAPEX total)

**Razón del ahorro:**
- Eliminación de 240 luminarias (incluye las 12 áreas "fantasma")
- Eliminación de 240 postes
- Reducción de transformadores y tableros
- Menor longitud de cableado
- Ahorro significativo en CAPEX de iluminación

---

## 11. PRÓXIMOS PASOS

- [ ] Realizar estudios de iluminancia (DIALux, AGI32)
- [ ] Elaborar especificaciones técnicas de luminarias (T04)
- [ ] Solicitar cotizaciones: Philips, Schréder, GE Current
- [ ] Diseñar planos de iluminación por zona
- [ ] Estimar costos detallados (T05)

---

## 12. CONTROL DE VERSIONES

| Versión | Fecha | Responsable | Descripción |
|:---:|:---:|:---|:---|
| **v1.0** | 18/10/2025 | Administrador Contractual EPC | Arquitectura conceptual inicial del sistema de iluminación |
| **v1.1** | 20/10/2025 | Administrador Contractual EPC | **Rediseño arquitectónico:** 2 áreas integradas a peajes (iluminación incluida pero sin transformadores propios). 410 luminarias, 13 transformadores. CAPEX -$536K (-29%) |
| **v1.2** | 22/10/2025 | Administrador Contractual EPC | **Revisión con información oficial:** CCO La Lizama PK 4+300, longitudes actualizadas |

---

**Versión:** 1.2 ✅ **REVISADO CON INFORMACIÓN OFICIAL DEL PROYECTO**  
**Estado:** ✅ Arquitectura Validada Contractualmente + Información Oficial Integrada  
**Fecha:** 22/10/2025  
**Responsable:** Ingeniero de Sistemas Eléctricos  
**Próximo documento:** T04 - Especificaciones Técnicas de Iluminación  

---

**✅ REVISADO CON INFORMACIÓN OFICIAL DEL PROYECTO**
- CCO ubicado en La Lizama PK 4+300 (RN 4513)
- Longitudes actualizadas: 259.6 km principal + 33.4 km adicionales
- Control centralizado desde ubicación oficial
- Metodología PKD lineal aplicada

---

**Fin del documento - T03 Arquitectura Conceptual Sistema de Iluminación Vial**  
*Metodología Punto 42 v1.0*  
*Proyecto APP Puerto Salgar - Barrancabermeja*

