# T04: ESPECIFICACIÓN TÉCNICA - EQUIPOS DE PEAJE (TAG/DSRC)
## Proyecto APP Puerto Salgar - Barrancabermeja

**Fecha:** 18/10/2025  
**Equipo:** Sistema de Recaudo Electrónico de Peaje (TAG DSRC)  
**Responsable:** Ing. de Sistemas de Peaje / Especialista en ITS  
**Versión:** 1.0  

---

## 1. INFORMACIÓN GENERAL

| Campo | Valor |
|:------|:------|
| **Equipo** | Sistema TAG DSRC (Dedicated Short Range Communication) 5.8 GHz |
| **Cantidad estimada** | 2 Estaciones de Peaje x 12 carriles = 24 sistemas completos |
| **Ubicación** | Peaje Zambito (PK 9.2), Peaje Aguas Negras (PK 80) |
| **Sistema asociado** | Sistema de Peaje (Recaudo Electrónico) |
| **Criticidad** | 🔴 Alta |
| **Documentos de Referencia** | `56_T03_Arquitectura_Conceptual_Peajes_v1.0.md` |

---

## 2. ESPECIFICACIONES FUNCIONALES

### 2.1 Función Principal

Realizar el cobro electrónico de peaje mediante tecnología TAG DSRC (5.8 GHz), permitiendo el paso de vehículos sin detenerse (Free-Flow) o con detención mínima en cabinas.

### 2.2 Capacidades Requeridas

- Lectura de TAG a velocidades de 0-120 km/h
- Detección de vehículos sin TAG (evasores)
- Clasificación de vehículos (categorías I-VI)
- Integración con sistema de video (CCTV/LPR)
- Comunicación con sistema central de recaudo

---

## 3. ESPECIFICACIONES TÉCNICAS

### 3.1 Antena DSRC (RSE - Road Side Equipment)

| Parámetro | Especificación Mínima |
|:----------|:----------------------|
| **Tecnología** | DSRC 5.8 GHz (ISO/IEC 15628) |
| **Protocolo** | ISO 14906 (Application Interface), ISO 18000-63 |
| **Rango de Lectura** | 10-15 metros (ajustable) |
| **Velocidad de Vehículos** | 0-120 km/h |
| **Tasa de Lectura** | > 99.5% (en condiciones normales) |
| **Tiempo de Transacción** | < 100 ms |
| **Número de Carriles** | 1 antena por carril (pueden cubrir 2 carriles en free-flow) |
| **Potencia de Transmisión** | 500 mW EIRP |
| **Ángulo de Cobertura** | Horizontal: 60-80°, Vertical: 30-40° |

### 3.2 TAG (OBU - On-Board Unit)

| Parámetro | Especificación |
|:----------|:---------------|
| **Tecnología** | DSRC 5.8 GHz pasivo o semi-pasivo |
| **Protocolo** | Compatible con ISO 14906, ISO 18000-63 |
| **Batería** | Pasivo (sin batería) o batería 5-7 años |
| **Montaje** | Parabrisas (adhesivo) |
| **Temperatura de Operación** | -20°C a +85°C |
| **Memoria** | Capacidad de almacenar 100+ transacciones |
| **Cifrado** | AES-128 o superior |

### 3.3 Sistema de Clasificación de Vehículos

| Componente | Tecnología |
|:-----------|:-----------|
| **Detector de Lazos** | Lazos inductivos dobles (entrada/salida) |
| **Sensores de Eje** | Piezo-eléctricos o neumáticos |
| **Perfilómetro Láser/Ultrasonido** | Medición de altura y longitud (clasificación automática I-VI) |
| **Básculas WIM (Opcional)** | Pre-selección de sobrepeso |

### 3.4 Sistema de Identificación de Evasores

| Componente | Especificación |
|:-----------|:---------------|
| **Cámaras LPR** | 2 por carril (frontal y posterior), OCR > 95% |
| **Iluminación IR** | Para lectura nocturna de placas |
| **Barrera Automática** | Apertura/cierre en < 2 segundos |
| **Señalización PMV** | Panel LED para instrucciones al usuario |

---

## 4. ARQUITECTURA DEL SISTEMA

```
┌────────────────────────────────────────┐
│  CARRIL DE PEAJE (Componentes)         │
│                                        │
│  [Antena DSRC] ──► [Controlador]      │
│       │                    │           │
│  [Detector Lazo] ──────────┤           │
│  [Perfilómetro] ───────────┤           │
│  [Cámara LPR] ─────────────┤           │
│  [Barrera] ────────────────┤           │
│       │                    │           │
│       └────────────────────┴──► [Servidor Local] ──► [Sistema Central]
└────────────────────────────────────────┘
```

---

## 5. CUMPLIMIENTO Y ESTÁNDARES

| Norma | Descripción |
|:------|:------------|
| **ISO 14906** | Electronic fee collection - Application interface |
| **ISO 18000-63** | RFID for item management |
| **ISO 12855** | Information for users - Vision related aspects |
| **NTC (Colombia)** | Normas técnicas nacionales aplicables |

---

## 6. PROVEEDORES SUGERIDOS

| Proveedor | Tecnología | Observaciones |
|:----------|:-----------|:--------------|
| **Kapsch TrafficCom** | TAG DSRC, Free-Flow, MLFF | Líder mundial en sistemas de peaje |
| **Q-Free** | TAG DSRC, Clasificación | Amplia experiencia en Colombia |
| **TransCore** | TAG DSRC + LPR | Soluciones integradas |
| **Siemens Mobility** | Sistema completo de peaje | Integración con ITS |
| **Neology (Smartrac)** | TAG DSRC | Especialista en TAGs |

---

## 7. INTEROPERABILIDAD

El sistema debe ser compatible con los TAGs existentes de otros concesionarios en Colombia (interoperabilidad nacional), siguiendo los estándares definidos por la ANI.

---

## 8. COSTOS ESTIMADOS

| Componente | Cantidad | Costo Unitario (USD) | Costo Total (USD) |
|:-----------|:---------|:---------------------|:------------------|
| Antena DSRC (RSE) | 24 | $8,000 | $192,000 |
| Controlador de Carril | 24 | $5,000 | $120,000 |
| Perfilómetro | 24 | $15,000 | $360,000 |
| Cámaras LPR | 48 | $3,000 | $144,000 |
| Barreras automáticas | 24 | $4,000 | $96,000 |
| TAGs (usuarios) | 50,000 | $8 | $400,000 |
| Sistema Central | 1 | $250,000 | $250,000 |
| Instalación e integración | - | - | $300,000 |
| **TOTAL** | - | - | **$1,862,000** |

---

## 9. PRÓXIMOS PASOS

- [ ] Solicitar cotizaciones a Kapsch, Q-Free, TransCore
- [ ] Definir modelo de negocio (TAG prepago/pospago)
- [ ] Verificar interoperabilidad con otros concesionarios
- [ ] Diseñar arquitectura de comunicaciones (fibra óptica, VPN)

---

## 10. CONTROL DE VERSIONES

| Versión | Fecha | Responsable | Descripción |
|:---:|:---:|:---|:---|
| **v1.0** | 18/10/2025 | Administrador Contractual EPC | Especificación técnica inicial de equipos de peaje |

---

**Fin del documento - T04 Especificación Técnica Equipos de Peaje (TAG/DSRC)**  
*Metodología Punto 42 v1.0*

