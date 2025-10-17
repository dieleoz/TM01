# T04: ESPECIFICACIÓN TÉCNICA - BÁSCULAS DE PESAJE (WIM + ESTÁTICAS)
## Proyecto APP Puerto Salgar - Barrancabermeja

**Fecha:** 18/10/2025  
**Equipo:** Sistemas de Pesaje Dinámico (WIM) y Estático  
**Responsable:** Ing. Civil / Especialista en Control de Peso  
**Versión:** 1.0  

---

## 1. INFORMACIÓN GENERAL

| Campo | Valor |
|:------|:------|
| **Equipo** | Básculas Dinámicas WIM (Weigh-In-Motion) + Básculas Estáticas |
| **Cantidad estimada** | 2-3 Estaciones fijas, WIM en peajes |
| **Ubicación** | Estaciones de Pesaje estratégicas (cada 80-120 km) |
| **Sistema asociado** | Control de Peso y Dimensiones |
| **Criticidad** | 🟡 Alta |
| **Documentos de Referencia** | `61_T03_Arquitectura_Conceptual_Pesaje_WIM_v1.0.md` |

---

## 2. ESPECIFICACIONES FUNCIONALES

### 2.1 Función Principal

- **WIM (Dinámico):** Pre-selección de vehículos con posible sobrepeso (sin detener el tráfico)
- **Báscula Estática:** Pesaje de precisión para confirmar infracciones

---

## 3. ESPECIFICACIONES TÉCNICAS

### 3.1 Báscula WIM (Dinámica)

| Parámetro | Especificación Mínima |
|:----------|:----------------------|
| **Tecnología** | Sensores piezoeléctricos de cuarzo o fibra óptica |
| **Velocidad de Pesaje** | 5-120 km/h |
| **Precisión** | ±5% del peso real (ASTM E1318 Type II) |
| **Capacidad** | 100 toneladas PBVT |
| **Configuración** | 2 sensores por carril (espaciados 3-4 metros) |
| **Instalación** | Embebido en pavimento (corte de 50-80 mm profundidad) |
| **Salidas** | Peso bruto vehicular total (PBVT), peso por eje, velocidad, categoría |
| **Protección** | IP68 (sumergible), resistente a cargas pesadas |

### 3.2 Báscula Estática

| Parámetro | Especificación Mínima |
|:----------|:----------------------|
| **Tecnología** | Plataforma de pesaje con celdas de carga (strain gauge) |
| **Precisión** | ±1% o ±50 kg (la que sea mayor) - Clase III OIML R76 |
| **Capacidad** | 100 toneladas PBVT |
| **Dimensiones Plataforma** | 3m ancho x 20m largo (pesaje de vehículo completo) o modular por ejes |
| **Material** | Estructura de acero con plataforma antideslizante |
| **Celdas de Carga** | 8-12 celdas digitales o analógicas con compensación de temperatura |
| **Tiempo de Estabilización** | < 5 segundos |
| **Indicador** | Digital, pantalla LED/LCD visible para conductor y operador |

### 3.3 Sistema de Control y Software

| Componente | Especificación |
|:-----------|:---------------|
| **Computador Industrial** | PC embebido, procesador i5/i7, 8GB RAM, SSD 256GB, Windows 10 IoT o Linux |
| **Software WIM** | Clasificación automática de vehículos, base de datos SQL, reportes |
| **Integración** | API REST para envío de datos a CCO y ANI |
| **Cámaras** | 2 cámaras LPR (frontal/posterior) para identificación de placas |
| **Señalización** | PMV para instruir a conductores sospechosos |

---

## 4. CUMPLIMIENTO NORMATIVO

| Norma | Descripción |
|:------|:------------|
| **ASTM E1318** | Standard Specification for Highway Weigh-In-Motion (WIM) Systems |
| **OIML R76** | Non-automatic weighing instruments (básculas estáticas) |
| **Resolución 4100 de 2004** | Colombia - Control de peso en carreteras |
| **NTC 5375** | Límites de peso y dimensiones para vehículos |

---

## 5. PROVEEDORES SUGERIDOS

| Proveedor | Tecnología | Observaciones |
|:----------|:-----------|:--------------|
| **Kistler** | WIM Piezoeléctrico (Lineas) | Líder mundial en WIM de alta precisión |
| **International Road Dynamics (IRD)** | WIM + Software iSINC | Amplia experiencia en América |
| **Haenni** | WIM Portátiles y fijos | Tecnología suiza |
| **METTLER TOLEDO** | Básculas estáticas | Alta precisión, certificación OIML |
| **Rice Lake** | Básculas modulares | Buena relación costo-calidad |

---

## 6. ARQUITECTURA DEL SISTEMA

```
┌─────────────────────────────────────────────────┐
│  Estación de Pesaje (WIM + Estática)           │
│                                                 │
│  ┌─────────┐  Si PBVT > Límite  ┌────────────┐ │
│  │Báscula  │────────────────────►│  Báscula   │ │
│  │WIM      │  (Pre-selección)    │  Estática  │ │
│  │(5% prec)│                     │  (1% prec) │ │
│  └────┬────┘                     └─────┬──────┘ │
│       │                                │        │
│  ┌────▼────────────────────────────────▼─────┐  │
│  │   Sistema de Control + Cámaras LPR        │  │
│  └──────────────┬────────────────────────────┘  │
│                 │ Fibra Óptica/4G LTE          │
│                 ▼                                │
│      ┌──────────────────┐                       │
│      │  CCO + ANI       │                       │
│      │  (Reportes)      │                       │
│      └──────────────────┘                       │
└─────────────────────────────────────────────────┘
```

---

## 7. COSTOS ESTIMADOS

| Componente | Cantidad | Costo Unitario (USD) | Costo Total (USD) |
|:-----------|:---------|:---------------------|:------------------|
| WIM por estación (2 carriles) | 2-3 | $120,000 | $240,000 - $360,000 |
| Báscula estática (100 ton) | 2-3 | $85,000 | $170,000 - $255,000 |
| Cámaras LPR | 12-18 | $3,000 | $36,000 - $54,000 |
| Software y sistema de control | 2-3 | $50,000 | $100,000 - $150,000 |
| Construcción de estación | 2-3 | $350,000 | $700,000 - $1,050,000 |
| **TOTAL ESTIMADO** | - | - | **$1,246,000 - $1,869,000** |

**Nota:** Rango dependiendo de 2 o 3 estaciones

---

## 8. PRÓXIMOS PASOS

- [ ] Definir ubicaciones exactas de estaciones (estudio de tráfico)
- [ ] Solicitar cotizaciones a Kistler, IRD, Haenni
- [ ] Diseñar plan operativo (personal, turnos 24/7)
- [ ] Coordinación con Policía de Carreteras

---

## 9. CONTROL DE VERSIONES

| Versión | Fecha | Responsable | Descripción |
|:---:|:---:|:---|:---|
| **v1.0** | 18/10/2025 | Administrador Contractual EPC | Especificación técnica inicial de básculas |

---

**Fin del documento - T04 Especificación Técnica Básculas de Pesaje (WIM + Estáticas)**  
*Metodología Punto 42 v1.0*

