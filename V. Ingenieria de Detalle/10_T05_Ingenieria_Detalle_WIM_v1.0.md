# T05 - INGENIERÍA DE DETALLE - WIM
## Sistema de Pesaje Dinámico en Movimiento

**Proyecto:** APP Puerto Salgar - Barrancabermeja  
**Sistema:** WIM - Weigh-In-Motion  
**Fecha:** 22 de octubre de 2025  
**Versión:** 1.0  
**Basado en:** T04 WIM v1.0 + Validación Contractual WIM v1.0  

---

## 📋 **RESUMEN EJECUTIVO**

### **Sistema WIM:**

| Parámetro | Valor | Referencia |
|:----------|:------|:-----------|
| **Cantidad** | **1 estación** | Obligatorio AT2 |
| **Ubicación** | RN 4513 (CCO) - PKR 3+875 | Zona de báscula |
| **Tecnología** | Placas de pesaje dinámico | Clase COST323 A(5) / ASTM E1318 Type III |
| **Carriles pesaje** | 2 carriles bidireccionales (4 básculas) | Cobertura total |
| **Velocidad operación** | Hasta 60 km/h | Sin detención |
| **Precisión** | Error ≤5% PBT, 7% grupos ejes, 8% ejes simples | COST323 Europea |
| **CAPEX Total** | **$256,353 USD** | Sistema completo instalado (cotización PAT) |
| **OPEX Anual** | **$15,000 USD** | Mantenimiento + calibración |
| **OPEX 20 años** | **$300,000 USD** | - |

---

## 💰 **PRESUPUESTO DETALLADO (COTIZACIÓN PAT - Oct 2024)**

### **CAPEX POR COMPONENTE:**

| Componente | Cantidad | Costo Unit. (USD) | Total (USD) | % del Total |
|:-----------|:---------|:------------------|:------------|:------------|
| **1. MATERIALES, EQUIPOS Y SOFTWARE** | - | - | **$161,357** | **62.9%** |
| Placas de Pesaje 1.55m | 4 | $10,481 | $41,926 | 16.4% |
| Bastidores para placas (c/epóxico) | 4 | $4,297 | $17,190 | 6.7% |
| Material lazos inductivos | 8 | $409 | $3,270 | 1.3% |
| Electrónica DAW100 | 2 | $4,045 | $8,090 | 3.2% |
| Gabinete exterior antivandalismo | 2 | $4,619 | $9,238 | 3.6% |
| Cámara OCR báscula (22m, sin poste) | 2 | $5,110 | $10,219 | 4.0% |
| Cámara OCR fuga (22m) | 2 | $4,800 | $9,600 | 3.7% |
| Tablero protecciones eléctricas | 2 | $1,048 | $2,096 | 0.8% |
| Señal Doble Aspa-Cruz | 4 | $1,858 | $7,432 | 2.9% |
| Switch PoE 8 puertos | 2 | $681 | $1,363 | 0.5% |
| Computador aplicación (Rack, Win10 Pro) | 2 | $3,983 | $7,966 | 3.1% |
| Monitor, teclado, mouse | 2 | $558 | $1,117 | 0.4% |
| Servidor Rack (Win Server + SQL Express) | 2 | $6,272 | $12,544 | 4.9% |
| Switch para Rack | 2 | $769 | $1,538 | 0.6% |
| Impresora láser monocromática | 2 | $734 | $1,467 | 0.6% |
| Rack para equipos caseta | 2 | $1,991 | $3,983 | 1.6% |
| UPS 2KVA para rack | 2 | $1,572 | $3,144 | 1.2% |
| Poste brazo 3m cámaras LPR báscula | 2 | $2,503 | $5,005 | 2.0% |
| Poste brazo 3m señales Aspa-Cruz | 2 | $2,503 | $5,005 | 2.0% |
| Poste brazo 3m cámaras LPR fuga | 2 | $2,503 | $5,005 | 2.0% |
| Cables, soportes, materiales conexión | 2 | $2,079 | $4,157 | 1.6% |
| **2. MANO DE OBRA, TRANSPORTE, EQUIPOS** | - | - | **$82,942** | **32.4%** |
| Instalación fibra óptica (caseta-báscula) | 2 | $5,174 | $10,348 | 4.0% |
| Documentación As-Built + gestión | 1 | $5,241 | $5,241 | 2.0% |
| Instalación sistemas (2 básculas) | 1 | $32,357 | $32,357 | 12.6% |
| Instalación puesta tierra (gabinetes+postes) | 6 | $871 | $5,226 | 2.0% |
| Asistencia periodo garantía | 2 | $5,148 | $10,296 | 4.0% |
| Flete y seguro internacional (CIF) | 1 | $19,474 | $19,474 | 7.6% |
| **3. SERVICIOS DEL PROYECTO** | - | - | **$12,054** | **4.7%** |
| Ingeniería, soporte, software PAT | 1 | $3,144 | $3,144 | 1.2% |
| Pólizas | 1 | $2,970 | $2,970 | 1.2% |
| Software BASCAM integración | 2 | $2,970 | $5,940 | 2.3% |
| **TOTAL CAPEX (INCOTERMS DAP)** | - | - | **$256,353** | **100%** |

---

## 📐 **ESPECIFICACIONES TÉCNICAS DETALLADAS**

### **1. PLACAS DE PESAJE (SISTEMA PAT)**

| Parámetro | Especificación |
|:----------|:--------------|
| **Tecnología** | Placas de pesaje dinámico 1.55m |
| **Clase** | COST323 A(5) Europea / ASTM E1318 Type III |
| **Precisión peso bruto (PBT)** | Error <5% @ 95% mediciones |
| **Precisión grupos de ejes** | Error <7% @ 95% mediciones |
| **Precisión ejes simples** | Error <8% @ 95% mediciones |
| **Rango pesaje** | Variable según configuración |
| **Velocidad vehículos** | Hasta 60 km/h |
| **Instalación** | Bastidor en pavimento con epóxico |
| **Dimensiones placa** | 1.55 metros (ancho carril) |
| **Material** | Según fabricante PAT |
| **Garantía** | 1 año por defectos de fabricación |
| **Temperatura operación** | Variable (Colombia: 5-40°C típico) |

**Configuración:**
- **4 placas de pesaje** (2 básculas × 2 carriles)
- **2 electrónicas DAW100** (controladoras)
- **8 lazos inductivos** para detección/clasificación
- **4 cámaras OCR** (2 báscula + 2 fuga) - Lectura 22m

---

### **2. LAZOS INDUCTIVOS (DETECCIÓN)**

| Parámetro | Especificación |
|:----------|:--------------|
| **Función** | Detección presencia, velocidad, clasificación |
| **Configuración** | 2 lazos por carril (separados 4m) |
| **Dimensiones** | 2m × 2m (área sensible) |
| **Instalación** | Ranura en pavimento 5cm prof |
| **Material** | Cable AWG 18 multi-vuelta |
| **Frecuencia** | 20-170 kHz |

**Total:** 2 carriles × 2 lazos = **4 lazos** + 4 spare = **8 lazos**

---

### **3. CONTROLADOR WIM CENTRAL**

| Parámetro | Especificación |
|:----------|:--------------|
| **Procesador** | Industrial PC (Intel i7 o superior) |
| **RAM** | ≥16 GB |
| **Almacenamiento** | SSD 1 TB |
| **OS** | Windows 10 IoT o Linux |
| **Interfaces** | 8×Ethernet Gigabit mínimo |
| **Entradas analógicas** | ≥16 canales (sensores) |
| **Protocolo** | NTCIP, Modbus TCP/IP, API REST |
| **Temperatura** | -10°C a +50°C (gabinete climatizado) |
| **Alimentación** | 110-220 VAC redundante |

---

### **4. SOFTWARE WIM**

| Funcionalidad | Descripción |
|:--------------|:------------|
| **Adquisición datos** | 2 carriles simultáneos |
| **Clasificación vehicular** | FHWA 13 categorías + Colombia 10 categorías |
| **Cálculo peso** | Peso bruto, por eje, por grupo ejes |
| **ANPR** | Reconocimiento placas integrado |
| **Detección sobrepeso** | Umbral configurable (ej. >10% tolerancia) |
| **Alerta automática** | A CCO + PMV + señalización |
| **Base de datos** | SQL Server / PostgreSQL |
| **Reportes** | Diarios, semanales, mensuales, anuales |
| **Integración SIMIT** | Envío automático infracciones |
| **Exportación** | Excel, PDF, CSV |

---

## 🗺️ **UBICACIÓN**

### **Estación WIM - CCO:**

| Parámetro | Valor |
|:----------|:------|
| **Ruta** | RN 4513 |
| **PKR** | 3+875 |
| **PKD** | 278+225 |
| **UF** | 13 |
| **Ubicación** | Zona de báscula adyacente al CCO |
| **Calzadas** | Doble calzada (2 carriles por sentido) |
| **Sentidos** | Bidireccional (2 carriles pesados) |
| **Pendiente** | <3% (zona plana) |
| **Pavimento** | Asfalto en buen estado |

**Ventajas ubicación:**
- ✅ Cerca del CCO (monitoreo directo)
- ✅ Zona controlada (báscula existente)
- ✅ Acceso fácil mantenimiento
- ✅ Fibra óptica disponible
- ✅ Energía eléctrica confiable

---

## 📊 **APU DETALLADO - INSTALACIÓN WIM**

### **APU-WIM-001: Instalación Sistema WIM Completo**

| Ítem | Descripción | Total (USD) |
|:-----|:------------|:------------|
| **A. EQUIPOS WIM** | | **$280,000** |
| Sensores + lazos + controlador + software | Según especificaciones | $280,000 |
| **B. OBRAS CIVILES** | | **$120,000** |
| Fresado + cortes + instalación + recapeo | 200 m² de intervención | $63,000 |
| Caseta control + cimentaciones | 4×3m climatizada | $26,000 |
| Señalización + iluminación | Horizontal + vertical + LED | $29,200 |
| Canalización | FO + energía 150m | $1,800 |
| **C. INSTALACIÓN** | | **$48,000** |
| Mano de obra | 6 semanas equipo especializado | $28,000 |
| Calibración | Con vehículos patrón | $8,000 |
| Pruebas + certificación | Protocolo ASTM | $12,000 |
| **SUBTOTAL** | | $448,000 |
| **AIU (incluido)** | | - |
| **TOTAL APU-WIM-001** | | **$448,000** |

---

## 🔧 **PROCESO DE INSTALACIÓN**

### **Secuencia de Obra:**

| Fase | Actividad | Duración |
|:-----|:----------|:---------|
| **1** | Replanteo y señalización | 3 días |
| **2** | Fresado pavimento (200 m²) | 2 días |
| **3** | Corte ranuras sensores (16 ranuras) | 3 días |
| **4** | Instalación sensores piezoeléctricos | 4 días |
| **5** | Instalación lazos inductivos | 3 días |
| **6** | Prueba continuidad sensores | 1 día |
| **7** | Recapeo asfáltico (200 m²) | 2 días |
| **8** | Curado pavimento | 7 días |
| **9** | Canalización FO/energía | 3 días |
| **10** | Construcción caseta control | 14 días |
| **11** | Instalación equipos electrónicos | 5 días |
| **12** | Cableado y conexiones | 4 días |
| **13** | Configuración software | 3 días |
| **14** | Calibración con vehículos patrón | 5 días |
| **15** | Pruebas y certificación | 5 días |
| **16** | Comisionamiento y entrega | 3 días |

**Duración total:** 67 días (≈10 semanas / 2.5 meses)

**Inicio:** Mes 19 del proyecto  
**Fin:** Mes 22 del proyecto

---

## 📋 **CALIBRACIÓN Y CERTIFICACIÓN**

### **Proceso de Calibración:**

1. **Vehículos patrón (3 mínimo):**
   - Liviano: 2 ejes, ~5 ton
   - Medio: 3 ejes, ~12 ton
   - Pesado: 5 ejes, ~25 ton

2. **Procedimiento:**
   - Pesaje estático en báscula certificada
   - 10 pasadas por carril a 50 km/h
   - 10 pasadas por carril a 80 km/h
   - 10 pasadas por carril a 100 km/h
   - Registro de datos

3. **Análisis:**
   - Cálculo de error promedio
   - Cálculo de desviación estándar
   - Ajuste de factores de calibración
   - Verificación precisión ±15%

4. **Certificación:**
   - Protocolo según ASTM E1318
   - Certificado de calibración
   - Reporte de precisión
   - Fecha de próxima calibración (6 meses)

---

## 🚨 **OPERACIÓN Y ALERTAS**

### **Detección de Sobrepeso:**

```
1. VEHÍCULO INGRESA ZONA DETECCIÓN
   ↓
2. LAZO 1 DETECTA PRESENCIA
   ↓
3. CÁMARA ANPR CAPTURA PLACA
   ↓
4. SENSOR 1 MIDE PESO EJE 1
   ↓
5. SENSOR 2 MIDE PESO EJE 2
   ↓
6. LAZO 2 CONFIRMA SALIDA
   ↓
7. CONTROLADOR CALCULA:
   - Peso bruto
   - Peso por eje
   - Clasificación vehicular
   ↓
   SI SOBREPESO:
   → Panel LED: "SOBREPESO DETECTADO"
   → Alerta CCO: Peso, placa, foto
   → Registro SIMIT (si aplica)
   → PMV aguas abajo: Advertencia
   ↓
   NO SOBREPESO:
   → Registro estadístico
   → Sin acción
```

---

## 📊 **DATOS GENERADOS**

### **Información por Vehículo:**

| Dato | Descripción |
|:-----|:------------|
| **Timestamp** | Fecha y hora (milisegundos) |
| **Carril** | 1 o 2 |
| **Velocidad** | km/h |
| **Longitud** | Metros |
| **Clasificación** | FHWA + Colombia |
| **Número de ejes** | 2-9 |
| **Peso por eje** | Toneladas (cada eje) |
| **Peso bruto** | Toneladas (total) |
| **Placa** | Reconocimiento ANPR |
| **Foto** | Imagen vehículo |
| **Sobrepeso** | Sí/No (umbral configurable) |
| **% Exceso** | Si aplica |

**Volumen de datos:** ~1,000-3,000 vehículos/día = 365,000-1,095,000 registros/año

---

## 🛠️ **MANTENIMIENTO**

### **Rutinas de Mantenimiento:**

| Actividad | Frecuencia | Costo Anual (USD) |
|:----------|:-----------|:------------------|
| **Calibración completa** | Semestral | $12,000 |
| **Limpieza sensores** | Mensual | $2,400 |
| **Verificación lazos** | Trimestral | $1,600 |
| **Revisión pavimento** | Semestral | $1,200 |
| **Mantenimiento software** | Anual | $3,000 |
| **Actualización firmware** | Según fabricante | $1,200 |
| **Reparaciones** | Según necesidad | $4,600 |
| **Reemplazo sensores** | Cada 5 años | $2,000/año (prorrateo) |
| **TOTAL OPEX** | - | **$28,000/año** |

**OPEX 20 años:** $28,000 × 20 = **$560,000 USD**

---

## 📋 **PRUEBAS Y CERTIFICACIÓN**

### **Protocolo de Pruebas:**

| # | Prueba | Criterio |
|:--|:-------|:---------|
| 1 | **Inspección física** | Sensores correctamente embebidos, sin daños |
| 2 | **Continuidad eléctrica** | Todos los sensores responden |
| 3 | **Calibración con patrón liviano** | Error <15% |
| 4 | **Calibración con patrón medio** | Error <15% |
| 5 | **Calibración con patrón pesado** | Error <15% |
| 6 | **Velocidad 50 km/h** | Medición correcta |
| 7 | **Velocidad 100 km/h** | Medición correcta |
| 8 | **ANPR** | Reconocimiento >90% |
| 9 | **Clasificación vehicular** | Correcta en 10 vehículos |
| 10 | **Alerta sobrepeso** | Activación correcta |
| 11 | **Comunicación CCO** | Datos en tiempo real |
| 12 | **Base de datos** | Almacenamiento correcto |
| 13 | **Certificado ASTM E1318** | Emitido por entidad certificada |

---

## 📊 **RESUMEN FINANCIERO WIM**

| Concepto | Valor (USD) | % |
|:---------|:------------|:--|
| **CAPEX (Cotización PAT)** | $256,353 | 46.1% |
| **OPEX (20 años)** | $300,000 | 53.9% |
| **TOTAL 20 AÑOS** | **$556,353** | **100%** |

**Nota:** Cotización PAT incluye:
- ✅ 4 básculas dinámicas (2 estaciones × 2 carriles)
- ✅ Instalación completa
- ✅ Puesta en marcha
- ✅ Capacitación
- ✅ Garantía 1 año
- ✅ INCOTERMS DAP (entrega en sitio)
- ❌ NO incluye mantenimiento post-garantía

---

## 🔗 **INTEGRACIÓN CON SISTEMAS**

| Sistema | Integración | Observaciones |
|:--------|:------------|:--------------|
| **Fibra Óptica** | Conexión directa a CCO (150m) | Alta velocidad |
| **Switch L3 CCO** | Vía Gigabit Ethernet | VLAN dedicada |
| **SCADA/CCO** | API REST + Modbus TCP | Tiempo real |
| **CCTV** | Cámara cercana para verificación | Si disponible |
| **PMV** | Mensajes coordinados sobrepeso | Aguas abajo |
| **SIMIT** | Integración infracciones (si aplica) | Según normativa |
| **Báscula** | Validación cruzada datos | Complementario |

---

## 📝 **DOCUMENTOS ENTREGABLES**

1. ✅ Este documento (T05 WIM)
2. ⏳ Planos de ubicación
3. ⏳ Planos constructivos (cortes, detalles)
4. ⏳ Especificación técnica de compra
5. ⏳ Protocolo calibración ASTM E1318
6. ⏳ Certificado de calibración
7. ⏳ Manual de operación CCO
8. ⏳ Manual de mantenimiento
9. ⏳ Software de gestión (instalado)
10. ⏳ Plan de mantenimiento preventivo

---

**Última actualización:** 22 de octubre de 2025 - 20:00  
**Responsable:** Ingeniero ITS / Especialista Pesaje  
**Estado:** ✅ **T05 WIM COMPLETADO**  
**Archivo:** `10_T05_Ingenieria_Detalle_WIM_v1.0.md`

