# T03: ARQUITECTURA CONCEPTUAL - SISTEMA DE EMERGENCIAS
## Proyecto APP Puerto Salgar - Barrancabermeja

**Fecha:** 18/10/2025  
**Sistema:** Atención de Emergencias y Auxilio Vial  
**Responsable:** Gerente de Operaciones y Emergencias  
**Versión:** 1.0  

---

## 1. INTRODUCCIÓN

### 1.1 Propósito

Define la **arquitectura conceptual** del Sistema de Emergencias 24/7/365, estableciendo:

- Arquitectura operacional (bases, equipos, personal)
- Flujo de despacho desde CCO
- Tiempos de respuesta y cobertura
- Integración con ITS (SOS, DAI, CCTV)

### 1.2 Alcance

**Servicios 24/7 en 259.6 km principales + 33.4 km adicionales:**
- 2-3 Ambulancias TAM (médico, auxiliar, conductor)
- 2-3 Grúas livianas, 1-2 grúas pesadas
- 2-3 Carrotalleres equipados
- 4-6 Patrullas de inspección
- 2 Bases de Operación estratégicas
- Equipos de rescate (NFPA 1936)
- Maquinaria para derrumbes
- Despacho centralizado desde CCO La Lizama PK 4+300

### 1.3 Referencias

- [T01 - Ficha Sistema Emergencias](28_T01_Ficha_Sistema_Emergencias_v1.0.md)
- [T02 - Análisis de Requisitos Emergencias](49_T02_Analisis_Requisitos_Emergencias_v1.0.md)

---

## 2. ARQUITECTURA OPERACIONAL

### 2.1 Distribución de Bases

```
┌──────────────────────────────────────────────────────────────┐
│              CORREDOR 259.6 km                               │
│                                                              │
│  PK 0 ──────────────┬──────────────┬──────────────► PK 259.6│
│  (Puerto Salgar)    │              │           (San Roque)  │
│                     │              │                        │
│                 ┌───▼────┐     ┌──▼─────┐                  │
│                 │ BASE 1 │     │ BASE 2 │                  │
│                 │ PK 80  │     │ PK 180 │                  │
│                 │(Peaje  │     │(Puerto │                  │
│                 │ Aguas  │     │Berrío) │                  │
│                 │Negras) │     │        │                  │
│                 └────────┘     └────────┘                  │
│                                                              │
│  COBERTURA:                                                  │
│  ├─ Base 1: PK 0-130 (130 km, radio 65 km)                 │
│  └─ Base 2: PK 130-259.6 (130 km, radio 65 km)             │
│                                                              │
│  TIEMPO RESPUESTA MÁXIMO: 30-40 minutos (extremos)          │
└──────────────────────────────────────────────────────────────┘
```

### 2.2 Composición de cada Base

| Recurso | Cantidad/Base | Total (2 Bases) |
|:--------|:--------------|:----------------|
| Ambulancia TAM | 1-2 | 2-3 |
| Grúa liviana | 1 | 2 |
| Grúa pesada | 0-1 | 1 |
| Carrotaller | 1 | 2 |
| Patrulla inspección | 2-3 | 4-6 |
| Personal (3 turnos 24/7) | 15-20 | 30-40 |

---

## 3. FLUJO DE DESPACHO

```
┌──────────────────────────────────────────────────────┐
│ 1. DETECCIÓN (ITS)                                   │
│    - Llamada SOS / Detección DAI / CCTV             │
└──────────────┬───────────────────────────────────────┘
               ▼
┌──────────────────────────────────────────────────────┐
│ 2. COORDINACIÓN (CCO)                                │
│    - Operador recibe alerta                         │
│    - Evalúa tipo de emergencia                      │
│    - Identifica recurso necesario (TAM/Grúa/etc)    │
│    - Determina base más cercana                     │
└──────────────┬───────────────────────────────────────┘
               ▼
┌──────────────────────────────────────────────────────┐
│ 3. DESPACHO (RADIO/VoIP)                            │
│    - CCO despacha unidad                            │
│    - Unidad confirma: "En ruta, ETA 15 min"         │
└──────────────┬───────────────────────────────────────┘
               ▼
┌──────────────────────────────────────────────────────┐
│ 4. ATENCIÓN EN SITIO                                 │
│    - Unidad llega al sitio                          │
│    - Atiende emergencia                             │
│    - Coordina con Policía/Bomberos (si necesario)   │
└──────────────┬───────────────────────────────────────┘
               ▼
┌──────────────────────────────────────────────────────┐
│ 5. REGISTRO (SICC)                                   │
│    - Operador registra evento completo               │
│    - Tiempos, acciones, resultado                    │
│    - Medición de Indicador O4                        │
└──────────────────────────────────────────────────────┘
```

---

## 4. INTEGRACIÓN CON OTROS SISTEMAS

| Sistema | Interface | Datos |
|:--------|:----------|:------|
| **CCO** | Radio, VoIP, Fibra | Despacho, coordinación |
| **ITS (SOS/DAI)** | VoIP, API | Detección de emergencias |
| **Áreas de Servicio** | Física | Bases operativas |
| **Hospitales** | Radio, Teléfono | Traslados médicos |

---

## 5. ANÁLISIS DE ALTERNATIVAS

### 5.1 Alternativa: 1 Base Central vs 2 Bases Distribuidas

**2 Bases Distribuidas** ⭐ RECOMENDADA:
- ✅ Menor tiempo de respuesta
- ✅ Mejor cobertura
- Costo: +40% vs 1 base
- **Decisión:** Justificado por tiempos O4

---

## 6. ESTIMACIÓN DE RECURSOS

### 6.1 CAPEX Total

| Categoría | Costo (USD) |
|:----------|:------------|
| Vehículos (TAM, grúas, patrullas) | $825,000 |
| Equipos de rescate | $180,000 |
| Bases operativas (2) | $650,000 |
| Equipos comunicación | $120,000 |
| **TOTAL** | **$1,775,000 USD** |

---

## 7. CONTROL DE VERSIONES

| Versión | Fecha | Responsable | Descripción |
|:---:|:---:|:---|:---|
| **v1.0** | 18/10/2025 | Administrador Contractual EPC | Arquitectura conceptual de emergencias |
| **v1.2** | 22/10/2025 | Administrador Contractual EPC | **Revisión con información oficial:** Despacho CCO La Lizama PK 4+300, longitudes actualizadas |

---

**Versión:** 1.2 ✅ **REVISADO CON INFORMACIÓN OFICIAL DEL PROYECTO**  
**Estado:** ✅ Arquitectura Conceptual Definida + Información Oficial Integrada  
**Fecha:** 22/10/2025  
**Responsable:** Gerente de Operaciones y Emergencias  
**Próximo documento:** T04 - Especificaciones Técnicas del Sistema de Emergencias  

---

**✅ REVISADO CON INFORMACIÓN OFICIAL DEL PROYECTO**
- Despacho centralizado desde CCO La Lizama PK 4+300 (RN 4513)
- Longitudes actualizadas: 259.6 km principal + 33.4 km adicionales
- Cobertura de servicios actualizada
- Metodología PKD lineal aplicada

---

**Fin del documento - T03 Arquitectura Conceptual Emergencias**  
*Metodología Punto 42 v1.0*

