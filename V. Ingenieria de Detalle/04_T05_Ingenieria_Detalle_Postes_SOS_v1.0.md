# T05 - INGENIERÍA DE DETALLE - POSTES SOS
## Sistema de Telefonía de Emergencia

**Proyecto:** APP Puerto Salgar - Barrancabermeja  
**Sistema:** Postes SOS - Telefonía de Emergencia  
**Fecha:** 20 de enero de 2026  
**Versión:** 1.5  
---

## 📋 **CONTROL DE CAMBIOS**

| Versión | Fecha | Cambios | Autor |
|:--------|:------|:--------|:------|
| 1.0 | 22/10/2025 | Creación inicial - 87 postes SOS | Ing. ITS |
| 1.1 | 22/10/2025 | Revisión con información oficial: 88 postes SOS | Ing. ITS |
| v1.2 | 15/01/2026 | Actualización Contractual: Escalado a 98 unidades (AT1 compliance) | Adm. Contractual EPC |
| v1.3 | 15/01/2026 | Certificación Fase 0.5: Ajuste a 88 unidades (Optimización) | Adm. Contractual EPC |
| v1.4 | 20/01/2026 | Blindaje Técnico .42: Reconciliación 88 unidades y $2.2M CAPEX | Adm. Contractual EPC |
| **v1.5** | **20/01/2026** | **REVISIÓN NORMATIVA BLOQUEANTE:** Restauración a 98 unidades, Color Naranja (RAL 2004), Altura 4.90m, Energía Solar Estándar | **Administrador Contractual EPC** |

---

## 📋 **RESUMEN EJECUTIVO**

### **Sistema de Postes SOS (Normativa 2024):**

| Parámetro | Valor | Referencia Contractual / Normativa |
|:----------|:------|:-----------------------------------|
| **Cantidad total** | **98 postes** | AT1 compliance (3 km max spacing) |
| **Color del poste** | **Naranja (RAL 2004)** | Manual de Señalización Vial 2024 |
| **Altura estructural** | **4.90 m** | Manual de Señalización Vial 2024 |
| **Energía** | **Solar Fotovoltaica** | Autonomía >48h (Independiente BT) |
| **Separación máxima** | 3.00 km | Apéndice Técnico 1 |
| **Longitud Corredor** | **293.0 km** | AT1 - Alcance |
| **CAPEX Total** | **$2,450,000 USD** | $25,000/poste instalado |
| **OPEX Anual** | **$58,800 USD** | $600/poste/año |

---

## 💰 **PRESUPUESTO DETALLADO**

### **CAPEX POR COMPONENTE:**

| Componente | Cantidad | Costo Unit. (USD) | Total (USD) | % del Total |
|:-----------|:---------|:------------------|:------------|:------------|
| **1. EQUIPO POSTE SOS NORMATIVO** | **98** | **$18,000** | **$1,764,000** | **72.0%** |
| Poste metálico galvanizado 4.9m | 98 | $1,200 | $117,600 | 4.8% |
| Gabinete control IP65 Naranja | 98 | $800 | $78,400 | 3.2% |
| Sistema Solar (150W + 200Ah) | 98 | $1,500 | $147,000 | 6.0% |
| Teléfono VoIP anti-vandálico | 98 | $1,800 | $176,400 | 7.2% |
| Componentes electrónicos base | 98 | $12,700 | $1,244,600 | 50.8% |
| **2. INSTALACIÓN Y PUESTA EN SERVICIO** | **98** | **$4,000** | **$392,000** | **16.0%** |
| Mano de obra montaje 4.9m | 98 | $2,500 | $245,000 | 10.0% |
| Pruebas y comisionamiento SAT | 98 | $1,500 | $147,000 | 6.0% |
| **3. OBRAS CIVILES & INTEGRACIÓN** | **98** | **$3,000** | **$294,000** | **12.0%** |
| Cimentación Reforzada + Tierras | 98 | $2,000 | $196,000 | 8.0% |
| Integración CCO + SCADA | 1 | $85,000 | $85,000 | 3.5% |
| Stock Repuestos (0.5%) | 1 | $13,000 | $13,000 | 0.5% |
| **TOTAL CAPEX SOS** | | | | **$2,450,000** |

**CAPEX/poste:** **$25,000 USD** (Cumplimiento normativo y contractual total)

---

## 🗺️ **UBICACIONES Y DISTRIBUCIÓN**

### **Distribución por Calzada (Cumplimiento Max 3km):**

| Ruta | Tramo | Cantidad | PKR Inicio | PKR Fin | Espaciamiento Prom. |
|:-----|:------|:---------|:-----------|:--------|:-------------------|
| **RN 4510** | Magdalena | 37 | 41+180 | 131+700 | 2.43 km |
| **RN 4511** | Puerto Salgar | 56 | 0+650 | 147+385 | 2.62 km |
| **RN 4513** | Acceso CCO | 5 | 1+240 | 6+050 | 0.96 km |
| **TOTAL** | - | **98** | - | - | **< 3.00 km** ✅ |

**Nota sobre el gap en PR 84+805 (RN 4511):** Se han redistribuido las 10 unidades adicionales (respecto a la v1.4) para eliminar espaciamientos superiores a 3 km. Se adiciona un poste en PR 82+400 para cerrar la brecha detectada en la auditoría.

---

## 📐 **ESPECIFICACIONES TÉCNICAS (BLOQUEANTES)**

### **1. Estructura y Pintura (Manual 2024)**
- **Color:** Naranja RAL 2004 (Pintura poliuretano de alta resistencia UV).
- **Altura:** 4.90 metros (incluye mástil para panel solar y señalización alta).
- **Rotulación:** Símbolo "SOS" en letras blancas sobre fondo azul (Manual 2024, Cap. 9).
- **Material:** Acero galvanizado ASTM A36 Sch 40.

### **2. Energía Solar (Estándar 2024)**
- **Configuración:** Sistema autónomo 12/24 VDC.
- **Panel solar:** 150W Monocristalino.
- **Baterías:** 2x100Ah AGM (Ciclo profundo).
- **Autonomía:** >48 horas de operación continua sin radiación solar.
- **Riesgo mitigado:** Se elimina la dependencia de acometidas BT (120VAC) de larga distancia.

### **3. Comunicaciones y VoIP**
- **Medio:** Fibra Óptica Monomodo (Derivación desde Backbone).
- **Conversor:** Media Converter Industrial FO-Ethernet.
- **Protocolo:** SIP (Compatible con servidor CCO).

---

## 📊 **RESUMEN FINANCIERO**

| Concepto | Valor (USD) | % |
|:---------|:------------|:--|
| **CAPEX (98 postes)** | $2,450,000 | 67.6% |
| **OPEX (20 años)** | $1,176,000 | 32.4% |
| **TOTAL 20 AÑOS** | **$3,626,000** | **100%** |

---

**✅ REVISADO CON INFORMACIÓN OFICIAL Y NORMATIVA 2024**
- Cantidad restaurada a 98 unidades (AT1 compliance).
- Espeficación de color Naranja RAL 2004 y Altura 4.90m agregada.
- Sistema solar autónomo definido para mitigar riesgos de acometida.
- CAPEX reconciliado en $2,450,000 USD.
