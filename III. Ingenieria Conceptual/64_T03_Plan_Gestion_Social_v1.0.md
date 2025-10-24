# T03: PLAN DE GESTIÓN SOCIAL - ARQUITECTURA CONCEPTUAL
## Proyecto APP Puerto Salgar - Barrancabermeja

**Fecha:** 18/10/2025  
**Sistema:** Gestión Social  
**Responsable:** Gerente Social / Especialista Social  
**Versión:** 1.0  

---

## 1. INTRODUCCIÓN

### 1.1 Propósito

Define la **arquitectura del Plan de Gestión Social** del proyecto, estableciendo:

- Estructura organizacional social
- Programas sociales principales
- Sistema de atención de PQRS
- Oficinas de Atención al Usuario (OAU)
- Integración con comunidades

### 1.2 Alcance

**Ciclo de vida completo (25 años):**
- Preconstrucción: Socialización del proyecto
- Construcción: Contratación local, PQRS
- O&M: Atención a usuarios, educación vial
- Reversión: Gestión de impactos sociales

**Cobertura:** 4 municipios (Puerto Salgar, Puerto Boyacá, Puerto Berrío, Barrancabermeja) + 259.6 km principales + 33.4 km adicionales

### 1.3 Referencias

- [T01 - Ficha Sistema Gestión Social](41_T01_Ficha_Sistema_Gestion_Social_v1.0.md)
- [T02 - Análisis de Requisitos Social](51_T02_Analisis_Requisitos_Gestion_Social_v1.0.md)
- [AT8 - Gestión Social](../II.%20Apendices%20Tecnicos/AT8_Gestion_Social_v1.0.md)

---

## 2. ESTRUCTURA ORGANIZACIONAL

### 2.1 Equipo Social

```
┌──────────────────────────────────────────────────────┐
│         GERENTE SOCIAL                               │
│         (Coordinación general)                       │
└────────┬─────────────────────────────────────────────┘
         │
    ┌────┴────┬────────┬────────┐
    │         │        │        │
┌───▼───┐ ┌──▼───┐ ┌─▼────┐ ┌─▼──────────┐
│Trabaj.│ │Trabaj│ │Trabaj│ │Promotores  │
│Social │ │Social│ │Social│ │Comunitarios│
│(Predial│ │(PQRS)│ │(Educ)│ │(8-12)      │
│Reasen.)│ │      │ │Vial) │ │            │
└───────┘ └──────┘ └──────┘ └────────────┘
```

**Total equipo:** 15-20 personas

---

## 3. PROGRAMAS SOCIALES

### 3.1 Arquitectura de Programas

```
PLAN DE GESTIÓN SOCIAL (PGS)

├─ 1. Contratación Mano de Obra Local (≥50%)
│  ├─ Base de datos de mano de obra
│  ├─ Convocatorias públicas
│  └─ Registro de contrataciones
│
├─ 2. Sistema de Atención de PQRS (24/7)
│  ├─ 4 canales: presencial, teléfono, web, correo
│  ├─ Software de gestión (trazabilidad)
│  └─ Tiempo respuesta: ≤ 15 días
│
├─ 3. Participación Comunitaria
│  ├─ Reuniones trimestrales (4 municipios)
│  ├─ Veedurías ciudadanas
│  └─ Material informativo
│
├─ 4. Plan de Reasentamientos (si aplica)
│  ├─ Censo de hogares afectados
│  ├─ Reasentamiento físico
│  └─ Reasentamiento económico
│
├─ 5. Educación Vial
│  ├─ Campañas en colegios
│  ├─ Talleres para conductores
│  └─ Material educativo
│
├─ 6. Apoyo a Economías Locales
│  ├─ Fortalecimiento empresarial
│  ├─ Capacitación (SENA)
│  └─ Acceso a oportunidades
│
└─ 7. Monitoreo Social Continuo
   ├─ Indicadores sociales
   ├─ Encuestas de percepción
   └─ Reportes mensuales
```

---

## 4. OFICINAS DE ATENCIÓN AL USUARIO (OAU)

### 4.1 Distribución de OAU

| Municipio | Ubicación | Servicios |
|:----------|:----------|:----------|
| **Puerto Salgar** | Centro urbano | Información, PQRS, Predial |
| **Puerto Boyacá** | Centro urbano | Información, PQRS, Predial |
| **Puerto Berrío** | Centro urbano | Información, PQRS |
| **Barrancabermeja** | Centro urbano | Información, PQRS |

**Horario:** Lunes-Viernes 8:00-17:00, Sábado 8:00-12:00

---

## 5. SISTEMA DE PQRS

### 5.1 Arquitectura de PQRS

```
┌────────────────────────────────────────────────────┐
│  CANALES DE RECEPCIÓN                              │
│  ├─ Presencial (4 OAU)                            │
│  ├─ Línea telefónica 24/7                         │
│  ├─ Correo electrónico                            │
│  └─ Portal web                                     │
└──────────────┬─────────────────────────────────────┘
               ▼
┌────────────────────────────────────────────────────┐
│  SOFTWARE DE GESTIÓN (BD Centralizada)             │
│  ├─ Registro de PQRS (radicado automático)        │
│  ├─ Asignación a responsables                      │
│  ├─ Seguimiento (estado, tiempos)                  │
│  └─ Generación de reportes                         │
└──────────────┬─────────────────────────────────────┘
               ▼
┌────────────────────────────────────────────────────┐
│  ATENCIÓN Y RESPUESTA (≤ 15 días)                  │
│  ├─ Investigación                                  │
│  ├─ Elaboración de respuesta                       │
│  └─ Notificación al ciudadano                      │
└────────────────────────────────────────────────────┘
```

---

## 6. ESTIMACIÓN DE RECURSOS

### 6.1 CAPEX

| Categoría | Costo (USD) |
|:----------|:------------|
| 4 OAU (oficinas) | $180,000 |
| Sistema PQRS (software) | $85,000 |
| Plan de Reasentamientos | $1,200,000 |
| Material educativo | $45,000 |
| Equipamiento | $65,000 |
| **TOTAL** | **$1,575,000 USD** |

### 6.2 OPEX Anual

| Categoría | Costo/Año (USD) |
|:----------|:----------------|
| Personal (gerente, trabajadores, promotores) | $320,000 |
| Operación OAU | $85,000 |
| Programas participación | $95,000 |
| Educación vial | $55,000 |
| Otros | $160,000 |
| **TOTAL** | **$715,000/año** |

---

## 7. CONTROL DE VERSIONES

| Versión | Fecha | Responsable | Descripción |
|:---:|:---:|:---|:---|
| **v1.0** | 18/10/2025 | Administrador Contractual EPC | Plan de gestión social conceptual |
| **v1.2** | 22/10/2025 | Administrador Contractual EPC | **Revisión con información oficial:** Cobertura actualizada, longitudes 259.6 km + 33.4 km |

---

**Versión:** 1.2 ✅ **REVISADO CON INFORMACIÓN OFICIAL DEL PROYECTO**  
**Estado:** ✅ Plan de Gestión Social Definido + Información Oficial Integrada  
**Fecha:** 22/10/2025  
**Responsable:** Gerente Social / Especialista Social  
**Próximo documento:** T04 - Plan de Gestión Social Detallado  

---

**✅ REVISADO CON INFORMACIÓN OFICIAL DEL PROYECTO**
- Cobertura actualizada: 259.6 km principal + 33.4 km adicionales
- Longitudes validadas contra información oficial
- Metodología PKD lineal aplicada

---

**Fin del documento - T03 Plan de Gestión Social**  
*Metodología Punto 42 v1.0*

