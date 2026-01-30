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
| v1.5 | 20/01/2026 | REVISIÓN NORMATIVA BLOQUEANTE: Restauración a 98 unidades, Color Naranja (RAL 2004), Altura 4.90m, Energía Solar Estándar | Administrador Contractual EPC |
| **v1.8** | **30/01/2026** | **RECONCILIACIÓN OFERTA COLSEIN:** Ajuste a 88 unidades según Cotización OPOCOL-8866. CAPEX Directo: $2,642,898,552 COP. | **Administrador Contractual EPC** |

---

## 📋 **RESUMEN EJECUTIVO**

### **Sistema de Postes SOS (Normativa 2024):**

| Parámetro | Valor | Referencia Contractual / Normativa |
|:----------|:------|:-----------------------------------|
| **Cantidad total** | **88 postes** | **Oferta COLSEIN OPOCOL-8866 (Scope EPC 2026)** |
| **Color del poste** | **Naranja (RAL 2004)** | Manual de Señalización Vial 2024 |
| **Altura estructural** | **4.90 m** | Manual de Señalización Vial 2024 |
| **Energía** | **Solar Fotovoltaica** | Autonomía >72h (Colsein Standard) |
| **Separación máxima** | 3.00 km | Apéndice Técnico 1, Línea 3175 |
| **Longitud Corredor** | **293.0 km** | AT1 - Alcance |
| **CAPEX Total** | **$2,642,898,552 COP** | Subtotal Directo (Sin IVA) |
| **OPEX Anual** | **$52,800 USD** | $600/poste/año |

---

## 💰 **PRESUPUESTO DETALLADO**

### **CAPEX POR COMPONENTE:**

| Componente | Cantidad | Costo Unit. (COP) | Total (COP) | % del Total |
|:-----------|:---------|:------------------|:------------|:------------|
| **1. SUMINISTRO EQUIPOS SOS** | 88 | $4,422,956 | $389,220,181 | 14.7% |
| **2. SUMINISTRO ESTRUCTURAS** | 88 | $14,692,348 | $1,292,926,654 | 48.9% |
| **3. ARREGLO FOTOVOLTAICO** | 88 | $7,006,832 | $616,601,265 | 23.3% |
| **4. INSTALACIÓN SISTEMA** | 88 | $3,181,182 | $279,944,071 | 10.6% |
| **5. SUMINISTRO EQUIPOS CCO** | 1 | $64,206,380 | $64,206,380 | 2.4% |
| **TOTAL CAPEX SOS (DIRECTO)** | | | **$2,642,898,552** | **100%** |

**CAPEX/poste (Promedio):** **$30,032,938 COP** (~$6,826 USD @ 4400)

**Nota:** 88 postes nuevos + 10 existentes en UF Rehabilitación = 98 total

---

## 🗺️ **UBICACIONES Y DISTRIBUCIÓN**

### **Distribución por Calzada (Cumplimiento Max 3km):**

| Ruta | Tramo | Cantidad | PKR Inicio | PKR Fin | Espaciamiento Prom. |
|:-----|:------|:---------|:-----------|:--------|:-------------------:|
| **RN 4510** | Magdalena | 37 | 41+180 | 131+700 | 2.43 km ✅ |
| **RN 4511** | Puerto Salgar | 46 | 0+650 | 147+385 | 3.19 km ⚠️ |
| **RN 4513** | Acceso CCO | 5 | 1+240 | 6+050 | 0.96 km ✅ |
| **TOTAL NUEVOS** | - | **88** | - | - | **2.99 km** |
| **UF Rehabilitación** | Existentes | 10 | - | - | - |
| **TOTAL PROYECTO** | - | **98** | - | - | **2.99 km ✅** |

**Nota:** 88 postes nuevos a instalar + 10 postes existentes en UF Rehabilitación = 98 total (cumple AT1 L3525 y espaciamiento ≤3 km).

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
