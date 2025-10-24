# T04: ESPECIFICACIONES TÉCNICAS - ESTACIONES METEOROLÓGICAS
## Proyecto APP Puerto Salgar - Barrancabermeja

**Fecha:** 21/10/2025  
**Sistema:** Estaciones Meteorológicas  
**Responsable:** Ing. Ambiental / Ing. ITS  
**Versión:** 1.1  
---

## 📋 **CONTROL DE CAMBIOS**

| Versión | Fecha | Cambios | Autor |
|:--------|:------|:--------|:------|
| 1.0 | 21/10/2025 | Creación inicial - 2 estaciones en peajes | Ing. Ambiental |
| 1.1 | 22/10/2025 | **Revisión con información oficial:** 3 estaciones (2 peajes + 1 CCO) | Ing. Ambiental |

---

## 1. IDENTIFICACIÓN

| Campo | Valor |
|:------|:------|
| **Sistema** | Estaciones Meteorológicas |
| **Cantidad** | **3 Davis Pro2** (2 peajes + 1 CCO) |
| **CAPEX** | **COP $19.5M** (~USD $4,875) |
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
| Davis Pro2 Plus | 3 | $15,000,000 |
| Instalación | 3 | $2,250,000 |
| Software integración | 1 | $2,250,000 |
| **TOTAL** | - | **$19,500,000** |

---

**FIN T04 ESTACIONES METEOROLÓGICAS v1.1**

---

**✅ REVISADO CON INFORMACIÓN OFICIAL DEL PROYECTO**
- Cantidad actualizada: 3 estaciones meteorológicas
- Ubicaciones: 2 peajes + 1 CCO La Lizama PK 4+300
- CAPEX actualizado: COP $19.5M (~USD $4,875)
- Metodología PKD lineal aplicada
