# T03: PLAN DE GESTIÓN PREDIAL - ARQUITECTURA CONCEPTUAL
## Proyecto APP Puerto Salgar - Barrancabermeja

**Fecha:** 18/10/2025  
**Sistema:** Gestión Predial  
**Responsable:** Gerente Predial / Abogado Especialista Predial  
**Versión:** 1.0  

---

## 1. INTRODUCCIÓN

### 1.1 Propósito

Define la **arquitectura del Plan de Gestión Predial** del proyecto (RUTA CRÍTICA), estableciendo:

- Estructura organizacional predial
- Flujo de adquisición predial (voluntaria y expropiación)
- Gestión de expedientes prediales
- Cronograma de entregas a construcción

### 1.2 Alcance

**Proceso de adquisición:**
- Censo Predial: 150-300 predios
- Avalúos Comerciales (Res. 1508/2012)
- Adquisición Voluntaria (meta 80-85%)
- Expropiación (15-20%)
- Servidumbres (50-100)
- Subcuenta Predial (ANI)

**Fases críticas:** Principalmente Preconstrucción y primeros 2 años de Construcción

### 1.3 Referencias

- [T01 - Ficha Sistema Gestión Predial](42_T01_Ficha_Sistema_Gestion_Predial_v1.0.md)
- [T02 - Análisis de Requisitos Predial](52_T02_Analisis_Requisitos_Gestion_Predial_v1.0.md)
- [AT7 - Gestión Predial](../II.%20Apendices%20Tecnicos/AT7_Gestion_Predial_v1.0.md)

---

## 2. ESTRUCTURA ORGANIZACIONAL

### 2.1 Equipo Predial

```
┌──────────────────────────────────────────────────────┐
│         GERENTE PREDIAL                              │
│         (Coordinación general)                       │
└────────┬─────────────────────────────────────────────┘
         │
    ┌────┴────┬────────┬────────┬───────────┐
    │         │        │        │           │
┌───▼───┐ ┌──▼───┐ ┌─▼────┐ ┌─▼──────┐ ┌──▼──────┐
│Abogados│ │Topógr│ │Avalua│ │Asistent│ │Negociad│
│(3-5)   │ │(2-3) │ │(2-3) │ │(4-6)   │ │(2-3)   │
│Procesos│ │Levant│ │Metodol│ │Expedien│ │Predios │
│Legales │ │      │ │ANI   │ │tes     │ │        │
└────────┘ └──────┘ └──────┘ └────────┘ └─────────┘
```

**Total equipo:** 15-20 personas (Fase intensiva años 1-3)

---

## 3. FLUJO DE ADQUISICIÓN PREDIAL

### 3.1 Proceso Completo

```
┌─────────────────────────────────────────────────────┐
│ FASE 1: CENSO PREDIAL (Meses 1-3)                   │
│    ├─ Identificación de predios (150-300)           │
│    ├─ Levantamiento topográfico                      │
│    ├─ Estudio de títulos (ORIP)                     │
│    └─ Censo socioeconómico                          │
└──────────────┬──────────────────────────────────────┘
               ▼
┌─────────────────────────────────────────────────────┐
│ FASE 2: AVALÚOS (Meses 3-6)                         │
│    ├─ Avalúos comerciales (Res. 1508/2012)         │
│    ├─ Aprobación de ANI                             │
│    └─ Constitución de expedientes                   │
└──────────────┬──────────────────────────────────────┘
               ▼
┌─────────────────────────────────────────────────────┐
│ FASE 3: ADQUISICIÓN VOLUNTARIA (Meses 6-18)         │
│    ├─ Oferta formal a propietarios                  │
│    ├─ Negociación (80-85% de predios)              │
│    ├─ Escrituración ante notario                    │
│    ├─ Registro en ORIP                              │
│    └─ Acta de entrega física                        │
└──────────────┬──────────────────────────────────────┘
               │
        ┌──────┴──────┐
        │             │
        ▼             ▼
┌──────────────┐ ┌──────────────────────────────────┐
│FASE 4A:      │ │FASE 4B:                          │
│ADQUISICIÓN   │ │EXPROPIACIÓN (Meses 12-36)        │
│EXITOSA       │ │   ├─ Proceso judicial/admin.     │
│(80-85%)      │ │   ├─ Avalúo pericial             │
│              │ │   ├─ Consignación                │
│              │ │   ├─ Toma de posesión            │
│              │ │   └─ Sentencia (12-24 meses)     │
└──────────────┘ └──────────────────────────────────┘
               │
               ▼
┌─────────────────────────────────────────────────────┐
│ FASE 5: ENTREGA A CONSTRUCCIÓN (Just in Time)       │
│    └─ Predios entregados según cronograma de obra   │
└─────────────────────────────────────────────────────┘
```

---

## 4. GESTIÓN DE EXPEDIENTES

### 4.1 Contenido de Expediente Predial

```
EXPEDIENTE PREDIAL (Físico + Digital)

├─ 1. Identificación
│  ├─ FMI (Folio Matrícula Inmobiliaria)
│  ├─ Certificado de Tradición y Libertad
│  └─ Plano topográfico
│
├─ 2. Avalúo Comercial
│  ├─ Avalúo según Res. 1508/2012
│  ├─ Aprobación ANI
│  └─ Fotografías
│
├─ 3. Negociación
│  ├─ Oferta formal
│  ├─ Respuesta del propietario
│  └─ Actas de negociación
│
├─ 4. Escrituración
│  ├─ Escritura pública (notario)
│  ├─ Registro en ORIP
│  └─ Paz y salvos
│
└─ 5. Entrega
   ├─ Acta de entrega física
   ├─ Plano de entrega
   └─ Fotografías

Total: 150-300 expedientes completos
```

---

## 5. INTEGRACIÓN CON OTROS SISTEMAS

| Sistema | Interface | Datos |
|:--------|:----------|:------|
| **Gestión Social (AT8)** | Coordinación | Reasentamientos, PQRS prediales |
| **Construcción** | Cronograma | Entrega just-in-time de predios |
| **ANI (Subcuenta)** | Financiera | Solicitud recursos, rendición cuentas |

---

## 6. ESTIMACIÓN DE RECURSOS

### 6.1 CAPEX

| Categoría | Costo (USD) |
|:----------|:------------|
| Adquisición de predios (valor mercado) | $8,500,000 |
| Avalúos (200 predios) | $500,000 |
| Expropiaciones (35 procesos) | $525,000 |
| Servidumbres (70) | $210,000 |
| Saneamiento de títulos | $180,000 |
| Honorarios notariales | $220,000 |
| **TOTAL** | **$10,135,000 USD** |

**Nota:** Valor de predios ($8.5M) es estimado, depende de avalúos reales.

---

## 7. CONTROL DE VERSIONES

| Versión | Fecha | Responsable | Descripción |
|:---:|:---:|:---|:---|
| **v1.0** | 18/10/2025 | Administrador Contractual EPC | Plan de gestión predial conceptual |

---

**Fin del documento - T03 Plan de Gestión Predial**  
*Metodología Punto 42 v1.0*

