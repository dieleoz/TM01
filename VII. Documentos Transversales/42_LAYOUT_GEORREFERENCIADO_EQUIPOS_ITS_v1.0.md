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
| **CCTV** | 30 | 30 (puntos críticos) | ✅ Cumple | Variable |
| **RADAR-ANPR** | 12 | 15 (13 ETD + 2 Radares) | ⚠️ Revisar | Variable |
| **Gálibos** | 8 | 25 (estimación) | ⚠️ Parcial | Variable |
| **Estaciones Meteo** | 2 | 2 (peajes) | ✅ Cumple | En peajes |

### **Distribución por Ruta**

| Ruta | Longitud (km) | Postes SOS | PMV | CCTV | RADAR-ANPR | Gálibos |
|:-----|:--------------|:-----------|:----|:-----|:-----------|:--------|
| **RN 4510** | ~134 km | 41 | 10 | 10 | 4 | 2 |
| **RN 4511** | ~149 km | 44 | 16 | 18 | 7 | 5 |
| **RN 4513** | ~10 km | 2 | 2 | 4 | 1 | 1 |
| **TOTAL** | **~293 km** | **87** | **28** | **32** | **12** | **8** |

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
| 2 | 40+050 | PKD 243+050 | 0D | Separador | CCTV | - | L2-243 | |
| 3 | 41+000 | PKD 242+100 | 0D | Derecha | PMV | - | L2-242 | Inter Koran (40+450) |
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
- **CCTV:** 10 unidades
- **RADAR-ANPR:** 4 unidades (2 pares bidireccionales)
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
| 89 | 41+800 | 0D | Separador | CCTV | - | |
| 90 | 41+940 | 2 | Izquierda | **SOS** | 2.84 | **SOS #48** |
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
- **CCTV:** 18 unidades
- **RADAR-ANPR:** 7 unidades
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
| **Otros estratégicos** | 4 | ✅ |
| **Cantidad total** | 32 unidades | ⚠️ **2 más que contrato (30)** |

> **Nota:** Se identificaron 32 ubicaciones en el draft vs. 30 validadas contractualmente. Requiere ajuste.

---

### **RADAR-ANPR - Validación Contractual**

**Requerimiento:** 13 ETD (1 por UF) + 2 Radares sancionatorios = 15 total

| Métrica | Valor | Estado |
|:--------|:------|:-------|
| **Cantidad en draft** | 12 unidades | ⚠️ **3 menos que contrato (15)** |
| **Pares bidireccionales** | 3 pares (6 unidades) | ✅ |
| **Unidireccionales** | 6 unidades | ✅ |
| **Cobertura UFs** | 7 de 13 UFs | ⚠️ **Faltan 6 UFs** |

> **Acción crítica:** Faltan 3 radares/ETD para cumplir contrato. Identificar ubicaciones faltantes por UF.

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

2. **Completar radares/ETD faltantes**
   - [ ] Identificar 3 ubicaciones adicionales
   - [ ] Asegurar cobertura de 13 UFs
   - [ ] Actualizar layout con nuevas ubicaciones

3. **Ajustar cantidad CCTV**
   - [ ] Reducir de 32 a 30 unidades
   - [ ] O justificar 2 adicionales
   - [ ] Actualizar documento de validación

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
| **3 radares/ETD faltantes** | 🔴 Alto | Agregar para cumplir contrato |
| **2 CCTV adicionales** | 🟢 Bajo | Ajustar o justificar |
| **17 gálibos faltantes** | 🟡 Medio | Completar análisis geométrico |

### **Estado de Cumplimiento Contractual**

| Sistema | Contractual | Real | Estado |
|:--------|:------------|:-----|:-------|
| Postes SOS | 87 (≤3 km) | 87 (5 >3km) | ⚠️ 94% |
| PMV | 28 | 28 | ✅ 100% |
| CCTV | 30 | 32 | ⚠️ 107% |
| RADAR-ANPR | 15 | 12 | ❌ 80% |
| Gálibos | 25 | 8 | ⏳ 32% |
| Est. Meteo | 2 | 2 | ✅ 100% |

---

**Última actualización:** 21 de octubre de 2025 (17:00)  
**Próxima revisión:** 25 de octubre de 2025 (validación Google Earth)  
**Responsable:** Ing. ITS / Administrador Contractual EPC  
**Estado:** 🔄 Draft en validación
