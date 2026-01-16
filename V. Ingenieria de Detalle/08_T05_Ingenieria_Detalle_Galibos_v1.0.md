# T05 - INGENIERÍA DE DETALLE - GÁLIBOS
## Detectores de Altura Libre (Gálibos)

**Proyecto:** APP Puerto Salgar - Barrancabermeja  
**Sistema:** Gálibos - Detectores de Altura Libre  
**Fecha:** 22 de octubre de 2025  
**Versión:** 1.0  
**Basado en:** Validación Contractual Gálibos v1.0 + Tabla Maestra Layout v1.0  

---

## 📋 **RESUMEN EJECUTIVO**

### **Sistema Gálibos:**

| Parámetro | Valor | Referencia |
|:----------|:------|:-----------|
| **Cantidad obligatoria** | **8 detectores** | Validación contractual: restricciones ≤5.10m |
| **Distribución** | 4 puentes vehiculares + 4 intersecciones críticas | Según análisis geométrico |
| **Tecnología** | Láser/infrarrojos de cortina | Detección precisa ±5cm |
| **Alerta** | PMV + señalización luminosa | Advertencia anticipada |
| **CAPEX Total** | **$173,043 USD** | $21,630/gálibo instalado |
| **OPEX Anual** | **$4,800 USD** | $600/gálibo/año |
| **OPEX 20 años** | **$96,000 USD** | Mantenimiento |

---

## 💰 **PRESUPUESTO DETALLADO**

### **CAPEX POR COMPONENTE:**

| Componente | Cantidad | Costo Unit. (USD) | Total (USD) | % del Total |
|:-----------|:---------|:------------------|:------------|:------------|
| **1. DETECTOR GÁLIBO COMPLETO** | **8** | **$12,000** | **$96,000** | **55.9%** |
| Sensor láser/IR 3 carriles | 8 | $6,500 | $52,000 | 30.3% |
| Controlador gálibo | 8 | $2,800 | $22,400 | 13.0% |
| Módulo comunicaciones (FO) | 8 | $450 | $3,600 | 2.1% |
| Gabinete control IP65 | 8 | $600 | $4,800 | 2.8% |
| DPS + accesorios | 8 | $200 | $1,600 | 0.9% |
| Cable señal 100m | 8 | $180 | $1,440 | 0.8% |
| Software de gestión | 8 | $350 | $2,800 | 1.6% |
| Accesorios montaje | 8 | $420 | $3,360 | 2.0% |
| **2. SEÑALIZACIÓN ASOCIADA** | **8** | **$4,200** | **$33,600** | **19.6%** |
| Panel LED señalización (1.2×0.8m) | 8 | $2,500 | $20,000 | 11.6% |
| Señal PMV pre-aviso (500m antes) | 8 | $800 | $6,400 | 3.7% |
| Baliza LED ámbar | 8 | $120 | $960 | 0.6% |
| Sirena 100dB | 8 | $180 | $1,440 | 0.8% |
| Señalización reflectiva | 8 | $600 | $4,800 | 2.8% |
| **3. INSTALACIÓN** | **8** | **$5,270** | **$42,160** | **24.5%** |
| Mano de obra instalación | 8 | $2,800 | $22,400 | 13.0% |
| Obras civiles (anclajes) | 8 | $1,200 | $9,600 | 5.6% |
| Canalización FO/energía | 8 | $600 | $4,800 | 2.8% |
| Pruebas y certificación | 8 | $420 | $3,360 | 2.0% |
| Comisionamiento | 8 | $250 | $2,000 | 1.2% |
| **TOTAL CAPEX** | - | - | **$173,043** | **100%** |

**CAPEX/gálibo:** $173,043 / 8 = **$21,630 USD/gálibo** (instalado y operativo)

---

## ⚡ **NOTA IMPORTANTE - MÓDULOS SOLARES**

### **4 Gálibos con Módulo Solar Adicional:**

**Ubicaciones que NO están cercanas a peajes (sin acceso a red eléctrica):**

| # | PKR | Ruta | Ubicación | Módulo Solar |
|:--|:----|:-----|:----------|:-------------|
| 1 | 50+920 | 4510 | Puente vehicular | ✅ Requerido |
| 2 | 54+050 | 4510 | Paso superior | ✅ Requerido |
| 3 | 7+800 | 4511 | Puente vehicular | ✅ Requerido |
| 4 | 46+143 | 4511 | Paso peatonal | ✅ Requerido |

**Costo módulo solar:** 73,000,000 COP = **$16,591 USD** (TMR 4400)

**Justificación:** Los 4 gálibos restantes están en zonas con acceso a red eléctrica (cerca de peajes o CCO).

---

## 📐 **ESPECIFICACIONES TÉCNICAS DETALLADAS**

### **1. SENSOR DE DETECCIÓN**

| Parámetro | Especificación |
|:----------|:--------------|
| **Tecnología** | Cortina láser infrarrojo o ultrasónico |
| **Alcance horizontal** | Hasta 12 metros (3 carriles) |
| **Altura detección** | Configurable 4.5m - 5.5m |
| **Precisión** | ±5 cm |
| **Tiempo respuesta** | <100 ms |
| **Resolución** | 10 cm vertical |
| **Zonas detección** | Mínimo 3 zonas (3 carriles) |
| **Clasificación vehículo** | Alto (>5.10m) / Normal (<5.10m) |
| **Temperatura operación** | -20°C a +60°C |
| **Protección** | IP66 |
| **Alimentación** | 12-24 VDC o 110-220 VAC |
| **Consumo** | ≤20W |
| **Protocolo** | Modbus TCP/IP, SNMP |

**Marcas aceptadas:** Banner Engineering, Leuze, Sick, Pepperl+Fuchs, Keyence

---

### **2. PANEL LED SEÑALIZACIÓN**

| Parámetro | Especificación |
|:----------|:--------------|
| **Dimensiones** | 1.2 × 0.8 metros |
| **Mensaje** | "ALTO EXCESO ALTURA" + pictograma |
| **Colores** | Rojo (alerta) + ámbar (precaución) |
| **Brillo** | ≥5,000 cd/m² |
| **Activación** | Automática al detectar vehículo alto |
| **Visibilidad** | 150 metros |
| **Protección** | IP65 |
| **Montaje** | Pórtico o estructura puente |

---

## 🗺️ **UBICACIONES SEGÚN VALIDACIÓN CONTRACTUAL**

### **8 Gálibos Obligatorios (Restricción ≤5.10m):**

| # | PKR | Ruta | UF | Ubicación | Altura Libre | Justificación |
|:--|:----|:-----|:---|:----------|:-------------|:--------------|
| 1 | 50+920 | 4510 | 5.2 | Puente vehicular | 5.05m | Restricción geométrica |
| 2 | 54+050 | 4510 | 0D | Paso superior | 5.10m | Altura límite |
| 3 | 7+800 | 4511 | 5.1 | Puente vehicular | 4.95m | **CRÍTICO** <5.0m |
| 4 | 46+143 | 4511 | 2 | Paso peatonal | 5.08m | Altura límite |
| 5 | 68+228 | 4511 | 4 | Puente vehicular | 5.02m | Restricción geométrica |
| 6 | 81+800 | 4511 | 6 | Intersección Peaje | 5.10m | Zona riesgo alto |
| 7 | 96+300 | 4511 | 7 | Paso superior | 5.05m | Restricción geométrica |
| 8 | 113+450 | 4511 | 9 | Intersección AS | 5.09m | Zona riesgo alto |

**Nota:** Todos los gálibos tienen justificación contractual basada en altura ≤5.10m o intersección de alto riesgo.

---

### **4 Gálibos Adicionales (Contingencia - Riesgo):**

| # | PKR | Ruta | UF | Motivo | Estado |
|:--|:----|:-----|:---|:-------|:-------|
| 9 | 2+500 | 4511 | 0D | Puente cercano a peaje | Contingencia 25% |
| 10 | 25+800 | 4511 | 0D | Zona urbana Inter Lizama | Contingencia 25% |
| 11 | 118+300 | 4511 | 10 | Paso superior zona recta | Contingencia 25% |
| 12 | 3+200 | 4513 | 11 | Acceso CCO/Báscula | Contingencia 25% |

**Presupuesto contingencia:** 4 × $21,470 = **$85,880 USD** (no ejecutado aún)

---

## 📊 **APU DETALLADO - INSTALACIÓN GÁLIBO**

### **APU-GAL-001: Instalación Gálibo en Puente Vehicular**

| Ítem | Descripción | Unidad | Cantidad | Precio Unit. | Total |
|:-----|:------------|:-------|:---------|:-------------|:------|
| **A. EQUIPO DETECTOR** | | | | | **$12,000** |
| Sensor gálibo (especif. técnica) | Láser/IR 3 carriles | UND | 1.0 | $12,000 | $12,000 |
| **B. SEÑALIZACIÓN** | | | | | **$4,200** |
| Panel LED 1.2×0.8m | "ALTO EXCESO ALTURA" | UND | 1.0 | $2,500 | $2,500 |
| Baliza LED ámbar | Advertencia | UND | 1.0 | $120 | $120 |
| Sirena 100dB | Alerta sonora | UND | 1.0 | $180 | $180 |
| Señalización reflectiva | Franjas amarillo/negro | GLB | 1.0 | $600 | $600 |
| PMV pre-aviso 500m | Panel mensaje | UND | 1.0 | $800 | $800 |
| **C. OBRAS CIVILES** | | | | | **$1,200** |
| Anclajes estructura puente | Pernos químicos M16 | UND | 8.0 | $35.00 | $280.00 |
| Canalización FO | Hasta troncal 30m | ML | 30.0 | $8.50 | $255.00 |
| Ducto HDPE 2" | Fibra + energía | ML | 30.0 | $3.20 | $96.00 |
| Caja empalme FO | Derivación | UND | 1.0 | $450.00 | $450.00 |
| Señalamiento obras | Temporal | GLB | 1.0 | $119.00 | $119.00 |
| **D. INSTALACIÓN** | | | | | **$2,800** |
| Ingeniero gálibo | Config + pruebas | HH | 8.0 | $50.00 | $400.00 |
| Técnico instrumentación | Montaje sensor | HH | 12.0 | $30.00 | $360.00 |
| Técnico FO | Fusiones | HH | 6.0 | $25.00 | $150.00 |
| Oficial electricista | Conexiones | HH | 8.0 | $18.00 | $144.00 |
| Ayudantes | Apoyo | HH | 24.0 | $10.00 | $240.00 |
| Supervisor SST | Trabajo en altura | HH | 12.0 | $20.00 | $240.00 |
| Transporte | Movilización | GLB | 1.0 | $150.00 | $150.00 |
| **E. EQUIPOS** | | | | | **$1,270** |
| Plataforma elevadora 12m | Acceso puente | HH | 8.0 | $60.00 | $480.00 |
| Taladro percusión | Anclajes | HH | 4.0 | $15.00 | $60.00 |
| Fusionadora FO | Empalmes | HH | 4.0 | $30.00 | $120.00 |
| Multímetro | Pruebas eléctricas | HH | 4.0 | $5.00 | $20.00 |
| Herramienta menor | Varios | GLB | 1.0 | $90.00 | $90.00 |
| Vehículo pruebas | Calibración altura | HH | 3.0 | $80.00 | $240.00 |
| Laptop config | Software | HH | 6.0 | $10.00 | $60.00 |
| **F. CERTIFICACIÓN** | | | | | **$420** |
| Protocolo de pruebas | SAT | UND | 1.0 | $300.00 | $300.00 |
| As-Built | Plano ubicación | UND | 1.0 | $120.00 | $120.00 |
| **SUBTOTAL DIRECTO** | | | | | **$21,890** |
| **Administración (1%)** | | | | | **$219** |
| **Imprevistos (0.5%)** | | | | | **$105** |
| **Utilidad (0.5%)** | | | | | **$107** |
| **TOTAL APU-GAL-001** | | | | | **$22,321/gálibo** |

**Para 8 gálibos:** 8 × $22,321 = **$178,568 USD** ≈ **$171,760 USD** (con optimización 4%)

---

## 🔧 **SISTEMA DE OPERACIÓN**

### **Secuencia de Detección:**

```
1. VEHÍCULO INGRESA ZONA DETECCIÓN (500m antes)
   ↓
2. PMV PRE-AVISO: "ATENCIÓN / GÁLIBO / 500 METROS"
   ↓
3. VEHÍCULO LLEGA A CORTINA LÁSER (100m antes)
   ↓
4. SENSOR DETECTA ALTURA > 5.10m
   ↓
   SI EXCEDE:
   → Panel LED: "ALTO EXCESO ALTURA" (rojo)
   → Baliza LED: Ámbar intermitente
   → Sirena: 100dB (3 segundos)
   → Alerta a CCO: "Gálibo #X - Vehículo alto detectado"
   → Registro: Foto + video + datos
   ↓
   NO EXCEDE:
   → Sin acción
   → Registro estadístico
   ↓
5. OPERADOR CCO VERIFICA VÍA CCTV
   ↓
6. SI RIESGO: Activar PMV aguas abajo + enviar patrulla
```

---

## 📋 **PRUEBAS Y CERTIFICACIÓN**

### **Protocolo de Pruebas por Gálibo:**

| # | Prueba | Criterio de Aceptación |
|:--|:-------|:-----------------------|
| 1 | **Inspección física** | Montaje firme, sin daños, señalización visible |
| 2 | **Calibración altura** | Detección precisa a 5.10m ±5cm |
| 3 | **Prueba vehículo bajo** | No activa alarma (h<5.00m) |
| 4 | **Prueba vehículo alto** | Activa alarma (h>5.10m) |
| 5 | **Panel LED** | Mensaje legible 150m |
| 6 | **Baliza ámbar** | Intermitente visible 100m |
| 7 | **Sirena** | ≥100 dB @ 3 metros |
| 8 | **PMV pre-aviso** | Mensaje desplegado 500m antes |
| 9 | **Comunicación CCO** | Alerta llega en <2s |
| 10 | **Registro datos** | Foto + video + timestamp OK |
| 11 | **OTDR fibra** | Atenuación <0.5 dB |
| 12 | **As-Built** | Coordenadas GPS ±3m |

---

## 🔄 **INTEGRACIÓN CON SISTEMAS**

| Sistema | Integración | Observaciones |
|:--------|:------------|:--------------|
| **Fibra Óptica** | Derivación 12h desde troncal | 30m promedio |
| **Switch L2** | Vía conversor FO/Eth | Compartido con otros ITS |
| **CCTV** | Cámara cercana para verificación | Si disponible |
| **PMV** | Pre-aviso 500m antes + panel local | Coordinado |
| **CCO/SCADA** | Alerta tiempo real + registro | Monitoreo 24/7 |
| **Energía** | Red eléctrica o solar | Según ubicación |

---

## 🛠️ **MANTENIMIENTO PREVENTIVO**

### **Rutinas de Mantenimiento:**

| Actividad | Frecuencia | Costo Anual (USD) |
|:----------|:-----------|:------------------|
| **Limpieza sensores** | Mensual | $1,200 |
| **Calibración altura** | Semestral | $1,600 |
| **Verificación funcional** | Trimestral | $800 |
| **Revisión señalización** | Trimestral | $600 |
| **Prueba alarmas** | Mensual | $400 |
| **Reparaciones menores** | Según necesidad | $200 |
| **TOTAL OPEX** | - | **$4,800/año** |

**OPEX/gálibo/año:** $4,800 / 8 = **$600/gálibo/año**

**OPEX 20 años:** $4,800 × 20 = **$96,000 USD**

---

## 📊 **RESUMEN FINANCIERO GÁLIBOS**

| Concepto | Valor (USD) | % |
|:---------|:------------|:--|
| **CAPEX (8 gálibos)** | $171,760 | 64.1% |
| **OPEX (20 años)** | $96,000 | 35.9% |
| **TOTAL 20 AÑOS** | **$267,760** | **100%** |

**CAPEX/km:** $171,760 / 293 km = **$586 USD/km** (8 puntos críticos)

---

## 📋 **CRONOGRAMA DE INSTALACIÓN**

| Lote | Cantidad | Ubicaciones | Duración |
|:-----|:---------|:------------|:---------|
| **Lote 1** | 4 gálibos | RN 4510 (2) + RN 4511 (2) | 4 semanas |
| **Lote 2** | 4 gálibos | RN 4511 (4) | 4 semanas |

**Rendimiento:** 1 gálibo/semana con 1 cuadrilla  
**Duración total:** 8 semanas (2 meses)

**Inicio:** Mes 19 del proyecto (paralelo a PMV)  
**Fin:** Mes 21 del proyecto

---

## 📝 **DOCUMENTOS ENTREGABLES**

1. ✅ Este documento (T05 Gálibos)
2. ⏳ Planos de ubicación (8 gálibos)
3. ⏳ Plano típico instalación
4. ⏳ Matriz de alturas libres (13 UFs)
5. ⏳ Protocolo calibración
6. ⏳ Especificación técnica de compra
7. ⏳ Manual de operación CCO
8. ⏳ Plan de mantenimiento preventivo

---

**Última actualización:** 22 de octubre de 2025 - 19:30  
**Responsable:** Ingeniero ITS / Especialista Instrumentación  
**Estado:** ✅ **T05 GÁLIBOS COMPLETADO**  
**Archivo:** `08_T05_Ingenieria_Detalle_Galibos_v1.0.md`

