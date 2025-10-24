# MATRIZ DE RIESGOS TM01 CONSOLIDADA v1.0
## TM01 - Troncal Magdalena (APP Puerto Salgar - Barrancabermeja)

**Fecha:** 22 de octubre de 2025  
**Responsable:** PMO / Administrador Contractual EPC  
**Fuente única:** `III. Ingenieria Conceptual/30_CANTIDADES_REALES_DESDE_AT1_v1.0.md`

---

## 1. Referencias
- Roadmap: `ROADMAP.md`
- Cantidades oficiales: `III. Ingenieria Conceptual/30_CANTIDADES_REALES_DESDE_AT1_v1.0.md`
- WBS completa: `WBS_COMPLETA_TM01_Troncal_Magdalena_v1.0.md`
- Información oficial: `README.md`

---

## 2. Criterios (PMI)
- **Probabilidad/Impacto:** Bajo/Medio/Alto  
- **Estrategias:** Evitar / Mitigar / Transferir / Aceptar  
- **Estados:** Activo / En validación / Cerrado
- **Categorías:** Técnico / Contractual / Gestión / Operacional

---

## 3. Registro Operativo TM01 - Sistemas ITS

| ID | Categoría | Descripción | Prob | Impacto | Estrategia | Responsable | Estado | Fuente |
|:--:|:--:|:---|:---:|:---:|:---|:---|:---:|:---|
| **R-SOS-01** | Técnico | Disponibilidad SOS #88 en RN 4513 | Media | Alto | Mitigar: Redundancia CCO | Ing. Sistemas | Activo | WBS 1.1.2 |
| **R-ETD-01** | Técnico | Cobertura ETD en 15km vs realidad | Alta | Alto | Mitigar: Ajuste ubicaciones | Ing. Sistemas | Activo | WBS 1.2.1 |
| **R-CCTV-01** | Contractual | CCTV solo en peajes vs corredor | Media | Alto | Mitigar: Justificación contractual | Contractual | Activo | WBS 1.3.1 |
| **R-PMV-01** | Técnico | Cobertura PMV en 20km vs realidad | Alta | Alto | Mitigar: Ajuste ubicaciones | Ing. Sistemas | Activo | WBS 1.4.1 |
| **R-METEO-01** | Técnico | Cumplimiento NTC 5660 | Media | Medio | Mitigar: Especificaciones detalladas | Ing. Sistemas | Activo | WBS 1.5.1 |
| **R-WIM-01** | Técnico | Optimización WIM vs especificación | Alta | Alto | Mitigar: Validación PAT | Ing. Sistemas | Activo | WBS 1.6.1 |
| **R-FO-01** | Técnico | Regla 10km L2-L2 vs realidad | Alta | Alto | Mitigar: Ajuste arquitectura | Telecom | Activo | WBS 2.2.3 |
| **R-CCO-01** | Técnico | Ubicación CCO La Lizama PK 4+300 | Media | Alto | Mitigar: Validación técnica | Ing. Sistemas | Activo | WBS 3.1.1 |
| **R-RN4513-01** | Contractual | Justificación RN 4513 conexión CCO | Media | Alto | Mitigar: Documentación contractual | Contractual | Activo | WBS 3.1.1 |
| **R-LONG-01** | Técnico | Longitudes 259.6 + 33.4 km vs contrato | Alta | Alto | Mitigar: Validación oficial | PMO | Activo | README |
| **R-PKD-01** | Técnico | Metodología PKD lineal vs realidad | Media | Medio | Mitigar: Ajuste cálculos | Ing. Sistemas | Activo | WBS |
| **R-INT-01** | Técnico | Integración sistemas ITS vs CCO | Alta | Alto | Mitigar: Plan integración | Integración | Activo | WBS 6.1 |
| **R-ELEC-01** | Técnico | Alimentación eléctrica sistemas ITS | Media | Alto | Mitigar: UPS y respaldo | Ing. Eléctrica | Activo | WBS 4.1 |
| **R-CIVIL-01** | Técnico | Cimentaciones sistemas ITS | Media | Medio | Mitigar: Diseño estructural | Ing. Civil | Activo | WBS 5.1 |
| **R-COM-01** | Técnico | Comunicaciones sistemas ITS | Alta | Alto | Mitigar: Redundancia FO | Telecom | Activo | WBS 2.1 |

---

## 4. KPIs y Seguimiento TM01

| KPI | Objetivo | Frecuencia | Responsable | Estado Actual |
|:---|:---:|:---:|:---|:---:|
| **Riesgos críticos abiertos** | 0 | Semanal | PMO | 15 activos |
| **Cumplimiento SOS** | 100% | Diario | Ing. Sistemas | En validación |
| **Cumplimiento ETD** | 100% | Diario | Ing. Sistemas | En validación |
| **Cumplimiento CCTV** | 100% | Diario | Ing. Sistemas | En validación |
| **Cumplimiento PMV** | 100% | Diario | Ing. Sistemas | En validación |
| **Cumplimiento Meteo** | 100% | Diario | Ing. Sistemas | En validación |
| **Cumplimiento WIM** | 100% | Diario | Ing. Sistemas | En validación |
| **Cumplimiento FO** | 100% | Diario | Telecom | En validación |
| **Cumplimiento CCO** | 100% | Diario | Ing. Sistemas | En validación |
| **Disponibilidad sistemas** | 99.9% | Diario | Operaciones | En validación |

---

## 5. Análisis de Riesgos por Sistema

### **5.1 Sistema SOS (88 unidades)**
**Riesgos Identificados:**
- **R-SOS-01:** Disponibilidad SOS #88 en RN 4513
- **R-SOS-02:** Criterio 1km vs realidad del terreno
- **R-SOS-03:** Alimentación eléctrica SOS

**Estrategias de Mitigación:**
- Redundancia en CCO La Lizama
- Ajuste ubicaciones según terreno
- UPS y respaldo eléctrico

### **5.2 Sistema ETD/RADAR (16 unidades)**
**Riesgos Identificados:**
- **R-ETD-01:** Cobertura ETD en 15km vs realidad
- **R-ETD-02:** Integración RADAR ANPR
- **R-ETD-03:** Comunicaciones ETD/RADAR

**Estrategias de Mitigación:**
- Ajuste ubicaciones según cobertura
- Especificaciones detalladas RADAR
- Redundancia comunicaciones

### **5.3 Sistema CCTV (45 unidades)**
**Riesgos Identificados:**
- **R-CCTV-01:** CCTV solo en peajes vs corredor
- **R-CCTV-02:** Transmisión video CCTV
- **R-CCTV-03:** Almacenamiento video CCTV

**Estrategias de Mitigación:**
- Justificación contractual
- Redundancia transmisión
- Sistemas almacenamiento

### **5.4 Sistema PMV (12 unidades)**
**Riesgos Identificados:**
- **R-PMV-01:** Cobertura PMV en 20km vs realidad
- **R-PMV-02:** Contenido mensajes PMV
- **R-PMV-03:** Comunicaciones PMV

**Estrategias de Mitigación:**
- Ajuste ubicaciones según cobertura
- Protocolos contenido mensajes
- Redundancia comunicaciones

### **5.5 Sistema Meteorológico (3 unidades)**
**Riesgos Identificados:**
- **R-METEO-01:** Cumplimiento NTC 5660
- **R-METEO-02:** Integración SCADA
- **R-METEO-03:** Calibración estaciones

**Estrategias de Mitigación:**
- Especificaciones detalladas NTC 5660
- Protocolos integración SCADA
- Plan calibración estaciones

### **5.6 Sistema WIM (1 unidad)**
**Riesgos Identificados:**
- **R-WIM-01:** Optimización WIM vs especificación
- **R-WIM-02:** Precisión medición WIM
- **R-WIM-03:** Integración WIM

**Estrategias de Mitigación:**
- Validación PAT optimizado
- Especificaciones precisión
- Protocolos integración

### **5.7 Sistema Fibra Óptica (293 km)**
**Riesgos Identificados:**
- **R-FO-01:** Regla 10km L2-L2 vs realidad
- **R-FO-02:** Tendido FO en terreno
- **R-FO-03:** Empalmes FO

**Estrategias de Mitigación:**
- Ajuste arquitectura L2/L3
- Plan tendido FO
- Certificación empalmes

### **5.8 Centro de Control Operacional (CCO)**
**Riesgos Identificados:**
- **R-CCO-01:** Ubicación CCO La Lizama PK 4+300
- **R-CCO-02:** Integración sistemas CCO
- **R-CCO-03:** Alimentación CCO

**Estrategias de Mitigación:**
- Validación técnica ubicación
- Plan integración sistemas
- Redundancia alimentación

---

## 6. Plan de Gestión de Riesgos

### **6.1 Identificación de Riesgos**
- **Fuente:** Análisis WBS completa TM01
- **Método:** Revisión sistemática por sistema ITS
- **Responsable:** PMO + Especialistas técnicos

### **6.2 Análisis de Riesgos**
- **Probabilidad:** Basada en experiencia técnica
- **Impacto:** Basado en criticidad sistema
- **Priorización:** Matriz Probabilidad-Impacto

### **6.3 Planificación de Respuestas**
- **Evitar:** Eliminar riesgo
- **Mitigar:** Reducir probabilidad/impacto
- **Transferir:** Asegurar o contratar
- **Aceptar:** Monitorear y controlar

### **6.4 Monitoreo y Control**
- **Frecuencia:** Semanal para críticos
- **Responsable:** PMO + Especialistas
- **Reporte:** Dashboard PMO

---

## 7. Próximos Pasos

### **Prioridad Alta:**
1. **Validar ubicaciones sistemas ITS** vs realidad terreno
2. **Ajustar arquitectura L2/L3** según regla 10km
3. **Documentar justificaciones contractuales** RN 4513

### **Prioridad Media:**
4. **Desarrollar especificaciones detalladas** por sistema
5. **Planificar integración sistemas** con CCO
6. **Establecer protocolos comunicación** sistemas ITS

### **Prioridad Baja:**
7. **Capacitar operadores** sistemas ITS
8. **Desarrollar manuales** operación y mantenimiento
9. **Establecer métricas** disponibilidad sistemas

---

## 8. Referencias Cruzadas

### **Documentos Maestros:**
- `CRITERIOS_TECNICOS_MAESTRO_TM01_v1.0.md` - Fuente única de verdad
- `MATRIZ_TRAZABILIDAD_TECNICA_TM01_v1.0.md` - Referencias cruzadas
- `PROCEDIMIENTOS_COHERENCIA_TECNICA_TM01_v1.0.md` - Protocolo de actualización

### **WBS y Especificaciones:**
- `WBS_COMPLETA_TM01_Troncal_Magdalena_v1.0.md` - WBS completa
- `T04_Especificaciones_Tecnicas_*_v1.0.md` - Especificaciones técnicas
- `T05_Ingenieria_Detalle_*_v1.0.md` - Ingeniería de detalle

### **Información Oficial:**
- `README.md` - Información oficial confirmada
- `ROADMAP.md` - Plan de trabajo y cronograma
- `III. Ingenieria Conceptual/30_CANTIDADES_REALES_DESDE_AT1_v1.0.md` - Cantidades oficiales

---

**Última actualización:** 22 de octubre de 2025  
**Responsable:** PMO / Administrador Contractual EPC  
**Estado:** ✅ Matriz de riesgos TM01 para validación externa
