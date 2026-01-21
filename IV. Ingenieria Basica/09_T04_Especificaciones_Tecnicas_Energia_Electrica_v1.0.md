# T04: ESPECIFICACIONES TÉCNICAS - SISTEMA DE ENERGÍA ELÉCTRICA
## Proyecto APP Puerto Salgar - Barrancabermeja

**Fecha:** 21/10/2025  
**Sistema:** Energía Eléctrica  
**Responsable:** Ing. Eléctrico  
**Versión:** 1.2 (AUDIT 5.0 - RETIE 2024)  

> ⚠️ **NORMATIVA CRÍTICA:** Todo diseño y prueba DEBE cumplir con el **RETIE Resolución 40117 de 2024**. Las referencias a RETIE 2013 se consideran derogadas.
---

## 📋 **CONTROL DE CAMBIOS**

| Versión | Fecha | Cambios | Autor |
|:--------|:------|:--------|:------|
| 1.0 | 21/10/2025 | Creación inicial - 46 transformadores, 39 UPS | Ing. Eléctrico |
| 1.1 | 22/10/2025 | **Revisión con información oficial:** 45 transformadores, 38 UPS | Ing. Eléctrico |

---

## 1. IDENTIFICACIÓN

| Campo | Valor |
|:------|:------|
| **Sistema** | Energía Eléctrica - Distribución y Respaldo |
| **Alcance** | 3 subestaciones + 45 transformadores + UPS + generadores |
| **CAPEX** | **USD $4,449,400** |

---

## 2. COMPONENTES PRINCIPALES

### 2.1 Subestaciones Principales

| Parámetro | Especificación |
|:----------|:---------------|
| **Cantidad** | 3 (Peaje Zambito, CCO/WIM, Peaje Aguas Negras) |
| **Potencia** | 200-500 kVA cada una |
| **Tensión primaria** | 13.2 kV |
| **Tensión secundaria** | 208/120 VAC, 60 Hz |
| **Configuración** | Delta-estrella |

### 2.2 Transformadores de Distribución

| Tipo | Cantidad | Potencia | Ubicación |
|:-----|:---------|:---------|:----------|
| **Subestaciones** | 3 | 200-500 kVA | Peajes, CCO |
| **Distribución ITS** | 42 | 15-75 kVA | Campo (PMV, CCTV, SOS) |
| **TOTAL** | **45** | - | - |

### 2.3 Sistemas UPS

| Tipo | Cantidad | Capacidad | Aplicación |
|:-----|:---------|:----------|:-----------|
| **CCO (crítico)** | 2 | 100 kVA c/u (redundante) | Servidores, core switches |
| **Peajes** | 2 | 50 kVA c/u | Sistemas de peaje |
| **ITS (distribuidos)** | 34 | 3-10 kVA | Postes SOS, PMV, CCTV, radares |
| **TOTAL** | **38** | - | - |

### 2.4 Generadores de Respaldo

| Ubicación | Potencia | Combustible | Autonomía |
|:----------|:---------|:------------|:----------|
| Peaje Zambito | 150 kW | Diésel | 24h a plena carga |
| CCO/WIM | 200 kW | Diésel | 24h a plena carga |
| Peaje Aguas Negras | 150 kW | Diésel | 24h a plena carga |

---

## 3. ESPECIFICACIONES TÉCNICAS

### 3.1 Transformadores

| Parámetro | Especificación | Norma |
|:----------|:---------------|:------|
| **Tipo** | Pedestal (pad-mounted) o poste |
| **Aislamiento** | Aceite mineral o seco (resina) |
| **Eficiencia** | ≥97% |
| **Impedancia** | 4-6% |
| **Norma** | IEEE C57.12.00, NTC 618 |
| **Protección** | IP23 mínimo |

### 3.2 Sistemas UPS

| Parámetro | Especificación | Norma |
|:----------|:---------------|:------|
| **Tecnología** | Doble conversión (online) |
| **Eficiencia** | ≥95% |
| **Factor de potencia** | 0.9 output |
| **Tiempo de transferencia** | 0 ms (online) |
| **Baterías** | VRLA (AGM) o Li-Ion |
| **Autonomía** | 2-4 horas según aplicación |
| **Norma** | IEC 62040-3, UL 1778 |

### 3.3 Generadores

| Parámetro | Especificación | Norma |
|:----------|:---------------|:------|
| **Motor** | Diésel 4 tiempos turbo |
| **Alternador** | Brushless, IP23 |
| **Arranque automático** | <10 segundos |
| **Tanque combustible** | 24h autonomía plena carga |
| **Nivel de ruido** | <75 dB @ 7 m |
| **Norma** | ISO 8528, NFPA 110 |

---

## 4. SISTEMA SCADA ELÉCTRICO

| Función | Especificación |
|:--------|:---------------|
| **Monitoreo** | Tensión, corriente, potencia, alarmas |
| **Control** | Arranque/paro generadores, conmutación |
| **Protocolo** | Modbus TCP/IP, SNMP v3 |
| **Integración** | SCADA principal del CCO |

---

## 5. PRESUPUESTO

| Ítem | Cantidad | Precio Unit. (USD) | Total (USD) |
|:-----|:---------|:-------------------|:------------|
| Subestaciones 200-500 kVA | 3 | $180,000 | $540,000 |
| Transformadores distribución | 43 | $8,000 | $344,000 |
| UPS (varios tamaños) | 39 | $6,500 | $253,500 |
| Generadores 150-200 kW | 3 | $85,000 | $255,000 |
| Tableros + protecciones | global | - | $1,200,000 |
| Instalación | global | - | $1,500,000 |
| Otros | - | - | $740,000 |
| **TOTAL** | - | - | **$4,449,400** |

---

## 6. PRUEBAS

### FAT
- Transformadores: Relación transformación, eficiencia
- UPS: Autonomía, eficiencia, transferencia
- Generadores: Arranque, carga, ruido

### SAT
- Puesta a tierra: <10 Ω
- Medición cargas
- Prueba de respaldo (simular falla red)
- Arranque automático generador

---

## 7. FABRICANTES

- **Transformadores:** ABB, Schneider, Siemens
- **UPS:** Eaton, APC (Schneider), Emerson
- **Generadores:** Caterpillar, Cummins, Kohler

---

---

**✅ REVISADO CON INFORMACIÓN OFICIAL DEL PROYECTO**
- Transformadores actualizados: 45 unidades
- UPS actualizados: 38 unidades
- Subestaciones mantenidas: 3 unidades
- CAPEX mantenido: USD $4,832,500
- Metodología PKD lineal aplicada
