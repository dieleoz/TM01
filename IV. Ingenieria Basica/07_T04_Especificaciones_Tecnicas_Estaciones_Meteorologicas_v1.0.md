# T04: ESPECIFICACIONES TÉCNICAS - ESTACIONES METEOROLÓGICAS
## Proyecto APP Puerto Salgar - Barrancabermeja

**Fecha:** 21/10/2025  
**Sistema:** Estaciones Meteorológicas  
**Responsable:** Ing. Ambiental / Ing. ITS  
**Versión:** 1.0  
**Referencia Validación:** 26_VALIDACION_CONTRACTUAL_ESTACIONES_METEOROLOGICAS_v1.0  

---

## 1. IDENTIFICACIÓN

| Campo | Valor |
|:------|:------|
| **Sistema** | Estaciones Meteorológicas |
| **Cantidad** | **2 Davis Pro2** (peajes) |
| **CAPEX** | **COP $13M** (~USD $3,250) |
| **Función** | Informar condiciones meteorológicas al CCO |

---

## 2. NORMATIVA

### Nacional
- **Resolución 546/2018** - IP/REV (Art. X: Monitoreo ambiental en peajes)
- **AT2** - "Informar" condiciones meteorológicas

### Internacional
- **ISO TC-204** - ITS
- **WMO** - Organización Meteorológica Mundial

---

## 3. ESPECIFICACIONES TÉCNICAS

### 3.1 Estación Davis Vantage Pro2

| Parámetro | Especificación |
|:----------|:---------------|
| **Modelo** | Davis Vantage Pro2 Plus |
| **Variables medidas** | Temperatura, humedad, presión, lluvia, viento, radiación solar |
| **Precisión temperatura** | ±0.5°C |
| **Precisión humedad** | ±3% |
| **Rango temperatura** | -40°C a +65°C |
| **Transmisión** | Inalámbrica 300 m + cableada (backup) |
| **Alimentación** | Solar + batería |
| **Actualización datos** | 60 segundos |

### 3.2 Integración con SCADA/CCO

- ✅ API de integración (REST o Modbus)
- ✅ Transmisión al SCADA cada 60 seg
- ✅ Almacenamiento histórico 365 días
- ✅ Reporte webservice/PDF por UF
- ✅ Exportación datos para ANI

### 3.3 Datos de Terceros (Opcional)

- API IDEAM (Instituto de Hidrología, Meteorología)
- API otras estaciones cercanas
- Complemento para visibilidad (niebla)

---

## 4. UBICACIONES

| Ubicación | PK | Función |
|:----------|:---|:--------|
| **Peaje Zambito** | RN 4511 PK 9+200 | Monitoreo peaje + área servicio |
| **Peaje Aguas Negras** | RN 4511 PK 81+800 | Monitoreo peaje + área servicio |

---

## 5. COMPONENTES

| Componente | Especificación |
|:-----------|:---------------|
| Console | Davis Vantage Pro2 Plus |
| Sensor temperatura/humedad | Protección radiación |
| Pluviómetro | Resolución 0.2 mm |
| Anemómetro | Viento 0-80 m/s |
| Panel solar | 12V, carga batería |
| Batería | 12V 7Ah (autonomía 30 días) |
| Data Logger | Weatherlink |

---

## 6. PRESUPUESTO

| Ítem | Cantidad | Precio (COP) |
|:-----|:---------|:-------------|
| Davis Pro2 Plus | 2 | $10,000,000 |
| Instalación | 2 | $1,500,000 |
| Software integración | 1 | $1,500,000 |
| **TOTAL** | - | **$13,000,000** |

---

**FIN T04 ESTACIONES METEOROLÓGICAS v1.0**
