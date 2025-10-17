# T03: ARQUITECTURA CONCEPTUAL - SISTEMA DE ÁREAS DE SERVICIO
## Proyecto APP Puerto Salgar - Barrancabermeja

**Fecha:** 18/10/2025  
**Sistema:** Áreas de Servicio (Paraderos, Sanitarios, Talleres)  
**Responsable:** Ingeniero de Arquitectura e Infraestructura  
**Versión:** 1.0  

---

## 1. INTRODUCCIÓN

### 1.1 Propósito

Define la **arquitectura conceptual** de las Áreas de Servicio, estableciendo:

- Layout arquitectónico de paraderos Tipo A y B
- Distribución de servicios (sanitarios, restaurantes, talleres)
- Sistemas de agua, saneamiento, energía
- Integración con sistema de emergencias y CCTV

### 1.2 Alcance

**6 Áreas de Servicio:**
- 3 Paraderos Tipo A (Completos): Sanitarios, restaurante, taller 24/7, base operativa
- 3 Paraderos Tipo B (Intermedios): Sanitarios, área de descanso

**Distribución sugerida:** 1 cada 50-60 km

### 1.3 Referencias

- [T01 - Ficha Sistema Áreas de Servicio](36_T01_Ficha_Sistema_Areas_Servicio_v1.0.md)
- [T02 - Análisis de Requisitos Áreas Servicio](45_T02_Analisis_Requisitos_Areas_Servicio_v1.0.md)

---

## 2. ARQUITECTURA DE ALTO NIVEL

### 2.1 Layout de Paradero Tipo A (Completo)

```
┌──────────────────────────────────────────────────────────────┐
│         ÁREA DE SERVICIO TIPO A (10,000 m² terreno)          │
│                                                              │
│  ┌────────────┐  ┌──────────────┐  ┌─────────────┐        │
│  │ Módulo     │  │  Restaurante │  │   Taller    │        │
│  │ Sanitarios │  │  Cafetería   │  │  Mecánico   │        │
│  │  (8-12)    │  │   150 m²     │  │  24/7       │        │
│  │  Unidades  │  │ 80 comensales│  │  200 m²     │        │
│  └────────────┘  └──────────────┘  └─────────────┘        │
│                                                              │
│  ┌────────────────────────────────────────┐                │
│  │  BASE OPERATIVA (Personal Concesión)   │                │
│  │  - Oficinas (50 m²)                    │                │
│  │  - Dormitorios (30 m², 6 camas)        │                │
│  │  - Garaje (100 m², 3-4 vehículos)      │                │
│  │  - Ambulancia TAM, Grúa, Patrullas     │                │
│  └────────────────────────────────────────┘                │
│                                                              │
│  ┌──────────────────────────────────────────────────┐      │
│  │         ZONA DE PARQUEO (2,500 m²)               │      │
│  │  [Auto] [Auto] [Auto] ... (30 espacios)          │      │
│  │  [Bus] [Bus] ... (10 espacios)                   │      │
│  │  [Camión] [Camión] ... (10 espacios)             │      │
│  │  [Discapacidad] (3 espacios)                     │      │
│  └──────────────────────────────────────────────────┘      │
│                                                              │
│  SERVICIOS:                                                  │
│  ├─ Tanque agua 10,000 L                                    │
│  ├─ PTAR (Planta Tratamiento Aguas)                         │
│  ├─ Generador 50 kW                                         │
│  ├─ Iluminación LED (50 luminarias)                         │
│  ├─ CCTV (12 cámaras)                                       │
│  └─ WiFi público                                            │
└──────────────────────────────────────────────────────────────┘
```

### 2.2 Layout de Paradero Tipo B (Intermedio)

```
┌─────────────────────────────────────────────────────┐
│    ÁREA DE SERVICIO TIPO B (5,000 m² terreno)      │
│                                                     │
│  ┌────────────┐  ┌──────────────┐                 │
│  │ Módulo     │  │  Área de     │                 │
│  │ Sanitarios │  │  Descanso    │                 │
│  │  (6 unid.) │  │  Cubierta    │                 │
│  │            │  │  (100 m²)    │                 │
│  └────────────┘  └──────────────┘                 │
│                                                     │
│  ┌──────────────────────────────────┐             │
│  │  ZONA DE PARQUEO (1,500 m²)      │             │
│  │  [Auto] [Auto] ... (20 espacios) │             │
│  │  [Bus] ... (5 espacios)          │             │
│  │  [Camión] ... (5 espacios)       │             │
│  └──────────────────────────────────┘             │
│                                                     │
│  SERVICIOS:                                         │
│  ├─ Tanque agua 5,000 L                            │
│  ├─ PTAR                                           │
│  ├─ Iluminación LED (30 luminarias)                │
│  └─ CCTV (8 cámaras)                               │
└─────────────────────────────────────────────────────┘
```

---

## 3. PROGRAMA DE MANTENIMIENTO

### 3.1 Ciclo de Inspección Mensual

**Señalización Vertical (E11):**
- Inspección visual: Mensual
- Medición reflectividad: Semestral (muestra 10%)
- Meta: ≥ 80% con Tipo XI conforme

**Señalización Horizontal (E12):**
- Inspección visual: Mensual
- Medición reflectividad: Trimestral
- Meta: ≥ 85% visible y reflectiva

**Defensas (E13):**
- Inspección: Mensual
- Reparación de daños: < 48 horas
- Meta: 100% sin defectos estructurales

---

## 4. ANÁLISIS DE ALTERNATIVAS

### 4.1 Señalización Tipo IX vs Tipo XI

**Tipo XI (Prismática)** ⭐ OBLIGATORIA:
- Reflectividad superior
- Vida útil 10 años
- Costo: +30%
- **Contractual según AT2**

---

## 5. ESTIMACIÓN DE RECURSOS

### 5.1 CAPEX Señalización

| Categoría | Costo (USD) |
|:----------|:------------|
| Señalización Vertical | $816,000 |
| Señalización Horizontal | $1,636,000 |
| Defensas | $4,350,000 |
| Instalación | $1,020,000 |
| **TOTAL** | **$7,822,000 USD** |

### 5.2 CAPEX Áreas de Servicio

| Categoría | Costo (USD) |
|:----------|:------------|
| 3 Paraderos Tipo A | $3,765,000 |
| 3 Paraderos Tipo B | $1,500,000 |
| Equipos y vehículos | $474,000 |
| Instalación | $694,680 |
| **TOTAL** | **$6,433,680 USD** |

---

## 6. CONTROL DE VERSIONES

| Versión | Fecha | Responsable | Descripción |
|:---:|:---:|:---|:---|
| **v1.0** | 18/10/2025 | Administrador Contractual EPC | Arquitectura conceptual inicial de señalización vial y áreas de servicio |

---

**Fin del documento - T03 Arquitectura Conceptual Señalización Vial y Áreas de Servicio**  
*Metodología Punto 42 v1.0*  
*Proyecto APP Puerto Salgar - Barrancabermeja*

