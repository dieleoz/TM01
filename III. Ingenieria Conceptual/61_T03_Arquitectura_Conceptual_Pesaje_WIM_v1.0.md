# T03: ARQUITECTURA CONCEPTUAL - SISTEMA DE PESAJE WIM
## Proyecto APP Puerto Salgar - Barrancabermeja

**Fecha:** 18/10/2025  
**Sistema:** Pesaje WIM (Weigh In Motion) + Básculas Estáticas  
**Responsable:** Ingeniero Civil / Ingeniero de Tránsito  
**Versión:** 1.0  

---

## 1. INTRODUCCIÓN

### 1.1 Propósito

Define la **arquitectura conceptual** del Sistema de Pesaje WIM, estableciendo:

- Arquitectura de estaciones de pesaje fijas (2-3 estaciones)
- Integración WIM dinámico + Básculas estáticas
- Flujo operativo de control de peso
- Integración con CCO y Policía de Carreteras

### 1.2 Alcance

**Componentes:**
- 1 Estación de Pesaje Fija Bidireccional (PR4+0100 RN 4513)
- Básculas Dinámicas WIM (pre-selección, ±5%)
- Básculas Estáticas (precisión ±1%, 100 ton)
- Básculas WIM en Peajes (todos los carriles)
- 2-3 Básculas Móviles (operativos temporales)
- Software de gestión integrado con CCO La Lizama PK 4+300

### 1.3 Referencias

- [T01 - Ficha Sistema Pesaje WIM](39_T01_Ficha_Sistema_Pesaje_WIM_v1.0.md)
- [T02 - Análisis de Requisitos Pesaje WIM](47_T02_Analisis_Requisitos_Pesaje_WIM_v1.0.md)

---

## 2. ARQUITECTURA DE ESTACIÓN DE PESAJE

### 2.1 Layout de Estación Fija

```
┌──────────────────────────────────────────────────────────────┐
│     ESTACIÓN DE PESAJE (Área total: 5,000 m²)               │
│                                                              │
│  SENTIDO 1 (Ej: Norte → Sur):                               │
│  ┌─────────────────────────────────────────────────┐        │
│  │ [Báscula WIM] ──► [Báscula Estática] ──► Salida│        │
│  │  (Pre-selec)      (Si sobrepeso)                │        │
│  └─────────────────────────────────────────────────┘        │
│                                                              │
│  SENTIDO 2 (Ej: Sur → Norte):                               │
│  ┌─────────────────────────────────────────────────┐        │
│  │ [Báscula WIM] ──► [Báscula Estática] ──► Salida│        │
│  └─────────────────────────────────────────────────┘        │
│                                                              │
│  ┌──────────────┐  ┌────────────────┐  ┌─────────┐        │
│  │  Edificio    │  │  Estacionamiento│  │ Caseta  │        │
│  │Administrac.  │  │  Infractores    │  │ Policía │        │
│  │ (100 m²)     │  │  (800 m²)       │  │ (30 m²) │        │
│  │-Oficina      │  │  20 camiones    │  │         │        │
│  │-Sanitarios   │  │                 │  │         │        │
│  └──────────────┘  └────────────────┘  └─────────┘        │
│                                                              │
│  SERVICIOS: Iluminación 24/7, CCTV (8 cám), Energía (UPS)  │
└──────────────────────────────────────────────────────────────┘
```

### 2.2 Flujo Operativo

```
┌──────────────────────────────────────────────────────────┐
│ 1. Camión se aproxima a estación                         │
│ 2. Báscula WIM pesa en movimiento (sin detención)        │
│ 3. Si PBVT > límite legal:                               │
│    ├─ Señal luminosa + PMV: "DIRÍJASE A BÁSCULA"        │
│    ├─ Operador dirige a báscula estática                 │
│    └─ Pesaje de precisión + Comprobante                  │
│ 4. Si sobrepeso confirmado:                              │
│    ├─ Notificación a Policía (inmediata)                 │
│    ├─ Aplicación de sanción                              │
│    └─ Vehículo debe descargar exceso                     │
│ 5. Registro en sistema → CCO → ANI                       │
└──────────────────────────────────────────────────────────┘
```

---

## 3. INTEGRACIÓN DE SISTEMAS

| Sistema | Interface | Datos |
|:--------|:----------|:------|
| **CCO** | Fibra/IP | Datos de pesaje, estadísticas |
| **Peajes** | BD/IP | WIM vs categoría cobro |
| **Policía** | Web/App | Infracciones en tiempo real |
| **ANI** | API REST | Reportes mensuales |

---

## 4. ANÁLISIS DE ALTERNATIVAS

### 4.1 Alternativa: Solo Básculas Estáticas (Sin WIM)

**Desventajas:** Todos los camiones deben detenerse (congestión)
**Decisión:** Descartada (WIM obligatorio según AT2)

### 4.2 Alternativa: WIM + Estática ⭐ RECOMENDADA

**Ventajas:**
- ✅ Pre-selección reduce detenciones (solo sospechosos)
- ✅ Menor congestión
- ✅ Cumple AT2

---

## 5. ESTIMACIÓN DE RECURSOS

### 5.1 CAPEX Pesaje

| Ítem | Costo (USD) |
|:-----|:------------|
| 2-3 Estaciones Fijas | $2,800,000 |
| Básculas (WIM + Estáticas) | $450,000 |
| Software de gestión | $120,000 |
| Instalación | $200,000 |
| **TOTAL** | **$3,570,000 USD** |

---

## 6. CONTROL DE VERSIONES

| Versión | Fecha | Responsable | Descripción |
|:---:|:---:|:---|:---|
| **v1.0** | 18/10/2025 | Administrador Contractual EPC | Arquitectura conceptual de pesaje WIM |
| **v1.2** | 22/10/2025 | Administrador Contractual EPC | **Revisión con información oficial:** 1 estación bidireccional PR4+0100 RN 4513, CCO La Lizama PK 4+300 |

---

**Versión:** 1.2 ✅ **REVISADO CON INFORMACIÓN OFICIAL DEL PROYECTO**  
**Estado:** ✅ Arquitectura Conceptual Definida + Información Oficial Integrada  
**Fecha:** 22/10/2025  
**Responsable:** Ingeniero Civil / Ingeniero de Tránsito  
**Próximo documento:** T04 - Especificaciones Técnicas del Sistema de Pesaje WIM  

---

**✅ REVISADO CON INFORMACIÓN OFICIAL DEL PROYECTO**
- Cantidad confirmada: 1 estación bidireccional en PR4+0100 RN 4513
- CCO ubicado en La Lizama PK 4+300 (RN 4513)
- Software de gestión integrado con ubicación oficial
- Metodología PKD lineal aplicada

---

**Fin del documento - T03 Arquitectura Conceptual Pesaje WIM**  
*Metodología Punto 42 v1.0*

