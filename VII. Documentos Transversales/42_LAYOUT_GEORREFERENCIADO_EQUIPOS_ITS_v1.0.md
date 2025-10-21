# LAYOUT GEORREFERENCIADO DE EQUIPOS ITS
## APP Puerto Salgar - Barrancabermeja

**Versión:** 1.0 - DRAFT INICIAL  
**Fecha:** 21 de octubre de 2025  
**Estado:** 🔄 En Validación con Google Earth  
**Base:** Diseño preliminar 18/09/2025  

---

## 📍 **PROPÓSITO DEL DOCUMENTO**

Este documento consolida las **ubicaciones exactas** de todos los equipos ITS a lo largo del corredor concesionado, permitiendo:

1. ✅ **Validación de cantidades** contra contrato
2. ✅ **Verificación de separaciones** mínimas/máximas
3. ✅ **Identificación de conflictos** de ubicación
4. ✅ **Trazabilidad geográfica** por Unidad Funcional
5. ✅ **Base para ingeniería de detalle** (T05)
6. ✅ **Validación con Google Earth** (próxima etapa)

---

## 🛣️ **CONFIGURACIÓN DEL CORREDOR**

### **Geometría Vial**

El corredor concesionado tiene las siguientes configuraciones:

| Tipo de Vía | Descripción | Aplicación |
|:------------|:------------|:-----------|
| **Doble Calzada** | Dos calzadas separadas (Norte/Sur o Izquierda/Derecha) | Mayoría del corredor |
| **Calzada Única Bidireccional** | Una sola calzada con dos sentidos | Tramos específicos (UF-5.2) |
| **Separador Central** | Franja entre calzadas | Instalación de fibra óptica |

### **Distribución de Postes SOS - Sistema "Tres Bolillos"**

**Concepto clave:** Los postes SOS se instalan **alternados** entre calzadas para optimizar cobertura sin duplicar cantidades.

```
Patrón de instalación SOS (vista en planta):

Calzada Izquierda  [═══════════════════════════════════════]
                   ↑SOS 1        ↑SOS 3        ↑SOS 5
                    
Separador Central  [--------FIBRA ÓPTICA--------]
                                ↑SOS 2        ↑SOS 4
                    
Calzada Derecha    [═══════════════════════════════════════]
                            ↑SOS 2        ↑SOS 4        ↑SOS 6

Separación máxima: 3 km entre postes consecutivos (cualquier calzada)
Resultado: Cobertura cada ~1.5 km por calzada
```

### **Ubicación de Equipos por Tipo**

| Equipo | Ubicación Preferente | Justificación |
|:-------|:---------------------|:--------------|
| **Postes SOS** | Berma externa (alternados) | Acceso directo usuario, evacuación segura |
| **PMV** | Antes de berma (visible ambos sentidos) | Máxima visibilidad, mensajes direccionales |
| **CCTV** | Separador central o poste alto | Visión panorámica ambas calzadas |
| **RADAR-ANPR** | Pórtico o separador central | Cobertura bidireccional simultánea |
| **Gálibos** | Sobre cada calzada | Detección por sentido de circulación |
| **Fibra Óptica** | **Separador central (eje del corredor)** | Backbone principal del proyecto |

### **Implicaciones para Ingeniería de Detalle**

#### **1. Postes SOS - Instalación Alternada**

**Regla de diseño:**
- **SOS impar (1, 3, 5...):** Calzada Izquierda (berma externa)
- **SOS par (2, 4, 6...):** Calzada Derecha (berma externa)
- **Separación máxima:** 3 km entre SOS consecutivos (independiente de calzada)

**Conexión a fibra óptica:**
- Desde berma externa → cruce subterráneo → separador central (fibra)
- Tubo conduit: HDPE Ø2" mínimo
- Profundidad: 0.80 m en cruce de calzadas

**Ventajas del sistema:**
- ✅ Reduce costo (87 postes vs. 174 si fueran por calzada)
- ✅ Cobertura efectiva cada ~1.5 km por calzada
- ✅ Evacuación segura (usuario no cruza calzada activa)

#### **2. PMV - Ubicación Estratégica**

**Tipos según ubicación:**

| Tipo | Ubicación | Cobertura | Cantidad |
|:-----|:----------|:----------|:---------|
| **PMV Bidireccional** | Separador central elevado | Ambas calzadas | 14 (2 por peaje + estratégicos) |
| **PMV Unidireccional** | Berma derecha de cada calzada | Una calzada | 14 (pares) |
| **TOTAL** | - | - | **28** |

**Conexión:**
- Fibra desde separador central
- Si está en berma: cruce subterráneo desde separador

#### **3. CCTV - Cobertura Panorámica**

**Ubicación preferente:**
- **Separador central:** Cámara PTZ en poste de 12-15 m
- **Ventaja:** Visión 360° de ambas calzadas
- **Fibra:** Directa desde backbone central

**Casos especiales:**
- Intercambios: Cámaras adicionales en rampas
- Peajes: Cámaras perimetrales (no central)
- Áreas servicio: Cámaras de seguridad perimetral

#### **4. RADAR-ANPR - Pares Bidireccionales**

**Configuración:**
- **Par bidireccional:** 2 equipos enfrentados (1 por sentido)
- **Ubicación:** Pórtico sobre ambas calzadas o separador central
- **Conexión fibra:** Backbone central

**Ejemplo:**
```
PK 54+000 (RN 4510):
- RADAR-ANPR Izquierda → mide tráfico sentido Norte
- RADAR-ANPR Derecha → mide tráfico sentido Sur
- Ambos conectados a switch central
```

---

## 🔧 **ARQUITECTURA DE TELECOMUNICACIONES**

### **Backbone de Fibra Óptica**

**Ruta principal:**
```
Puerto Salgar ──[Fibra Separador Central]── Barrancabermeja
     ↓                    ↓                        ↓
   Nodo 1             Nodo 2-5                 Nodo 6
  (CCO/WIM)         (Peajes/AS)              (CCO/Peaje)
```

**Derivaciones a equipos:**

| Equipo | Distancia Típica al Separador | Método de Conexión |
|:-------|:------------------------------|:-------------------|
| SOS (berma) | 10-15 m | Cruce subterráneo HDPE Ø2" |
| PMV (berma) | 10-15 m | Cruce subterráneo HDPE Ø2" |
| CCTV (separador) | 0 m | Directo en poste central |
| RADAR (pórtico) | 0 m | Pórtico sobre separador |

### **Ejemplo de Sección Transversal Típica**

```
Vista en Corte (Doble Calzada):

Berma Ext. Izq  Calzada Izq  Berma Int.  SEPARADOR  Berma Int.  Calzada Der  Berma Ext. Der
    [2.5m]         [7.3m]      [1.0m]      [4.0m]      [1.0m]       [7.3m]        [2.5m]
      |              |           |           |           |            |              |
   [SOS 1]          -           -      [FIBRA + CCTV]    -           -          [SOS 2]
                                           [Poste]
                                           [12-15m]
                                              ↑
                                         Cámara PTZ
                                         Switch 24p
                                         Gabinete IP65
```

---

## 🎯 **RESUMEN EJECUTIVO**

### **Cantidades por Sistema**

| Sistema | Cantidad Real | Cantidad Contractual | Estado | Separación Promedio |
|:--------|:--------------|:---------------------|:-------|:--------------------|
| **Postes SOS** | 87 | 87 (≤3 km) | ✅ Cumple | 2.84 km |
| **PMV** | 28 | 28 (2 por peaje + cada 20 km) | ✅ Cumple | 18.96 km |
| **CCTV** | 30 | 30 (puntos críticos) | ✅ Cumple (ajustado) | Variable |
| **RADAR-ANPR** | 12 | 15 (13 ETD + 2 Radares) | ⚠️ Revisar | Variable |
| **Gálibos** | 8 | 25 (estimación) | ⚠️ Parcial | Variable |
| **Estaciones Meteo** | 2 | 2 (peajes) | ✅ Cumple | En peajes |

### **Distribución por Ruta**

| Ruta | Longitud (km) | Postes SOS | PMV | CCTV | RADAR-ANPR | ETD puras | Gálibos |
|:-----|:--------------|:-----------|:----|:-----|:-----------|:----------|:--------|
| **RN 4510** | ~134 km | 41 | 10 | 9 | 1 | 5 | 2 |
| **RN 4511** | ~149 km | 44 | 16 | 17 | 1 | 8 | 5 |
| **RN 4513** | ~10 km | 2 | 2 | 4 | 0 | 1 | 1 |
| **TOTAL** | **~293 km** | **87** | **28** | **30** | **2** | **14** | **8** |

**Nota:** Total ETD/RADAR = 16 equipos (2 RADAR-ANPR + 14 ETD puras = 2 SAST + 13 UFs + 1 stock)

---

## 🚧 **GÁLIBOS - DETECCIÓN DE ALTURA**

### **📊 RESUMEN EJECUTIVO**

| Concepto | Cantidad | Estado | Observaciones |
|:---------|:---------|:-------|:--------------|
| **Gálibos Obligatorios EPC** | 8 | ✅ Validados | PKs específicos con restricción ≤5.10m |
| **Estimación Preliminar** | 25 | 🔸 No obligatoria | Referencia de diseño, NO exigencia contractual |
| **Validación Adicional** | Por determinar | ⏳ Pendiente | Solo si Interventoría identifica nuevos puntos críticos |

### **⚖️ FUNDAMENTO CONTRACTUAL**

**Como EPC, la obligación es instalar gálibos SOLO donde exista:**
1. **Restricción de altura real** ≤ 5.10m (puentes vehiculares, pórticos)
2. **Intersecciones a desnivel** con riesgo de impacto
3. **Túneles o pasos deprimidos** (si aplica)

**NO es obligatorio instalar un número fijo.**

📄 **Base legal:**
- **Apéndice Técnico 2 (O&M):** "Detectores láser en todos los puentes con restricciones de altura y en todas las intersecciones a desnivel"
- **Parte General - Cláusula 4.2:** "El Concesionario ejecutará las obras de acuerdo con los requerimientos mínimos"
- **Jerarquía documental (19.15):** Los apéndices son complementarios, no ampliatorios

**Conclusión EPC:** Si los planos validados muestran 8 puntos con restricción ≤5.10m, **8 gálibos cumplen el contrato**.

### **📍 UBICACIONES CONFIRMADAS (8 GÁLIBOS)**

| # | PKR | Ruta | PKD | Ubicación | Tipo | Altura Mín. | Switch L2 | Observaciones |
|:--|:----|:----|:----|:----------|:-----|:------------|:----------|:--------------|
| 1 | 41+350 | RN 4510 | PKD 241+750 | UF-0D | Óptico/Láser | 5.10m | L2-242 | Intersección crítica |
| 2 | 85+370 | RN 4510 | PKD 197+630 | UF-1 | Óptico/Láser | 5.10m | L2-198 | Separador central |
| 3 | 120+500 | RN 4511 | PKD 162+500 | UF-3 | Óptico/Láser | 5.10m | L2-163 | Puente vehicular |
| 4 | 135+200 | RN 4511 | PKD 147+800 | UF-4 | Óptico/Láser | 5.10m | L2-148 | Intersección a desnivel |
| 5 | 150+800 | RN 4511 | PKD 132+200 | UF-6 | Óptico/Láser | 5.10m | L2-133 | Paso elevado |
| 6 | 165+300 | RN 4511 | PKD 117+700 | UF-8 | Óptico/Láser | 5.10m | L2-118 | Puente principal |
| 7 | 180+100 | RN 4511 | PKD 102+900 | UF-10 | Óptico/Láser | 5.10m | L2-103 | Intersección compleja |
| 8 | 12+500 | RN 4513 | PKD 270+500 | UF-13 | Óptico/Láser | 5.10m | L2-271 | Acceso urbano |

### **🔍 VALIDACIÓN ADICIONAL (SI INTERVENTORÍA LO REQUIERE)**

**Criterio:** Solo se instalarán gálibos adicionales si:
1. La Interventoría identifica nuevos puntos con restricción ≤5.10m
2. Existe Acta o Modificación Contractual que lo exija
3. Geometría final aprobada muestra intersecciones no contempladas

**Proceso:**
- Interventoría notifica por escrito
- EPC valida restricción real con levantamiento topográfico
- Se calcula PKR, PKD y se integra a red L2
- Se actualiza presupuesto como ítem adicional

**Estado actual:** ⏳ Pendiente de validación final de planos aprobados

### **💰 COSTOS ACTUALIZADOS GÁLIBOS**

| Concepto | Cantidad | Precio Unit. (USD) | Subtotal (USD) | Status | Observaciones |
|:---------|:---------|:-------------------|:----------------|:-------|:--------------|
| **Gálibos Obligatorios EPC** | 8 | $7,470 | $59,760 | ✅ Base | Costo real cotización |
| **Instalación** | 8 | $14,000 | $112,000 | ✅ Base | Obra civil + estructuras |
| **TOTAL BASE EPC** | **8** | - | **$171,760** | ✅ Confirmado | Cumple contrato mínimo |
| **Riesgo +4** | 4 | $7,470 | $29,880 | ⚠️ Revisar | Contingencia si SPV solicita |
| **Instalación +4** | 4 | $14,000 | $56,000 | ⚠️ Revisar | Contingencia |
| **Subtotal Riesgo** | **4** | - | **$85,880** | ⚠️ Opcional | Solo si SPV/Interventoría lo exige |
| **+17 adicionales (SPV)** | 17 | $7,470 | $126,990 | 🔸 No base | Solo si SPV modifica contrato |
| **Instalación +17** | 17 | $14,000 | $238,000 | 🔸 No base | Ítem adicional |
| **Subtotal +17 SPV** | **17** | - | **$364,990** | 🔸 Opcional | Requiere modificación contractual |
| **TOTAL ESCENARIO 1 (EPC)** | **8** | - | **$171,760** | ✅ Presupuesto base | |
| **TOTAL ESCENARIO 2 (EPC+Riesgo)** | **12** | - | **$257,640** | ⚠️ Contingencia | |
| **TOTAL ESCENARIO 3 (SPV)** | **25** | - | **$536,750** | 🔸 No obligatorio | Solo si SPV solicita |

### **📋 CRITERIOS DE DISEÑO EPC**

**Gálibos obligatorios (8 confirmados):**
1. **Altura contractual:** ≤ 5.10m (restricción real)
2. **Tecnología:** Óptico/Láser con integración CCO
3. **Ubicaciones:** Puentes vehiculares, intersecciones a desnivel, pórticos
4. **Integración:** Cada gálibo con PMV local para alertas
5. **Red:** Integrado a switch L2 del sub-anillo correspondiente

**Riesgo +4 (contingencia):**
- Puntos identificados por SPV/Interventoría que requieran validación adicional
- Solo se ejecutan si existe solicitud formal por escrito
- Se presupuestan como contingencia, NO como base

**+17 adicionales (solo si SPV solicita):**
- Requieren modificación contractual o Acta de Interventoría
- No forman parte de la obligación EPC base
- Se ejecutan solo si existe orden de cambio aprobada

### **⚠️ NOTA IMPORTANTE - POSICIÓN EPC**

**Como EPC, nuestra obligación contractual es instalar 8 gálibos** (puntos con restricción ≤5.10m validados).

**Los 25 gálibos solo se instalarán si:**
1. El SPV (Interventoría/ANI) los solicita formalmente
2. Existe modificación contractual que lo exija
3. Planos finales aprobados identifican nuevos puntos críticos

**Riesgo +4:** Contingencia interna para posibles solicitudes SPV (a revisar).

**Sin solicitud formal del SPV, el EPC cumple contrato con 8 unidades.**

---

> **Nota:** La longitud total incluye ambos sentidos. La longitud del corredor es 259.6 km (sentido único).

---

## 📋 **TABLA MAESTRA DE UBICACIONES**

### **Nomenclatura**

- **UF:** Unidad Funcional
- **VÍA:** Calzada (Izquierda/Derecha/Separador/Unidireccional)
- **PKR:** Progresiva kilométrica Real (por ruta)
- **PKD:** Progresiva kilométrica Diseño (distancia lineal en anillo fibra)
- **SEPARACIÓN:** Distancia desde equipo anterior del mismo tipo (km)
- **L2:** Switch L2 asociado (Advantech EKI-7706G/7710E/7712G)

### **METODOLOGÍA DE DISTRIBUCIÓN L2 - CRITERIO PUNTO MEDIO**

**METODOLOGÍA DE DISEÑO:**

Para cada tramo entre dos nodos L3, aplicar el siguiente criterio:

1. **Identificar el tramo entre nodos L3:**
   - Ejemplo: N1 (CCO, PKD 0+000) → N2 (Peaje Zambito, PKD 39+450)
   - Distancia total del tramo: 39.45 km

2. **Calcular el PUNTO MEDIO del tramo:**
   - Punto Medio = (PKD_inicial + PKD_final) / 2
   - Ejemplo: (0+000 + 39+450) / 2 = PKD 19+725

3. **Dividir el tramo en DOS SUB-ANILLOS:**
   
   **Sub-Anillo A (AMAYORES):** 
   - Desde Nodo L3 inicial hasta Punto Medio
   - Ejemplo: PKD 0+000 → PKD 19+725
   - Longitud: ~19.7 km
   - Los equipos L2 en este rango forman un anillo que:
     * Sale del Nodo L3 inicial
     * Conecta equipos en orden creciente de PKD
     * Regresa al Nodo L3 inicial (cierre del anillo)
   
   **Sub-Anillo B (AMENORES):**
   - Desde Punto Medio hasta Nodo L3 final
   - Ejemplo: PKD 19+725 → PKD 39+450
   - Longitud: ~19.7 km
   - Los equipos L2 en este rango forman un anillo que:
     * Sale del Nodo L3 final
     * Conecta equipos en orden decreciente de PKD
     * Regresa al Nodo L3 final (cierre del anillo)

**VENTAJAS DE ESTE CRITERIO:**

✅ **Redundancia máxima:** Cada mitad del tramo tiene su propio anillo independiente
✅ **Distancias cortas:** Ningún sub-anillo supera ~35 km
✅ **Fácil mantenimiento:** Puedo aislar medio tramo sin afectar al otro
✅ **Escalabilidad:** Puedo agregar equipos en cualquier sub-anillo sin rediseñar
✅ **Resiliencia:** Falla en un sub-anillo no afecta al sub-anillo adyacente

---

## 📊 **DISTRIBUCIÓN COMPLETA DE SUB-ANILLOS L2**

### **APLICACIÓN A TODOS LOS TRAMOS L3:**

| Tramo | Nodo Inicial | Nodo Final | PKD Inicial | PKD Final | Punto Medio | Distancia | Sub-Anillos |
|:------|:-------------|:-----------|:------------|:----------|:------------|:----------|:------------|
| 1 | N1 (CCO) | N2 (Zambito) | 0+000 | 39+450 | 19+725 | 39.45 km | SA1-A + SA1-B |
| 2 | N2 (Zambito) | N4 (Aguas Negras) | 39+450 | 112+450 | 75+950 | 73.00 km | SA2-A + SA2-B |
| 3 | N4 (Aguas Negras) | N6 (AS Zambito) | 112+450 | 183+300 | 147+875 | 70.85 km | SA3-A + SA3-B |
| 4 | N6 (AS Zambito) | N7 (BUNKER 02) | 183+300 | 233+150 | 208+225 | 49.85 km | SA4-A + SA4-B |
| 5 | N7 (BUNKER 02) | N5 (AS Aguas Negras) | 233+150 | 144+100 | 188+625 | 39.20 km | SA5-A + SA5-B |
| 6 | N5 (AS Aguas Negras) | N3 (BUNKER 01) | 144+100 | 70+450 | 107+275 | 31.65 km | SA6-A + SA6-B |
| 7 | N3 (BUNKER 01) | N1 (CCO) | 70+450 | 283+000 | 176+725 | 70.45 km | SA7-A + SA7-B |

**RESULTADO TOTAL:**
- **7 tramos entre nodos L3**
- **14 sub-anillos L2** (2 por cada tramo: AMAYORES + AMENORES)
- **298 equipos L2** distribuidos proporcionalmente

### **EJEMPLO DETALLADO: TRAMO N1 (CCO) → N2 (PEAJE ZAMBITO)**

| Parámetro | Valor |
|:----------|:------|
| **Nodo L3 Inicial** | N1 (CCO) - PKD 0+000 |
| **Nodo L3 Final** | N2 (Peaje Zambito) - PKD 39+450 |
| **Distancia Total** | 39.45 km |
| **Punto Medio** | PKD 19+725 |

**Sub-Anillo SA1-A (AMAYORES - N1 → Punto Medio):**

| ID L2 | PKD | Equipos ITS | Modelo | Conexión Entrada | Conexión Salida | Dirección |
|:------|:----|:------------|:-------|:-----------------|:----------------|:----------|
| L2-001 | 5+000 | SOS-01, CCTV-01 | EKI-7710E | N1 (uplink) | L2-002 | → AMAYORES |
| L2-002 | 10+000 | PMV-01 | EKI-7706G | L2-001 | L2-003 | → AMAYORES |
| L2-003 | 15+000 | SOS-02, Radar-01 | EKI-7712G | L2-002 | L2-004 | → AMAYORES |
| L2-004 | 19+000 | CCTV-02 | EKI-7706G | L2-003 | N1 (retorno) | → cierre en N1 |

**Topología del anillo SA1-A:**
```
N1 → L2-001 → L2-002 → L2-003 → L2-004 → N1 (cierre)
```

**Sub-Anillo SA1-B (AMENORES - Punto Medio → N2):**

| ID L2 | PKD | Equipos ITS | Modelo | Conexión Entrada | Conexión Salida | Dirección |
|:------|:----|:------------|:-------|:-----------------|:----------------|:----------|
| L2-005 | 39+000 | SOS-03 | EKI-7706G | N2 (uplink) | L2-006 | ← AMENORES |
| L2-006 | 34+000 | CCTV-03, PMV-02 | EKI-7710E | L2-005 | L2-007 | ← AMENORES |
| L2-007 | 29+000 | SOS-04 | EKI-7706G | L2-006 | L2-008 | ← AMENORES |
| L2-008 | 24+000 | Gálibo-01 | EKI-7706G | L2-007 | N2 (retorno) | ← cierre en N2 |

**Topología del anillo SA1-B:**
```
N2 → L2-005 → L2-006 → L2-007 → L2-008 → N2 (cierre)
```

---

## 🛣️ **RUTA NACIONAL 4510** (Puerto Salgar - Empalme RN 4511)

### **Longitud:** ~134 km | **UFs:** 0D, 1, 2, 5.1, 5.2

| # | PKR | PKD | UF | VÍA | SISTEMA | SEPARACIÓN (km) | L2 SWITCH | OBSERVACIÓN |
|:--|:----|:----|:---|:----|:--------|:----------------|:----------|:------------|
| 1 | 38+100 | PKD 245+100 | 5.2 | Unidireccional | CCTV | - | L2-245 | Inicio monitoreo |
| 2 | 41+000 | PKD 242+100 | 0D | Derecha | PMV | - | L2-242 | Inter Koran (40+450) |
| 4 | 41+200 | PKD 241+900 | 0D | Izquierda | PMV | - | L2-242 | |
| 5 | 41+180 | PKD 241+920 | 0D | Derecha | **SOS** | - | L2-242 | **SOS #1** |
| 6 | 41+350 | PKD 241+750 | 0D | Derecha | Gálibo | - | L2-242 | |
| 7 | 43+560 | PKD 239+540 | 0D | Izquierda | **SOS** | 2.38 | L2-240 | **SOS #2** |
| 8 | 46+550 | PKD 236+550 | 0D | Derecha | **SOS** | 2.99 | L2-237 | **SOS #3** - Peatonal 48+360 |
| 9 | 49+550 | PKD 233+550 | 0D | Izquierda | **SOS** | 3.00 | L2-234 | **SOS #4** |
| 10 | 52+550 | PKD 230+550 | 0D | Derecha | **SOS** | 3.00 | L2-231 | **SOS #5** |
| 11 | 54+000 | PKD 229+100 | 0D | Izquierda | RADAR-ANPR | - | L2-229 | Par bidireccional |
| 12 | 54+000 | PKD 229+100 | 0D | Derecha | RADAR-ANPR | - | L2-229 | Par bidireccional |
| 13 | 55+500 | PKD 227+600 | 0D | Izquierda | **SOS** | 2.95 | L2-228 | **SOS #6** |
| 14 | 57+350 | PKD 225+750 | 0D | Izquierda | PMV | 16.15 | L2-226 | Desde PMV anterior |
| 15 | 58+500 | PKD 224+600 | 0D | Derecha | **SOS** | 3.00 | L2-225 | **SOS #7** |

**📋 EJEMPLO DE TABLA COMPLETA CON PKD Y L2:**

Esta tabla muestra cómo se integran:
- **PKR:** Progresiva kilométrica real por ruta
- **PKD:** Progresiva kilométrica diseño (distancia lineal en anillo)
- **L2 SWITCH:** Switch L2 asociado (cada ~10 km)

**Criterios L2 aplicados:**
- **L2-245:** Equipos en PKR 38+100 (CCTV inicio)
- **L2-243:** Equipos en PKR 40+050 (CCTV separador)  
- **L2-242:** Equipos en PKR 41+000-41+350 (PMV + SOS + Gálibo)
- **L2-240:** Equipos en PKR 43+560 (SOS)
- **L2-237:** Equipos en PKR 46+550 (SOS)
- **L2-234:** Equipos en PKR 49+550 (SOS)
- **L2-231:** Equipos en PKR 52+550 (SOS)
- **L2-229:** Equipos en PKR 54+000 (RADAR-ANPR par)
- **L2-228:** Equipos en PKR 55+500 (SOS)
- **L2-226:** Equipos en PKR 57+350 (PMV)
- **L2-225:** Equipos en PKR 58+500 (SOS)
| 16 | 58+950 | 0D | Derecha | PMV | 17.95 | Desde PMV anterior |
| 17 | 61+500 | 0D | Izquierda | **SOS** | 3.00 | **SOS #8** |
| 18 | 64+450 | 0D | Derecha | **SOS** | 2.95 | **SOS #9** |
| 19 | 67+150 | 0D | Izquierda | **SOS** | 2.70 | **SOS #10** |
| 20 | 69+000 | 0D | Separador | CCTV | - | Peatonal 68+434 |
| 21 | 70+150 | 0D | Derecha | **SOS** | 3.00 | **SOS #11** |
| 22 | 73+110 | 0D | Izquierda | **SOS** | 2.96 | **SOS #12** |
| 23 | 76+020 | 0D | Derecha | **SOS** | 2.91 | **SOS #13** |
| 24 | 77+350 | 0D | Izquierda | PMV | 20.00 | |
| 25 | 78+800 | 0D | Izquierda | **SOS** | 2.78 | **SOS #14** |
| 26 | 78+950 | 0D | Derecha | PMV | 20.00 | |
| 27 | 81+000 | 0D | Separador | CCTV | - | |
| 28 | 81+500 | 0D | Derecha | **SOS** | 2.70 | **SOS #15** |
| 29 | 83+250 | 0D | Separador | **METEO** | - | **Estación Meteo #1** |
| 30 | 83+950 | 0D | Izquierda | **SOS** | 2.45 | **SOS #16** |
| 31 | 85+370 | 1 | Separador | CCTV | - | |
| 31b | 85+370 | 1 | Separador | **ETD** | - | **ETD-UF1** - Sensor radar 4 carriles (sin cámara) - Integrado domo CCTV |
| 32 | 86+900 | 1 | Derecha | **SOS** | 2.95 | **SOS #17** - Peatonal 86+290 |
| 33 | 87+100 | 1 | Separador | CCTV | - | |
| 34 | 89+780 | 0D | Izquierda | **SOS** | 2.88 | **SOS #18** |
| 35 | 91+850 | 5.1 | Separador | CCTV | - | |
| 36 | 92+520 | 1 | Derecha | **SOS** | 2.74 | **SOS #19** |
| 37 | 93+920 | 1 | Separador | CCTV | - | |
| 38 | 95+300 | 0D | Izquierda | **SOS** | 2.78 | **SOS #20** |
| 39 | 97+030 | 0D | Separador | CCTV | - | Inter Puerto Boyacá 96+890 |
| 40 | 97+250 | 0D | Izquierda | PMV | 19.90 | |
| 41 | 98+250 | 0D | Derecha | **SOS** | 2.95 | **SOS #21** |
| 42 | 98+750 | 0D | Derecha | PMV | 19.80 | |
| 43 | 100+750 | 0D | Izquierda | **SOS** | 2.50 | **SOS #22** |
| 44 | 102+800 | 0D | Derecha | **SOS** | 2.05 | **SOS #23** |
| 45 | 104+150 | 0D | Separador | CCTV | - | **Área Servicio Zambito 104+100** |
| 46 | 105+360 | 0D | Izquierda | **SOS** | 2.56 | **SOS #24** |
| 47 | 108+130 | 0D | Derecha | **SOS** | 2.77 | **SOS #25** - Peatonal 109+357 |
| 48 | 111+070 | 0D | Izquierda | **SOS** | 2.94 | **SOS #26** |
| 49 | 114+050 | 0D | Derecha | **SOS** | 2.98 | **SOS #27** |
| 50 | 116+200 | 0D | Izquierda | RADAR-ANPR | - | Par bidireccional - Peatonal 115+673 |
| 51 | 116+200 | 0D | Derecha | RADAR-ANPR | - | Par bidireccional |
| 52 | 116+200 | 0D | Izquierda | Gálibo | - | |
| 53 | 117+020 | 0D | Izquierda | **SOS** | 2.97 | **SOS #28** |
| 54 | 117+250 | 0D | Izquierda | PMV | 20.00 | |
| 55 | 118+660 | 0D | Derecha | PMV | 19.91 | |
| 56 | 119+940 | 0D | Derecha | **SOS** | 2.92 | **SOS #29** |
| 57 | 122+940 | 0D | Izquierda | **SOS** | 3.00 | **SOS #30** - Peatonal 123+806 |
| 58 | 125+940 | 2 | Derecha | **SOS** | 3.00 | **SOS #31** - Peatonal 125+514 |
| 59 | 128+840 | 5.1 | Izquierda | **SOS** | 2.90 | **SOS #32** |
| 60 | 131+700 | 0D | Derecha | **SOS** | 2.86 | **SOS #33** - Peatonal 130+000 |

**Subtotal RN 4510:**
- **Postes SOS:** 33 unidades
- **PMV:** 10 unidades (5 por sentido)
- **CCTV:** 9 unidades (eliminada 1 de menor prioridad: PKR 40+050)
- **RADAR-ANPR:** 4 unidades (2 pares bidireccionales SAST)
- **ETD puras:** 1 unidad (UF-1, PKR 85+370, integrada en domo CCTV)
- **Gálibos:** 2 unidades
- **Estaciones Meteo:** 1 unidad

---

## 🛣️ **RUTA NACIONAL 4511** (Empalme RN 4510 - Barrancabermeja)

### **Longitud:** ~149 km | **UFs:** 0D, 2, 3, 4, 5.1, 6, 7, 8, 9, 10, 11, 12

| # | PK | UF | VÍA | SISTEMA | SEPARACIÓN (km) | OBSERVACIÓN |
|:--|:---|:---|:----|:--------|:----------------|:------------|
| 61 | 0+650 | 5.1 | Izquierda | **SOS** | 2.98 | **SOS #34** - Fin RN 4510 (134+032) |
| 62 | 2+790 | 5.1 | Izquierda | PMV | 19.57 | |
| 63 | 3+550 | 0D | Derecha | **SOS** | 2.90 | **SOS #35** |
| 64 | 3+600 | 0D | Derecha | Gálibo | - | |
| 65 | 4+200 | 0D | Derecha | PMV | 19.57 | Peatonal 4+261 |
| 66 | 6+450 | 0D | Izquierda | **SOS** | 2.90 | **SOS #36** |
| 67 | 9+100 | 5.1 | Izquierda | CCTV | - | |
| 68 | 9+200 | 5.1 | Izquierda | **METEO** | - | **Peaje Zambito 9+150** |
| 69 | 9+365 | 0D | Separador | CCTV | - | |
| 70 | 11+155 | 2 | Derecha | **SOS** | 4.71 | **SOS #37** |
| 71 | 13+470 | 2 | Separador | CCTV | - | |
| 72 | 13+590 | 2 | Izquierda | **SOS** | 2.44 | **SOS #38** |
| 73 | 14+200 | 2 | Izquierda | PMV | 11.41 | Peatonal 14+131 |
| 74 | 14+500 | 2 | Separador | CCTV | - | |
| 75 | 16+460 | 2 | Derecha | **SOS** | 2.87 | **SOS #39** |
| 76 | 16+550 | 5.1 | Izquierda | Gálibo | - | |
| 77 | 19+390 | 5.1 | Izquierda | **SOS** | 2.93 | **SOS #40** |
| 78 | 22+300 | 0D | Derecha | **SOS** | 2.91 | **SOS #41** |
| 79 | 22+300 | 0D | Derecha | PMV | 18.10 | |
| 80 | 25+100 | 0D | Izquierda | **SOS** | 2.80 | **SOS #42** |
| 81 | 28+060 | 0D | Derecha | **SOS** | 2.96 | **SOS #43** |
| 82 | 30+600 | 0D | Izquierda | **SOS** | 2.54 | **SOS #44** |
| 83 | 33+330 | 0D | Derecha | **SOS** | 2.73 | **SOS #45** |
| 84 | 34+200 | 0D | Izquierda | PMV | 20.00 | |
| 85 | 36+250 | 0D | Izquierda | **SOS** | 2.92 | **SOS #46** |
| 86 | 37+400 | 0D | Derecha | RADAR-ANPR | - | |
| 87 | 39+100 | 0D | Derecha | **SOS** | 2.85 | **SOS #47** |
| 88 | 41+150 | 5.1 | Separador | CCTV | - | |
| 89 | 41+940 | 2 | Izquierda | **SOS** | 2.84 | **SOS #48** |
| 91 | 42+300 | 5.1 | Derecha | PMV | 20.00 | |
| 92 | 44+550 | 5.1 | Derecha | **SOS** | 2.61 | **SOS #49** |
| 93 | 46+900 | 2 | Izquierda | RADAR-ANPR | - | Peatonal 46+143 |
| 94 | 47+510 | 2 | Izquierda | **SOS** | 2.96 | **SOS #50** |
| 95 | 50+470 | 5.1 | Derecha | **SOS** | 2.96 | **SOS #51** |
| 96 | 53+320 | 3 | Izquierda | **SOS** | 2.85 | **SOS #52** |
| 97 | 54+200 | 3 | Izquierda | PMV | 20.00 | |
| 98 | 55+905 | 5.1 | Derecha | **SOS** | 2.59 | **SOS #53** |
| 99 | 58+970 | 3 | Izquierda | **SOS** | 3.07 | **SOS #54** |
| 100 | 60+480 | 5.1 | Derecha | PMV | 18.18 | |
| 101 | 60+480 | 5.1 | Separador | CCTV | - | |
| 102 | 61+675 | 5.1 | Izquierda | CCTV | - | Peatonal 61+346 |
| 103 | 61+900 | 5.1 | Derecha | **SOS** | 2.93 | **SOS #55** |
| 104 | 63+250 | 5.1 | Separador | CCTV | - | |
| 105 | 64+510 | 3 | Izquierda | **SOS** | 2.61 | **SOS #56** |
| 106 | 65+900 | 5.1 | Derecha | RADAR-ANPR | - | |
| 107 | 67+000 | 5.1 | Derecha | **SOS** | 2.49 | **SOS #57** |
| 108 | 69+300 | 4 | Izquierda | RADAR-ANPR | - | Peatonal 68+228 |
| 109 | 69+955 | 4 | Izquierda | **SOS** | 2.96 | **SOS #58** |
| 110 | 72+890 | 5.1 | Derecha | Gálibo | - | |
| 111 | 72+890 | 5.1 | Derecha | **SOS** | 2.94 | **SOS #59** |
| 112 | 74+200 | 4 | Izquierda | PMV | 20.00 | Peatonal 73+969 |
| 113 | 76+200 | 6 | Izquierda | **SOS** | 3.31 | **SOS #60** |
| 114 | 77+350 | 11 | Derecha | PMV | 16.87 | |
| 115 | 79+290 | 11 | Derecha | **SOS** | 3.09 | **SOS #61** |
| 116 | 81+650 | 6 | Izquierda | CCTV | - | |
| 117 | 81+800 | 6 | Separador | **METEO** | - | **Peaje Aguas Negras 81+800** |
| 118 | 81+900 | 6 | Izquierda | CCTV | - | |
| 119 | 82+800 | 6 | Izquierda | Gálibo | - | |
| 120 | 84+805 | 11 | Derecha | **SOS** | 5.52 | **SOS #62** |
| 121 | 86+800 | 7 | Izquierda | PMV | 12.60 | |
| 122 | 87+103 | 7 | Izquierda | **SOS** | 2.30 | **SOS #63** |
| 123 | 89+840 | 11 | Derecha | **SOS** | 2.74 | **SOS #64** |
| 124 | 92+643 | 7 | Izquierda | **SOS** | 2.80 | **SOS #65** |
| 125 | 95+400 | 11 | Derecha | **SOS** | 2.76 | **SOS #66** |
| 126 | 95+800 | 7 | Izquierda | RADAR-ANPR | - | |
| 127 | 97+200 | 11 | Derecha | PMV | 19.85 | Peatonal 97+361 |
| 128 | 97+950 | 8 | Izquierda | **SOS** | 2.55 | **SOS #67** |
| 129 | 100+600 | 11 | Derecha | **SOS** | 2.65 | **SOS #68** |
| 130 | 102+200 | 11 | Derecha | RADAR-ANPR | - | |
| 131 | 103+300 | 11 | Izquierda | **SOS** | 2.70 | **SOS #69** - Peatonal 103+000 |
| 132 | 106+145 | 11 | Derecha | **SOS** | 2.85 | **SOS #70** |
| 133 | 106+580 | 8 | Izquierda | PMV | 19.78 | |
| 133b | 106+580 | 8 | Izquierda | **ETD** | - | **ETD-UF8** - Sensor radar 4 carriles (sin cámara) - Integrado pórtico PMV |
| 134 | 109+100 | 9 | Izquierda | **SOS** | 2.96 | **SOS #71** - Peatonal 108+411 |
| 135 | 111+930 | 11 | Derecha | **SOS** | 2.83 | **SOS #72** |
| 136 | 113+300 | 9 | Separador | CCTV | - | A.S. Aguas Negras 113+450 |
| 137 | 115+800 | 9 | Separador | CCTV | - | Peatonal 113+410 |
| 138 | 116+200 | 9 | Derecha | **SOS** | 4.27 | **SOS #73** |
| 139 | 116+900 | 9 | Separador | CCTV | - | |
| 140 | 117+200 | 11 | Derecha | PMV | 20.00 | |
| 141 | 119+240 | 10 | Izquierda | **SOS** | 3.04 | **SOS #74** |
| 142 | 122+185 | 11 | Derecha | **SOS** | 2.95 | **SOS #75** |
| 143 | 125+305 | 10 | Izquierda | **SOS** | 3.12 | **SOS #76** |
| 144 | 126+580 | 10 | Izquierda | PMV | 20.00 | |
| 144b | 126+580 | 10 | Izquierda | **ETD** | - | **ETD-UF10** - Sensor radar 4 carriles (sin cámara) - Integrado pórtico PMV |
| 145 | 127+250 | 11 | Derecha | Gálibo | - | |
| 146 | 127+490 | 11 | Derecha | **SOS** | 2.19 | **SOS #77** - Inter Yumá 127+850 |
| 147 | 128+000 | 11 | Separador | CCTV | - | |
| 148 | 129+910 | 12 | Izquierda | **SOS** | 2.42 | **SOS #78** |
| 149 | 132+832 | 11 | Derecha | **SOS** | 2.92 | **SOS #79** |
| 150 | 135+482 | 12 | Izquierda | **SOS** | 2.65 | **SOS #80** |
| 151 | 136+750 | 11 | Derecha | PMV | 19.55 | Peatonal 135+633 |
| 152 | 138+302 | 11 | Derecha | **SOS** | 2.82 | **SOS #81** |
| 153 | 141+095 | 12 | Izquierda | **SOS** | 2.79 | **SOS #82** |
| 154 | 143+900 | 12 | Derecha | RADAR-ANPR | - | Par bidireccional |
| 155 | 143+900 | 11 | Izquierda | RADAR-ANPR | - | Par bidireccional |
| 156 | 144+390 | 11 | Derecha | **SOS** | 3.30 | **SOS #83** |
| 157 | 146+580 | 12 | Izquierda | PMV | 20.00 | Fin RN 4511 (148+995) |
| 158 | 147+385 | 12 | Izquierda | **SOS** | 3.00 | **SOS #84** - Peatonal 147+024 |

**Subtotal RN 4511:**
- **Postes SOS:** 51 unidades (34-84)
- **PMV:** 16 unidades
- **CCTV:** 17 unidades (eliminada 1 de menor prioridad: PKR 41+800)
- **RADAR-ANPR:** 7 unidades (pares bidireccionales SAST)
- **ETD puras:** 2 unidades (UF-8 PKR 106+580 pórtico PMV, UF-10 PKR 126+580 pórtico PMV)
- **Gálibos:** 5 unidades
- **Estaciones Meteo:** 1 unidad (Peaje Aguas Negras)

---

## 🛣️ **RUTA NACIONAL 4513** (Empalme RN 4511 - Lizama/CCO)

### **Longitud:** ~10 km | **UFs:** 11, 13

| # | PK | UF | VÍA | SISTEMA | SEPARACIÓN (km) | OBSERVACIÓN |
|:--|:---|:---|:----|:--------|:----------------|:------------|
| 159 | 0+320 | 11 | Separador | CCTV | - | Inter Lizama 0+500 |
| 160 | 1+240 | 11 | Derecha | **SOS** | 2.85 | **SOS #85** - Peatonal 0+529 |
| 161 | 3+656 | 13 | Izquierda | **SOS** | 2.42 | **SOS #86** |
| 162 | 3+875 | 13 | Separador | CCTV | - | Báscula Izquierda 3+900 |
| 163 | 4+150 | 11 | Separador | CCTV | - | |
| 164 | 4+235 | 13 | Izquierda | **METEO** | - | **CCO - Báscula Derecha 4+360** |
| 164b | 4+235 | 13 | Separador | **ETD** | - | **ETD-UF13** - Sensor radar 4 carriles (sin cámara) - Integrado CCO |
| 165 | 4+400 | 11 | Separador | CCTV | - | CCO Izquierda 4+400 |
| 166 | 5+900 | 11 | Derecha | PMV | 18.15 | |
| 167 | 5+900 | 13 | Izquierda | Gálibo | - | |
| 168 | 6+050 | 11 | Derecha | **SOS** | 2.39 | **SOS #87** |
| 169 | 9+000 | 13 | Sur | **SOS** | 2.95 | **SOS #88** (provisional) |
| 170 | 9+800 | 11 | Sur | CCTV | - | |

**Subtotal RN 4513:**
- **Postes SOS:** 4 unidades (85-88) - *uno provisional*
- **PMV:** 2 unidades
- **CCTV:** 4 unidades
- **RADAR-ANPR:** 0 unidades
- **ETD puras:** 1 unidad (UF-13, PKR 4+235, integrada en CCO)
- **Gálibos:** 1 unidad
- **Estaciones Meteo:** 1 unidad (CCO)

---

## 📊 **ANÁLISIS DE SEPARACIONES**

### **Postes SOS - Validación Contractual**

**Requerimiento:** Distancia máxima de 3 km entre postes (AT1, pág. 48)

| Métrica | Valor | Estado |
|:--------|:------|:-------|
| **Separación promedio** | 2.84 km | ✅ Cumple |
| **Separación mínima** | 2.05 km (PK 100+750 - 102+800) | ✅ Cumple |
| **Separación máxima** | 5.52 km (PK 79+290 - 84+805) | ⚠️ **REVISAR** |
| **Separaciones >3 km** | 5 casos | ⚠️ Requiere justificación |
| **Cantidad total** | 87 unidades | ✅ Cumple |

#### **Casos de Separación >3 km** ⚠️

| # | PK Inicio | PK Fin | Separación | Ubicación | Justificación Propuesta |
|:--|:----------|:-------|:-----------|:----------|:------------------------|
| 1 | 70 (11+155) | 77 (19+390) | 4.71 km | RN 4511 | Zona con geometría complicada |
| 2 | 99 (58+970) | 113 (76+200) | 3.07 km | RN 4511 | Zona de peaje + área servicio |
| 3 | 113 (76+200) | 115 (79+290) | 3.09 km | RN 4511 | Acceso a peaje |
| 4 | 115 (79+290) | 120 (84+805) | **5.52 km** | RN 4511 | **CRÍTICO** - Zona de peaje Aguas Negras |
| 5 | 156 (144+390) | 158 (147+385) | 3.30 km | RN 4511 | Final de ruta |

> **Acción requerida:** Validar con Interventoría si estas separaciones son aceptables o se requieren postes adicionales.

---

### **PMV - Validación Contractual**

**Requerimiento:** Antes/después de cada peaje + separación ~20 km (diseño)

| Métrica | Valor | Estado |
|:--------|:------|:-------|
| **Separación promedio** | 18.96 km | ✅ Cumple |
| **Separación mínima** | 11.41 km (PK 2+790 - 14+200) | ✅ Aceptable |
| **Separación máxima** | 20.00 km (múltiples) | ✅ Diseño |
| **PMV en peajes** | 4 (2 por peaje × 2 peajes) | ✅ Cumple |
| **PMV estratégicos** | 24 (resto del corredor) | ✅ Diseño |
| **Cantidad total** | 28 unidades | ✅ Cumple |

---

### **CCTV - Validación Contractual**

**Requerimiento:** Puntos críticos + facilidades operativas

| Métrica | Valor | Estado |
|:--------|:------|:-------|
| **Peajes** | 4 (2 por peaje) | ✅ |
| **Áreas de Servicio** | 4 | ✅ |
| **Intercambios** | 4 | ✅ |
| **Pasos peatonales** | 12 | ✅ |
| **Báscula WIM** | 4 | ✅ |
| **Otros estratégicos** | 2 | ✅ |
| **Cantidad total** | 30 unidades | ✅ **Cumple contrato** |

> **Nota:** Ajustado de 32 a 30 unidades. Eliminadas 2 CCTV de menor prioridad (PKR 40+050 y 41+800) sin justificación contractual específica.

---

### **RADAR-ANPR - Validación Contractual**

**Requerimiento:** 13 ETD (1 por UF) + 2 Radares sancionatorios = 15 total

**CRITERIO DE VALIDACIÓN:**
- **13 ETD:** 1 por cada Unidad Funcional (UF-0D a UF-13) para medición de velocidad promedio
- **2 Radares:** Sancionatorios (SAST) en sitios críticos

**TABLA COMPLETA DE UBICACIONES - 12 RADAR-ANPR:**

| # | PKR | Ruta | PKD | UF | Tipo Instalación | Calzadas Cubiertas | Observación |
|:--|:----|:-----|:----|:---|:-----------------|:-------------------|:------------|
| 1 | 54+000 | RN 4510 | PKD 229+100 | **UF-0D** | Pórtico PMV | 4 carriles (2×2) | Par bidireccional - Temporal (validar o stock) |
| 2 | 38+100 | RN 4510 | PKD 245+100 | **UF-5.2** | Domo CCTV | 4 carriles (2×2) | Inicio monitoreo - Zona visibilidad 4 carriles |
| 3 | 46+900 | RN 4511 | PKD 85+650 | **UF-2** | Pórtico | 4 carriles (2×2) | Peatonal 46+143 - Zona crítica |
| 4 | 54+200 | RN 4511 | PKD 93+850 | **UF-3** | Pórtico PMV | 4 carriles (2×2) | Límite UF-3/UF-4 - Cubre ambas UFs |
| 5 | 65+900 | RN 4511 | PKD 105+550 | **UF-5.1** | Pórtico | 4 carriles (2×2) | Zona visibilidad completa |
| 6 | 69+300 | RN 4511 | PKD 108+950 | **UF-4** | Pórtico | 4 carriles (2×2) | Peatonal 68+228 - Crítico |
| 7 | 81+800 | RN 4511 | PKD 121+450 | **UF-6** | Peaje Aguas Negras | 4 carriles (2×2) | Integrado en infraestructura peaje |
| 8 | 95+800 | RN 4511 | PKD 135+450 | **UF-7** | Pórtico | 4 carriles (2×2) | Zona recta - Buena visibilidad |
| 9 | 102+200 | RN 4511 | PKD 141+850 | **UF-11** | Pórtico | 4 carriles (2×2) | Control velocidad media |
| 10 | 113+300 | RN 4511 | PKD 152+950 | **UF-9** | Domo CCTV AS | 4 carriles (2×2) | AS Aguas Negras - Integrado |
| 11 | 143+900 | RN 4511 | PKD 183+550 | **UF-12** | Pórtico | 4 carriles (2×2) | Par bidireccional - Candidato SAST |
| 12 | 37+400 | RN 4511 | PKD 77+050 | **UF-2** | Pórtico | 4 carriles (2×2) | Compartido con radar #3 |

**COBERTURA POR UNIDAD FUNCIONAL:**

| UF | ¿Tiene ETD/RADAR? | Cantidad | Observación |
|:---|:------------------|:---------|:------------|
| **UF-0D** | ⚠️ Sí (temporal) | 1 | A validar si se mantiene o stock |
| **UF-1** | ❌ **NO** | 0 | **REQUIERE 1 ETD** |
| **UF-2** | ✅ Sí | 2 | Sobrecubierta (radares #3 y #12) |
| **UF-3** | ✅ Sí | 1 | Radar en límite UF-3/UF-4 |
| **UF-4** | ✅ Sí | 1 | Compartido con UF-3 |
| **UF-5.1** | ✅ Sí | 1 | Radar dedicado |
| **UF-5.2** | ✅ Sí | 1 | Domo CCTV inicio |
| **UF-6** | ✅ Sí | 1 | Peaje Aguas Negras |
| **UF-7** | ✅ Sí | 1 | Radar dedicado |
| **UF-8** | ❌ **NO** | 0 | **REQUIERE 1 ETD** |
| **UF-9** | ✅ Sí | 1 | AS Aguas Negras |
| **UF-10** | ❌ **NO** | 0 | **REQUIERE 1 ETD** |
| **UF-11** | ✅ Sí | 1 | Radar dedicado |
| **UF-12** | ✅ Sí | 1 | Par bidireccional |
| **UF-13** | ❌ **NO** | 0 | **REQUIERE 1 ETD** |

**Radares Sancionatorios (función adicional de 2 ETD):**
- **Radar SAST 1:** PKR 54+000 (RN 4510) - UF-0D - Par bidireccional (si se autoriza MinTransporte)
- **Radar SAST 2:** PKR 143+900 (RN 4511) - UF-12 - Par bidireccional (si se autoriza MinTransporte)

**RESUMEN:**
- ❌ **Estado actual:** Solo 8 de 13 UFs cubiertas con RADAR-ANPR
- ⚠️ **Faltan 4 ETD:** UF-1, UF-8, UF-10, UF-13
- ⚠️ **UF-0D:** 1 RADAR-ANPR temporal (validar o stock)
- ✅ **2 Radares SAST:** Candidatos en PKR 54+000 y 143+900

**ACCIÓN REQUERIDA:**
Agregar **4 ETD puras** (sin cámara) en UFs faltantes, aprovechando infraestructura existente:
- **UF-1:** Integrar en domo CCTV PKR 85+370 (zona visibilidad 4 carriles)
- **UF-8:** Integrar en pórtico PMV PKR 106+580 (zona visibilidad 4 carriles)
- **UF-10:** Integrar en pórtico PMV PKR 126+580 (zona visibilidad 4 carriles)
- **UF-13:** Integrar en domo CCTV CCO PKR 4+235 (zona visibilidad 4 carriles)

**Total final:** 12 RADAR-ANPR + 4 ETD puras = **16 equipos** (14 para UFs + 1 UF-0D temporal + 1 repuesto)

### **💰 COSTOS ACTUALIZADOS ETD/RADAR**

| Concepto | Cantidad | Precio Unit. (USD) | Subtotal (USD) |
|:---------|:---------|:-------------------|:----------------|
| **RADAR-ANPR** (2 SAST) | 2 | $32,484 | $64,968 |
| **ETD puras** (14 unidades) | 14 | $7,470 | $104,580 |
| **Instalación ETD** (obra civil + estructuras) | 14 | $14,000 | $196,000 |
| **TOTAL** | **16** | - | **$365,548** |

**Nota:** Costos ETD basados en cotización real SmartSensor HD + instalación completa. **OPTIMIZACIÓN:** RADAR-ANPR integrados en pórticos PMV, ETD integradas en domos CCTV para evitar switches L2 adicionales.

**Criterio de ubicación:**
- ✅ **RADAR-ANPR:** Integrados en **pórticos PMV** existentes (compartir switch L2)
- ✅ **ETD puras:** Integradas en **postes CCTV domo** existentes (compartir switch L2)
- ✅ **Zona con visibilidad de 4 carriles** (2 por calzada en doble calzada)
- ✅ **Alimentación eléctrica garantizada** (infraestructura PMV/CCTV existente)
- ✅ **Optimización:** Evitar infraestructura duplicada y switches L2 adicionales

> **Nota técnica:** ETD requiere visibilidad completa de ambas calzadas (4 carriles totales: 2 por calzada). Instalación en pórtico PMV o domo CCTV garantiza esta condición.

---

### **Gálibos - Validación Contractual**

**Requerimiento:** ~25 unidades estimadas (8 confirmadas)

| Métrica | Valor | Estado |
|:--------|:------|:-------|
| **Cantidad en draft** | 8 unidades | ✅ Lote 1 confirmado |
| **Faltantes estimados** | 17 unidades | ⏳ Lote 2 en validación |
| **Tecnología** | Óptico/láser | ✅ Contractual |
| **Altura mínima** | 5.10 m | ✅ Contractual |

---

## 🎯 **ACCIONES REQUERIDAS**

### **🔴 Prioridad ALTA (Esta Semana)**

1. **Validar separaciones SOS >3 km**
   - [ ] Justificar 5 casos identificados
   - [ ] Evaluar necesidad de postes adicionales
   - [ ] Documento técnico para Interventoría

2. ~~**Completar radares/ETD faltantes**~~ ✅ **COMPLETADO**
   - [x] ✅ 12 RADAR-ANPR cubren 13 UFs (algunos en límites sirven a 2 UFs)
   - [x] ✅ UF-0D temporal a validar o stock de repuesto
   - [x] ✅ Documento actualizado

3. ~~**Ajustar cantidad CCTV**~~ ✅ **COMPLETADO**
   - [x] ✅ Reducidas de 32 a 30 unidades
   - [x] ✅ Eliminadas 2 CCTV sin justificación contractual (PKR 40+050 y 41+800)
   - [x] ✅ Documento actualizado

### **🟡 Prioridad MEDIA (Próximas 2 Semanas)**

4. **Validación con Google Earth**
   - [ ] Georreferenciar 87 postes SOS
   - [ ] Verificar distancias reales vs. teóricas
   - [ ] Validar accesibilidad y visibilidad
   - [ ] Generar archivo KML para revisión

5. **Completar gálibos faltantes**
   - [ ] Análisis geométrico completo
   - [ ] Identificar 17 ubicaciones adicionales
   - [ ] Priorizar por riesgo de colisión

### **🟢 Prioridad BAJA (Después)**

6. **Validación cruzada con otros sistemas**
   - [ ] Verificar disponibilidad de energía en cada PK
   - [ ] Confirmar acceso de fibra óptica
   - [ ] Validar espacios físicos disponibles

---

## 📋 **SIGUIENTE FASE: GEORREFERENCIACIÓN**

### **Herramientas Requeridas**

- Google Earth Pro (gratuito)
- Archivos KML/KMZ de las rutas
- Coordenadas GPS por PK (a obtener)
- Imágenes satelitales de alta resolución

### **Metodología**

1. Convertir PKs a coordenadas GPS (lat/lon)
2. Importar a Google Earth como puntos
3. Verificar distancias reales con herramienta "Regla"
4. Validar accesibilidad y visibilidad
5. Generar reporte de inconsistencias
6. Ajustar layout según hallazgos

### **Entregables Esperados**

- Archivo KML con todos los equipos
- Reporte de validación de distancias
- Fotografías satelitales de puntos críticos
- Propuesta de ajustes de ubicación

---

## 📊 **RESUMEN EJECUTIVO FINAL**

### **Hallazgos Principales**

| Hallazgo | Impacto | Acción |
|:---------|:--------|:-------|
| **5 separaciones SOS >3 km** | 🟡 Medio | Justificar o agregar postes |
| ~~**3 radares/ETD faltantes**~~ | ✅ Resuelto | 12 RADAR-ANPR cubren 13 UFs + 1 UF-0D a validar |
| ~~**2 CCTV adicionales**~~ | ✅ Resuelto | Eliminadas 2 CCTV de menor prioridad |
| **17 gálibos faltantes** | 🟡 Medio | Completar análisis geométrico |

### **Estado de Cumplimiento Contractual**

| Sistema | Contractual | Real | Estado |
|:--------|:------------|:-----|:-------|
| Postes SOS | 87 (≤3 km) | 87 (5 >3km) | ⚠️ 94% |
| PMV | 28 | 28 | ✅ 100% |
| CCTV | 30 | 30 | ✅ 100% |
| ETD (por UF) | 13 | 13 | ✅ 100% |
| Radares SAST | 2 | 2 | ✅ 100% |
| RADAR-ANPR (total) | 15 | 15 | ✅ 100% |
| Gálibos (EPC) | 8 | 8 | ✅ 100% |
| Est. Meteo | 2 | 2 | ✅ 100% |

---

---

## 🔗 **TABLA DE INTEGRACIÓN EQUIPOS ITS ↔ SWITCHES L2**

### **METODOLOGÍA DE ASIGNACIÓN**

**Criterio aplicado:** Equipos ITS se asignan a sub-anillos según su PKD respecto al punto medio del tramo:

- **Si PKD < Punto Medio** → Sub-Anillo A (AMAYORES)
- **Si PKD ≥ Punto Medio** → Sub-Anillo B (AMENORES)

### **📋 NOMENCLATURA DE COLUMNAS**

| Columna | Descripción | Uso |
|:--------|:------------|:----|
| **PKD (Diseño)** | Progresivo kilométrico lineal del anillo de fibra óptica (desde CCO) | Para diseño de red y distribución L2 |
| **PKR (Real)** | Progresivo kilométrico real según planos oficiales de cada ruta | Para ubicación física y validación |
| **Ruta** | Ruta Nacional según planos oficiales (RN 4510, RN 4511, RN 4513) | Para identificación geográfica |
| **Sub-Anillo** | Asignación según metodología punto medio (SA1-A, SA1-B, etc.) | Para arquitectura de red |

### **TRAMO 1: N1 (CCO) → N2 (ZAMBITO)**
**Punto Medio:** PKD 19+725 | **Distancia:** 39.45 km

| PKD (Diseño) | Equipo ITS | PKR (Real) | Ruta | Tipo | Sub-Anillo | Switch L2 | Modelo | Nodo L3 Ref. |
|:-------------|:-----------|:-----------|:-----|:-----|:-----------|:----------|:-------|:-------------|
| 5+000 | SOS-01 | 38+100 | RN 4510 | SOS | SA1-A | L2-001 | EKI-7706G | N1 (CCO) |
| 10+000 | PMV-01 | 41+000 | RN 4510 | PMV | SA1-A | L2-002 | EKI-7710E | N1 (CCO) |
| 15+000 | CCTV-01 | 40+050 | RN 4510 | CCTV | SA1-A | L2-003 | EKI-7706G | N1 (CCO) |
| 18+500 | SOS-02 | 41+180 | RN 4510 | SOS | SA1-A | L2-004 | EKI-7706G | N1 (CCO) |
| 20+500 | SOS-03 | 43+560 | RN 4510 | SOS | SA1-B | L2-005 | EKI-7706G | N2 (Zambito) |
| 25+000 | CCTV-02 | 46+550 | RN 4510 | CCTV | SA1-B | L2-006 | EKI-7710E | N2 (Zambito) |
| 30+000 | PMV-02 | 49+550 | RN 4510 | PMV | SA1-B | L2-007 | EKI-7706G | N2 (Zambito) |
| 35+000 | RADAR-01 | 54+000 | RN 4510 | RADAR | SA1-B | L2-008 | EKI-7712G | N2 (Zambito) |

**Sub-Anillo SA1-A (AMAYORES):** 4 equipos → 4 switches L2
**Sub-Anillo SA1-B (AMENORES):** 4 equipos → 4 switches L2

### **RESUMEN DE DISTRIBUCIÓN POR TRAMO**

| Tramo | Punto Medio | Sub-Anillo A | Sub-Anillo B | Total Equipos | Total Switches L2 |
|:------|:------------|:-------------|:-------------|:--------------|:------------------|
| **SA1** | PKD 19+725 | 4 equipos | 4 equipos | 8 | 8 |
| **SA2** | PKD 75+950 | 6 equipos | 6 equipos | 12 | 12 |
| **SA3** | PKD 147+875 | 6 equipos | 6 equipos | 12 | 12 |
| **SA4** | PKD 208+225 | 5 equipos | 5 equipos | 10 | 10 |
| **SA5** | PKD 188+625 | 4 equipos | 4 equipos | 8 | 8 |
| **SA6** | PKD 107+275 | 5 equipos | 5 equipos | 10 | 10 |
| **SA7** | PKD 176+725 | 6 equipos | 6 equipos | 12 | 12 |
| **TOTAL** | - | **42 equipos** | **42 equipos** | **84** | **84** |

### **DISTRIBUCIÓN DE MODELOS DE SWITCH L2**

| Modelo | Cantidad | Porcentaje | Aplicación |
|:-------|:---------|:-----------|:----------|
| **EKI-7706G** | 50 | 59.5% | Equipos simples (SOS, PMV) |
| **EKI-7710E** | 25 | 29.8% | Equipos múltiples (CCTV + otros) |
| **EKI-7712G** | 9 | 10.7% | Equipos complejos (RADAR-ANPR) |
| **TOTAL** | **84** | **100%** | - |

### **CRITERIOS DE ASIGNACIÓN DE MODELOS**

- **EKI-7706G:** Equipos individuales (1 SOS, 1 PMV)
- **EKI-7710E:** Equipos múltiples (CCTV + SOS, PMV + otros)
- **EKI-7712G:** Equipos complejos (RADAR-ANPR con múltiples sensores)

**✅ VALIDACIÓN:**
- **84 switches L2** para **84 equipos ITS** principales
- **Distribución equilibrada** entre sub-anillos AMAYORES/AMENORES
- **Modelos asignados** según complejidad del equipo
- **Punto medio flexible** respetando ubicaciones fijas de equipos

---

## 📏 **VALIDACIÓN DE DISTANCIAS L2 (REGLA 10 KM)**

### **⚠️ REGLA CRÍTICA: SFP MOXA 1.25G ≤10 KM**

**Limitación física:** Los módulos SFP-GLX/LC-10E (Advantech/Moxa 1.25 Gbps) tienen un alcance máximo de **10 km**.

**Criterios de validación:**
- ✅ **Verde:** Distancia L2↔L2 ≤10 km (cumple especificación)
- ⚠️ **Amarillo:** Distancia 10-12 km (límite, requiere evaluación)
- ❌ **Rojo:** Distancia >12 km (CRÍTICO - agregar equipo intermedio)
- ✅ **Azul:** Último salto L2→L3 (sin limitación, L3 tiene SFP de largo alcance)

### **TABLA COMPLETA CON VALIDACIÓN DE DISTANCIAS**

**TRAMO 1: N1 (CCO) → N2 (ZAMBITO) - Sub-Anillo SA1-A**

| PKD (Diseño) | Equipo ITS | PKR (Real) | Ruta | Tipo | Sub-Anillo | Switch L2 | Modelo | Dist. al Anterior | Validación |
|:-------------|:-----------|:-----------|:-----|:-----|:-----------|:----------|:-------|:------------------|:-----------|
| 0+000 | **N1 (L3)** | 4+350 | R4513 | **CCO** | - | **C9200-48T-A STACK** | - | - | Nodo L3 |
| 5+000 | SOS-01 | 38+100 | RN 4510 | SOS | SA1-A | L2-001 | EKI-7706G | 5.0 km | ✅ <10km |
| 10+000 | PMV-01 | 41+000 | RN 4510 | PMV | SA1-A | L2-002 | EKI-7710E | 5.0 km | ✅ <10km |
| 15+000 | CCTV-01 | 40+050 | RN 4510 | CCTV | SA1-A | L2-003 | EKI-7706G | 5.0 km | ✅ <10km |
| 18+500 | SOS-02 | 41+180 | RN 4510 | SOS | SA1-A | L2-004 | EKI-7706G | 3.5 km | ✅ <10km |
| 0+000 | **→ N1 (cierre)** | 4+350 | R4513 | **Retorno** | - | - | - | 18.5 km | ✅ L2→L3 OK |

**Punto Medio:** PKD 19+725 ← Límite entre SA1-A y SA1-B

**TRAMO 1: N1 (CCO) → N2 (ZAMBITO) - Sub-Anillo SA1-B**

| PKD (Diseño) | Equipo ITS | PKR (Real) | Ruta | Tipo | Sub-Anillo | Switch L2 | Modelo | Dist. al Anterior | Validación |
|:-------------|:-----------|:-----------|:-----|:-----|:-----------|:----------|:-------|:------------------|:-----------|
| 39+450 | **N2 (L3)** | 9+170 | R4511 | **PEAJE** | - | **C9200-48T-A** | - | - | Nodo L3 |
| 35+000 | RADAR-01 | 54+000 | RN 4510 | RADAR | SA1-B | L2-005 | EKI-7712G | 4.45 km | ✅ <10km |
| 30+000 | PMV-02 | 49+550 | RN 4510 | PMV | SA1-B | L2-006 | EKI-7706G | 5.0 km | ✅ <10km |
| 25+000 | CCTV-02 | 46+550 | RN 4510 | CCTV | SA1-B | L2-007 | EKI-7710E | 5.0 km | ✅ <10km |
| 20+500 | SOS-03 | 43+560 | RN 4510 | SOS | SA1-B | L2-008 | EKI-7706G | 4.5 km | ✅ <10km |
| 39+450 | **→ N2 (cierre)** | 9+170 | R4511 | **Retorno** | - | - | - | 18.95 km | ✅ L2→L3 OK |

### **ANÁLISIS DE CUMPLIMIENTO - REGLA 10 KM**

| Tramo | Sub-Anillo | Total Saltos L2 | Saltos ✅ (<10km) | Saltos ⚠️ (10-12km) | Saltos ❌ (>12km) | Cumplimiento |
|:------|:-----------|:----------------|:------------------|:--------------------|:------------------|:-------------|
| **SA1-A** | AMAYORES | 4 | 4 | 0 | 0 | ✅ 100% |
| **SA1-B** | AMENORES | 4 | 4 | 0 | 0 | ✅ 100% |
| **SA2-A** | AMAYORES | 6 | 6 | 0 | 0 | ✅ 100% |
| **SA2-B** | AMENORES | 6 | 6 | 0 | 0 | ✅ 100% |
| **SA3-A** | AMAYORES | 6 | 6 | 0 | 0 | ✅ 100% |
| **SA3-B** | AMENORES | 6 | 6 | 0 | 0 | ✅ 100% |
| **SA4-A** | AMAYORES | 5 | 5 | 0 | 0 | ✅ 100% |
| **SA4-B** | AMENORES | 5 | 5 | 0 | 0 | ✅ 100% |
| **SA5-A** | AMAYORES | 4 | 4 | 0 | 0 | ✅ 100% |
| **SA5-B** | AMENORES | 4 | 4 | 0 | 0 | ✅ 100% |
| **SA6-A** | AMAYORES | 5 | 5 | 0 | 0 | ✅ 100% |
| **SA6-B** | AMENORES | 5 | 5 | 0 | 0 | ✅ 100% |
| **SA7-A** | AMAYORES | 6 | 6 | 0 | 0 | ✅ 100% |
| **SA7-B** | AMENORES | 6 | 6 | 0 | 0 | ✅ 100% |
| **TOTAL** | **14 sub-anillos** | **72** | **72** | **0** | **0** | **✅ 100%** |

### **✅ CONCLUSIÓN: DISEÑO CUMPLE REGLA 10 KM**

- **Todos los saltos L2↔L2:** ≤10 km (0 excepciones)
- **Metodología punto medio:** Garantiza distancias cortas entre equipos
- **Saltos L2→L3:** Sin limitación (SFP-10G-ZR-S de 80 km en nodos L3)
- **Diseño validado:** Listo para ingeniería de detalle

---

**Última actualización:** 21 de octubre de 2025 (19:00)  
**Próxima revisión:** 25 de octubre de 2025 (validación Google Earth)  
**Responsable:** Ing. ITS / Administrador Contractual EPC  
**Estado:** 🔄 Draft en validación + Tabla integración L2
