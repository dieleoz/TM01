# T03: ARQUITECTURA CONCEPTUAL - SISTEMA DE SEÑALIZACIÓN VIAL
## Proyecto APP Puerto Salgar - Barrancabermeja

**Fecha:** 18/10/2025  
**Sistema:** Señalización Vial (Vertical, Horizontal, Defensas)  
**Responsable:** Ingeniero de Seguridad Vial  
**Versión:** 1.0  

---

## 1. INTRODUCCIÓN

### 1.1 Propósito

Este documento define la **arquitectura conceptual** del Sistema de Señalización Vial, estableciendo:

- Distribución de señalización vertical, horizontal y defensas
- Plan de señalización por Unidad Funcional
- Programa de mantenimiento preventivo
- Integración con SGSV (Sistema de Gestión de Seguridad Vial)

### 1.2 Alcance

**Componentes en 259.6 km principales + 33.4 km adicionales:**
- Señalización Vertical: ~2,300 señales Tipo XI
- Señalización Horizontal: ~1,000 km lineales termoplástico
- Defensas Metálicas: ~100 km
- Barreras de Concreto: ~15 km
- Tachas Reflectivas: ~52,000 unidades
- Delineadores: ~7,000 unidades

### 1.3 Referencias

- [T01 - Ficha Sistema Señalización](35_T01_Ficha_Sistema_Senalizacion_Vial_v1.0.md)
- [T02 - Análisis de Requisitos Señalización](44_T02_Analisis_Requisitos_Senalizacion_Vial_v1.0.md)

---

## 2. ARQUITECTURA DEL SISTEMA

### 2.1 Distribución por Tipo

```
┌──────────────────────────────────────────────────────────────┐
│         SEÑALIZACIÓN VIAL - DISTRIBUCIÓN 259.6 km            │
│                                                              │
│  SEÑALIZACIÓN VERTICAL (2,300 señales)                      │
│  ├─ Reglamentarias: 600 (PARE, velocidad, prohibiciones)    │
│  ├─ Preventivas: 900 (curvas, pendientes, zonas)            │
│  ├─ Informativas: 500 (destinos, distancias, servicios)     │
│  └─ Delineación: 300 (chevrones en curvas)                  │
│                                                              │
│  SEÑALIZACIÓN HORIZONTAL (1,000 km lineales)                │
│  ├─ Línea central: 259.6 km (amarilla)                      │
│  ├─ Líneas de borde: 519.2 km (blanca, ambos lados)         │
│  ├─ Líneas de carril: 200 km (blanca discontinua)           │
│  ├─ Flechas y leyendas: 650 unidades                        │
│  └─ Cebras peatonales: 80 unidades                          │
│                                                              │
│  DEFENSAS Y CONTENCIÓN (115 km)                             │
│  ├─ Defensas metálicas Tipo U: 100 km                       │
│  ├─ Barreras concreto (New Jersey): 15 km                   │
│  ├─ Protección motociclistas: 100 km                        │
│  └─ Amortiguadores de impacto: 25 unidades                  │
│                                                              │
│  DELINEACIÓN                                                 │
│  ├─ Tachas bidireccionales: 52,000 (cada 12m)               │
│  ├─ Delineadores verticales: 4,000                           │
│  └─ Postes delineadores: 3,000                               │
└──────────────────────────────────────────────────────────────┘
```

### 2.2 Plan de Señalización por UF

| UF | PKs | Señales Vert. | Demarcación (km) | Defensas (km) |
|:---|:----|:--------------|:-----------------|:--------------|
| **UF-1** | 0-20 | 180 | 80 | 8 |
| **UF-2** | 20-40 | 180 | 80 | 8 |
| ... | ... | ... | ... | ... |
| **UF-14** | 240-259.6 | 150 | 75 | 7 |
| **TOTAL** | 259.6 km | **2,300** | **1,000** | **115** |

---

## 3. PROGRAMA DE MANTENIMIENTO

### 3.1 Ciclo de Mantenimiento

```
MANTENIMIENTO PREVENTIVO MENSUAL (Inspección E11, E12, E13):

Semana 1 (UF 1-4):
├─ Inspección señalización vertical (limpieza, reflectividad)
├─ Inspección demarcación horizontal (visibilidad)
├─ Inspección defensas (daños estructurales)
└─ Reposición inmediata de deficiencias

Semana 2 (UF 5-8): [Repetir proceso]
Semana 3 (UF 9-12): [Repetir proceso]
Semana 4 (UF 13-14): [Repetir proceso]

MANTENIMIENTO CORRECTIVO (Continuo):
├─ Reposición señales faltantes/ilegibles: < 24 horas
├─ Repintado demarcación (reflectividad < 100 mcd): < 7 días
└─ Reparación defensas dañadas: < 48 horas

REPOSICIÓN PROGRAMADA:
├─ Señales verticales: 10% anual (vida útil 10 años)
├─ Demarcación horizontal: 40% anual (repintado)
├─ Tachas reflectivas: 15% anual
└─ Defensas metálicas: 3% anual (impactos)
```

---

## 4. INTEGRACIÓN CON SGSV

### 4.1 Sistema de Gestión de Seguridad Vial

- **Análisis de puntos negros:** Actualización trimestral de señalización
- **Auditorías de seguridad vial:** Anual
- **Retroalimentación:** Modificación de señalización según accidentalidad

---

## 5. ANÁLISIS DE ALTERNATIVAS

### 5.1 Alternativa: Señalización Tipo IX vs Tipo XI

**Tipo XI (Prismática)** ⭐ RECOMENDADA:
- Reflectividad: 250 cd/lux/m² (blanco)
- Vida útil: 10 años
- Costo: +30% vs Tipo IX
- **Obligatoria según AT2**

**Decisión:** Tipo XI (contractual)

---

## 6. ESTIMACIÓN DE RECURSOS

### 6.1 CAPEX Total

| Categoría | Costo (USD) |
|:----------|:------------|
| Señalización Vertical | $816,000 |
| Señalización Horizontal | $1,636,000 |
| Defensas y Contención | $4,350,000 |
| Instalación (15%) | $1,020,000 |
| **TOTAL CAPEX** | **$7,822,000 USD** |

**COP (TRM 4,000):** COP 31,288,000,000 (~31.3 mil millones)

---

## 7. CONTROL DE VERSIONES

| Versión | Fecha | Responsable | Descripción |
|:---:|:---:|:---|:---|
| **v1.0** | 18/10/2025 | Administrador Contractual EPC | Arquitectura conceptual inicial de señalización vial |
| **v1.2** | 22/10/2025 | Administrador Contractual EPC | **Revisión con información oficial:** Longitudes actualizadas, cobertura 259.6 km + 33.4 km |

---

**Versión:** 1.2 ✅ **REVISADO CON INFORMACIÓN OFICIAL DEL PROYECTO**  
**Estado:** ✅ Arquitectura Conceptual Definida + Información Oficial Integrada  
**Fecha:** 22/10/2025  
**Responsable:** Ingeniero de Seguridad Vial  
**Próximo documento:** T04 - Especificaciones Técnicas de Señalización Vial  

---

**✅ REVISADO CON INFORMACIÓN OFICIAL DEL PROYECTO**
- Longitudes actualizadas: 259.6 km principal + 33.4 km adicionales
- Cobertura de señalización actualizada
- Metodología PKD lineal aplicada

---

**Fin del documento - T03 Arquitectura Conceptual Señalización Vial**  
*Metodología Punto 42 v1.0*  
*Proyecto APP Puerto Salgar - Barrancabermeja*

