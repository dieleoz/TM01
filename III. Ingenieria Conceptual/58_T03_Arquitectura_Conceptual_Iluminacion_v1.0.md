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

Esta arquitectura cubre **650 luminarias LED** distribuidas en zonas críticas del corredor de 259.6 km:

**Zonas iluminadas:**
- 2 Estaciones de Peaje (Zambito, Aguas Negras)
- Estaciones de Pesaje
- Centro de Control Operacional (CCO)
- 14 Áreas de Servicio
- Intersecciones a nivel y desnivel
- Puentes peatonales y paraderos

**Total estimado:** 650 luminarias LED con control centralizado desde CCO

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
│  │  - Visualización de estado (650 luminarias)    │         │
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
    │Zona 1  │  │Zona 2  │ │Zona 3  │ │Zona 4  │
    │(Peajes)│  │(Áreas  │ │(Inters)│ │(CCO)   │
    │        │  │Servic) │ │        │ │        │
    └───┬────┘  └──┬─────┘ └──┬─────┘ └─┬──────┘
        │          │           │         │
    ┌───▼────────────────────────────────▼────┐
    │    25 Transformadores de Iluminación    │
    │    (15-30 kVA cada uno)                 │
    │    Con fotocélula + temporizador        │
    └───┬──────────┬──────────┬───────────────┘
        │          │          │
    ┌───▼───┐  ┌──▼───┐  ┌──▼───┐
    │Grupo  │  │Grupo │  │Grupo │  ... (25 grupos)
    │Lum. 1 │  │Lum.2 │  │Lum.3 │
    │25 LED │  │25 LED│  │30 LED│
    └───────┘  └──────┘  └──────┘

TOTAL: 650 luminarias LED organizadas en 25 grupos
```

### 2.2 Descripción de Componentes

| Componente | Función | Especificación | Cantidad |
|:-----------|:--------|:---------------|:---------|
| **Luminarias LED 150W** | Iluminación alta intensidad | 150W, >15,000 lm, 4000K, IP66/IK10 | 300 |
| **Luminarias LED 100W** | Iluminación media intensidad | 100W, >10,000 lm, 4000K, IP66/IK10 | 200 |
| **Luminarias LED 50W** | Iluminación peatonal | 50W, >5,000 lm, 4000K, IP66 | 150 |
| **Postes metálicos galvanizados** | Soporte de luminarias | 8-12m altura, galvanizado | 650 |
| **Transformadores 15-30 kVA** | Alimentación eléctrica | Monofásico/Trifásico | 25 |
| **Tableros de control** | Control, protección | IP54, fotocélula, temporizador | 25 |
| **Controladores Modbus** | Comunicación con SCADA | Modbus TCP/IP | 25 |
| **Sistema SCADA Iluminación** | Monitoreo y control central | Integrado con CCO | 1 |
| **Cableado subterráneo** | Interconexión | Cu 3x10 AWG, ductos | 35 km |

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
| **Zona 4-17** | 14 Áreas de Servicio | 20-30 x 100W c/u | 15-20 kVA | Local |
| **Zona 18-25** | Intersecciones críticas (8) | 30-50 x 150W c/u | 20-30 kVA | Local |

**Total:** 25 zonas, 650 luminarias, 25 transformadores

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

### 10.1 CAPEX

| Ítem | Cantidad | Costo Unitario | Costo Total (USD) |
|:-----|:---------|:---------------|:------------------|
| Luminarias LED (150W, 100W, 50W) | 650 | $300 prom | $195,000 |
| Postes metálicos | 650 | $800 | $520,000 |
| Transformadores | 25 | $5,000 | $125,000 |
| Tableros de control | 25 | $3,500 | $87,500 |
| Sistema SCADA | 1 | $80,000 | $80,000 |
| Cableado y canalizaciones | 35 km | $15,000/km | $525,000 |
| Instalación y pruebas | Global | 20% | $306,500 |
| **TOTAL CAPEX** | | | **$1,839,000 USD** |

**Conversión COP (TRM 4,000):** COP 7,356,000,000 (~7.4 mil millones)

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

---

**Versión:** 1.0  
**Estado:** ✅ Arquitectura Conceptual Definida  
**Fecha:** 18/10/2025  
**Responsable:** Ingeniero de Sistemas Eléctricos  
**Próximo documento:** T04 - Especificaciones Técnicas de Iluminación  

---

**Fin del documento - T03 Arquitectura Conceptual Sistema de Iluminación Vial**  
*Metodología Punto 42 v1.0*  
*Proyecto APP Puerto Salgar - Barrancabermeja*

