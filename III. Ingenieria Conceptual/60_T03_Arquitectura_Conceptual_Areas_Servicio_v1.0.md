# T03: ARQUITECTURA CONCEPTUAL - SISTEMA DE ÁREAS DE SERVICIO
## Proyecto APP Puerto Salgar - Barrancabermeja

**Fecha:** 18/10/2025  
**Sistema:** Áreas de Servicio (Paraderos, Sanitarios, Talleres)  
**Responsable:** Ingeniero de Arquitectura e Infraestructura  
**Versión:** 1.0  

---

## 1. INTRODUCCIÓN

### 1.1 Propósito

Define la **arquitectura conceptual** de las Áreas de Servicio Obligatorias, estableciendo:

- Layout arquitectónico de áreas de servicio completas
- Distribución de servicios (sanitarios, restaurantes, talleres)
- Sistemas de agua, saneamiento, energía
- Integración con sistema de emergencias y CCTV

### 1.2 Alcance

**2 Áreas de Servicio Obligatorias (AT1 Cap. 3):**
- **Cantidad:** 2 áreas completas (1 asociada a cada peaje)
- **Ubicación:** Peaje Zambito (PK 9.2), Peaje Aguas Negras (PK 80)
- **Servicios:** Sanitarios, restaurante, taller 24/7, base operativa, CCTV, iluminación (AT1 Tabla 53)
- **Fundamento legal:** AT1 Cap. 3 - "un Área de Servicio asociada a cada Estación de peaje"
- **Integración:** Con CCO La Lizama PK 4+300 para monitoreo y control

### 1.3 Referencias

- [T01 - Ficha Sistema Áreas de Servicio](36_T01_Ficha_Sistema_Areas_Servicio_v1.0.md)
- [T02 - Análisis de Requisitos Áreas Servicio](45_T02_Analisis_Requisitos_Areas_Servicio_v1.0.md)

---

## 2. ARQUITECTURA DE ALTO NIVEL

### 2.1 Layout CORREGIDO: Complejo Integrado Peaje + Área de Servicio

```
┌──────────────────────────────────────────────────────────────────────────────┐
│     COMPLEJO INTEGRADO: PEAJE + ÁREA DE SERVICIO (2 complejos en proyecto)  │
│                                                                              │
│     Ubicación 1: Zambito (PK 9.2)                                          │
│     Ubicación 2: Aguas Negras (PK 80)                                      │
└──────────────────────────────────────────────────────────────────────────────┘

┌────────────────────────────────────┐    ┌──────────────────────────────────┐
│   ZONA 1: PEAJE (Lado A-B)        │    │  ZONA 2: ÁREA DE SERVICIO        │
│                                    │    │  (Adyacente al peaje)            │
│  ┌─────────────────┐               │    │                                  │
│  │  SUBESTACIÓN    │  ◄────────────┼────┼──────┐ Alimenta ambas zonas     │
│  │  200 kVA        │               │    │      │ (90 kW total)             │
│  │  13.2 kV → 220V │               │    │      │                           │
│  └─────────────────┘               │    │  ┌───▼──────────┐               │
│                                    │    │  │ TABLERO      │               │
│  ┌─────────────────┐               │    │  │ SECUNDARIO   │               │
│  │  GENERADOR      │               │    │  │ 220V / 380V  │               │
│  │  150 kW         │               │    │  │ Breakers     │               │
│  │  Respalda ambas zonas          │    │  └──────────────┘               │
│  └─────────────────┘               │    │         │                        │
│                                    │    │    ┌────┴────┐                  │
│  [TAG] [TAG] [TAG] (Pistas TAG)    │    │    │  Ilum.  │ Dist. BT        │
│  [MANUAL] (Pista manual)           │    │    │  CCTV   │ (220V)          │
│  [Oficinas TAG] [CCTV]             │    │    │  WiFi   │                 │
│                                    │    │    └─────────┘                  │
│  Carga: 50 kW                      │    │                                  │
└────────────────────────────────────┘    │  ┌────────────┐  ┌──────────┐  │
                                          │  │ Sanitarios │  │Restaurant│  │
                                          │  │ (10 unid.) │  │ 150 m²   │  │
           ← ~200m de cableado BT →       │  │  120 m²    │  │ 80 comen │  │
                                          │  └────────────┘  └──────────┘  │
                                          │                                  │
                                          │  ┌─────────────┐                │
                                          │  │   Taller    │                │
                                          │  │   Mecánico  │                │
                                          │  │   200 m²    │                │
                                          │  │   2 bahías  │                │
                                          │  └─────────────┘                │
                                          │                                  │
                                          │  ┌──────────────────────┐       │
                                          │  │ PARQUEO (2,500 m²)   │       │
                                          │  │ 50 espacios          │       │
                                          │  └──────────────────────┘       │
                                          │                                  │
                                          │  SERVICIOS TÉCNICOS:             │
                                          │  ├─ Tanque agua 10,000 L         │
                                          │  ├─ PTAR local                   │
                                          │  ├─ Iluminación (20 LED)         │
                                          │  ├─ CCTV (10 cámaras)            │
                                          │  ├─ WiFi público                 │
                                          │  └─ Sistema contra incendios     │
                                          │                                  │
                                          │  Carga: 40 kW                    │
                                          └──────────────────────────────────┘

CONCEPTO ARQUITECTÓNICO CLAVE:

⭐ PEAJE + ÁREA = COMPLEJO ÚNICO (comparten infraestructura eléctrica)

Cargas:
├─ Peaje: 50 kW (TAG, CCTV, oficinas, iluminación)
├─ Área: 40 kW (restaurante, taller, sanitarios, iluminación)
└─ TOTAL: 90 kW < 160 kW disponible (200 kVA @ FP=0.8) ✅

Respaldo:
├─ Generador 150 kW respalda AMBAS zonas
├─ ATS conmuta automáticamente en falla de red
└─ UPS 50 kVA respalda cargas críticas (TAG, CCTV)

Ventajas arquitectónicas:
✅ Economía de escala (1 subestación sirve a 2 instalaciones)
✅ Menor CAPEX (no duplicar equipos eléctricos)
✅ Menor OPEX (mantenimiento unificado)
✅ Mayor confiabilidad (respaldo único robusto)
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

### 5.2 CAPEX Áreas de Servicio CORREGIDO (2 complejos integrados)

#### 5.2.1 Construcción e Infraestructura (por área)

| Ítem | Área (m²) | Costo Unit. (USD/m²) | Costo Total (USD) |
|:-----|:----------|:---------------------|:------------------|
| **Edificaciones** |
| Módulo Sanitarios (H/M/PcD) | 120 | $1,200 | $144,000 |
| Restaurante / Cafetería | 150 | $1,000 | $150,000 |
| Taller Mecánico (2 bahías) | 200 | $800 | $160,000 |
| Base Operativa (oficinas + dormitorios) | 80 | $900 | $72,000 |
| Garaje (vehículos emergencia) | 100 | $400 | $40,000 |
| **Urbanismo** |
| Parqueadero (50 espacios, pavimento) | 2,500 | $80 | $200,000 |
| Vías internas y accesos | 1,500 | $60 | $90,000 |
| Andenes peatonales | 500 | $40 | $20,000 |
| Zonas verdes y paisajismo | 5,050 | $15 | $75,750 |
| **SUBTOTAL CONSTRUCCIÓN** | | | **$951,750** |

#### 5.2.2 Sistemas y Equipos (por área)

| Sistema | Descripción | Costo (USD) |
|:--------|:------------|:------------|
| **Agua y Saneamiento** |
| Tanque agua potable 10,000 L | Con bomba y red distribución | $25,000 |
| PTAR (Planta Tratamiento) | 50 personas, compacta | $80,000 |
| Red hidráulica interna | Tuberías, accesorios | $35,000 |
| **Eléctrico (SIN transformador ni generador)** |
| Tablero secundario BT | 220V/380V, breakers, medición | $8,000 |
| Cableado BT (~200m desde peaje) | Cu, ductos, accesorios | $25,000 |
| **Iluminación** |
| 20 Luminarias LED 100W | Postes, cableado | $25,000 |
| **Comunicaciones y Seguridad** |
| 10 Cámaras CCTV + NVR | IP, PoE, 30 días grabación | $15,000 |
| WiFi público | Access Points, controlador | $8,000 |
| Sistema contra incendios | Extintores, señalización, rociadores | $20,000 |
| **Mobiliario y Equipamiento** |
| Mobiliario restaurante | Mesas, sillas, cocina industrial | $60,000 |
| Equipos taller | Elevadores, herramientas, compresor | $80,000 |
| Equipos sanitarios | Inodoros, lavamanos, secadores | $30,000 |
| Señalización interna | Direccional, emergencia | $5,000 |
| **SUBTOTAL SISTEMAS** | | **$416,000** |

#### 5.2.3 Equipos Operativos (por área) - SIN VEHÍCULOS

| Ítem | Cantidad | Costo Unitario | Costo Total (USD) |
|:-----|:---------|:---------------|:------------------|
| ~~Patrulla de Emergencia~~ | ~~1~~ | ~~$45,000~~ | ~~$45,000~~ **ELIMINADO** |
| ~~Camioneta Operativa~~ | ~~1~~ | ~~$35,000~~ | ~~$35,000~~ **ELIMINADO** |
| ~~Ambulancia~~ | ~~1~~ | ~~$65,000~~ | ~~$65,000~~ **ELIMINADO** |
| ~~Grúa Pequeña (10 ton)~~ | ~~1~~ | ~~$80,000~~ | ~~$80,000~~ **ELIMINADO** |
| Equipos médicos (enfermería básica) | 1 | $15,000 | $15,000 |
| **SUBTOTAL EQUIPOS** | | | **$15,000** |

#### 🔴 **Aclaración Crítica v1.1:**
- ❌ Los vehículos estaban DUPLICADOS
- ✅ Los vehículos de emergencia están presupuestados en Sistema de Emergencias ($3.19M)
- ✅ Las áreas ALOJAN estos vehículos en sus garajes (garajes ya presupuestados en construcción)
- ✅ Los vehículos se ESTACIONAN aquí pero se presupuestan en Emergencias
- **Eliminación de duplicación:** -$225,000 × 2 áreas = **-$450,000 USD**

#### 5.2.4 CAPEX Total por Área CORREGIDO v1.1

| Categoría | Costo (USD) |
|:----------|:------------|
| Construcción e Infraestructura | $951,750 |
| Sistemas y Equipos | $416,000 |
| Equipos Operativos (sin vehículos) | $15,000 |
| Instalación e Integración (8%) | $110,620 |
| **TOTAL por Área** | **$1,493,370** |

#### 5.2.5 CAPEX Total 2 Áreas de Servicio FINAL

| Concepto | Cálculo | Costo (USD) |
|:---------|:--------|:------------|
| 2 Áreas de Servicio Completas | 2 × $1,493,370 | **$2,986,740** |
| Contingencia (5%) | | $149,337 |
| **TOTAL CAPEX ÁREAS** | | **$3,136,077 USD** |

**Conversión COP (TRM 4,000):** COP 12,544,308,000 (~12.5 mil millones)

#### 🔴 **Corrección Final v1.1 (21/10/2025):**
- v1.0: Incluía vehículos emergencia duplicados ($480K)
- v1.1: Vehículos eliminados (ya en Sistema Emergencias)
- **Ahorro: -$510,300 USD (-14%)**

---

#### 🔴 **Comparación vs. Versión Anterior:**

| Concepto | v1.0 (14 áreas indep.) | v1.1 (2 áreas integradas) | Cambio |
|:---------|:----------------------|:--------------------------|:-------|
| **Construcción** | 14 × ~$1M = $14M | 2 × $951K = $1.9M | **-$12,100,000** |
| **Transformadores** | 14 × $25K = $350K | $0 (integradas) | **-$350,000** |
| **Generadores** | 14 × $35K = $490K | $0 (integradas) | **-$490,000** |
| **Sistemas eléctricos** | 14 × $50K = $700K | 2 × $33K = $66K | **-$634,000** |
| **Vehículos** | 14 × $240K = $3.36M | 2 × $240K = $480K | **-$2,880,000** |
| **TOTAL v1.0 estimado** | | | **~$18,900,000** |
| **TOTAL v1.1 corregido** | | | **$3,646,377** |
| **AHORRO TOTAL** | | | **-$15,253,623 USD (-81%)** |

**Razón del ahorro MASIVO:**
- ❌ Versión anterior asumía 14 áreas INDEPENDIENTES con infraestructura completa cada una
- ✅ Versión correcta: Solo 2 áreas INTEGRADAS a peajes (comparten subestación, generador)
- 🔥 **Este es el MAYOR ahorro de todos los sistemas**

---

## 6. CONTROL DE VERSIONES

| Versión | Fecha | Responsable | Descripción |
|:---:|:---:|:---|:---|
| **v1.0** | 18/10/2025 | Administrador Contractual EPC | Arquitectura conceptual inicial de áreas de servicio |
| **v1.1** | 20/10/2025 | Administrador Contractual EPC | **Rediseño arquitectónico COMPLETO:** 14 áreas indep. → 2 áreas integradas a peajes (comparten subestación 200kVA, generador 150kW). Layout unificado, CAPEX -$15.25M (-81%). MAYOR AHORRO DEL PROYECTO |
| **v1.2** | 22/10/2025 | Administrador Contractual EPC | **Revisión con información oficial:** Integración CCO La Lizama PK 4+300 |

---

**Versión:** 1.2 ✅ **REVISADO CON INFORMACIÓN OFICIAL DEL PROYECTO**  
**Estado:** ✅ Arquitectura Validada Contractualmente + Información Oficial Integrada  
**Fecha:** 22/10/2025  
**Responsable:** Ingeniero de Arquitectura e Infraestructura  
**Próximo documento:** T04 - Especificaciones Técnicas de Áreas de Servicio  

---

**✅ REVISADO CON INFORMACIÓN OFICIAL DEL PROYECTO**
- Integración con CCO La Lizama PK 4+300 (RN 4513) documentada
- Ubicaciones de áreas de servicio validadas contra información oficial
- Metodología PKD lineal aplicada

---

**Fin del documento - T03 Arquitectura Conceptual Áreas de Servicio**  
*Metodología Punto 42 v1.0*  
*Proyecto APP Puerto Salgar - Barrancabermeja*

