# 🗺️ GUÍA DEL MAPA TRONCAL TM01 - GEOREFERENCIACIÓN COMPLETA
## Mapa Leaflet desde Cero con Coordenadas UF Reales

**Fecha:** 31 de Octubre 2025  
**Archivo:** `docs/mapa_troncal_tm01.html`  
**Estado:** ✅ **NUEVO MAPA DESDE CERO**

---

## 1. CARACTERÍSTICAS DEL MAPA

### **Georeferenciación Real:**
- ✅ Usa coordenadas reales de las 13 UFs procesadas desde KML
- ✅ Interpolación precisa según PK/PKD del equipo
- ✅ Dibuja la vía completa por UF usando coordenadas reales
- ✅ Georeferencia equipos ITS según su UF y PK/PKD

### **Funcionalidades:**
- ✅ Visualización de vía completa por UF
- ✅ Marcadores de equipos ITS con coordenadas reales
- ✅ Filtros por Sistema y UF
- ✅ Lista interactiva de equipos
- ✅ Popups informativos con PKR/PKD/UF
- ✅ Leyenda de colores por sistema

---

## 2. CÓMO FUNCIONA LA GEOREFERENCIACIÓN

### **Paso 1: Cargar Coordenadas UF**
```javascript
// Carga coordenadas_uf_tm01.json con todas las rutas por UF
const coordenadasUF = await fetch('data/coordenadas_uf_tm01.json');
```

### **Paso 2: Determinar UF del Equipo**
```javascript
// Normalizar UF (ej: "UF-5.2" -> "UF5", "UF-0D" -> determinar por PK)
let uf = normalizarUF(equipo.uf);
if (!uf) {
    // Si no se puede normalizar, determinar por PK y ruta
    uf = determinarUFPorPK(pkEquipo, equipo.ruta);
}
```

### **Paso 3: Interpolar Coordenadas**
```javascript
// Calcular porcentaje dentro de la UF según PK
const porcentaje = (pkEquipo - pkInicio) / (pkFin - pkInicio);

// Interpolar coordenadas en la ruta real de la UF
const coordenadas = interpolarEnRuta(ufData.coordenadas_consolidadas, porcentaje);
```

### **Paso 4: Dibujar en el Mapa**
```javascript
// Dibujar vía completa por UF
dibujarVia(); // Dibuja todas las rutas de las 13 UFs

// Dibujar equipos ITS
renderizarEquipos(); // Dibuja marcadores con coordenadas reales
```

---

## 3. MAPEO DE UF

### **Normalización de UF:**
- `UF-1` → `UF1`
- `UF-5.1` → `UF5`
- `UF-5.2` → `UF5`
- `UF-0D` → Determinar por PK y ruta

### **Determinación por PK y Ruta:**

| Ruta | Rango PK | UF |
|:-----|:---------|:---|
| RN 4510 | 84.4 - 94.31 | UF1 |
| RN 4510 | 39.08 - 84.22 | UF5 |
| RN 4511 | 0 - 51.1 | UF2 |
| RN 4511 | 51.1 - 64.65 | UF3 |
| RN 4511 | 64.65 - 74.65 | UF4 |
| RN 4511 | 74.65 - 83.22 | UF6 |
| RN 4511 | 83.22 - 97.0 | UF7 |
| RN 4511 | 97.0 - 107.0 | UF8 |
| RN 4511 | 107.0 - 117.69 | UF9 |
| RN 4511 | 117.69 - 128.0 | UF10 |
| RN 4511 | 74.65 - 128.0 | UF11 |
| RN 4511 | 128.0 - 149.11 | UF12 |
| RN 4513 | 0 - 9.8 | UF13 |

---

## 4. USO DEL MAPA

### **Abrir el Mapa:**
```
docs/mapa_troncal_tm01.html
```

### **Filtros Disponibles:**
1. **Sistema:** Filtrar por CCTV, PMV, SOS, ETD, etc.
2. **Unidad Funcional:** Filtrar por UF1 a UF13
3. **Mostrar Vía:** Toggle para mostrar/ocultar la vía

### **Interacción:**
- **Click en marcador:** Muestra popup con información del equipo
- **Click en vía:** Muestra popup con información de la UF
- **Click en lista:** Centra el mapa en el equipo seleccionado

---

## 5. ARCHIVOS REQUERIDOS

1. ✅ `docs/data/coordenadas_uf_tm01.json` - Coordenadas por UF (generado por script)
2. ✅ `docs/data/tm01_master_data.js` - Datos maestros con equipos ITS
3. ✅ `docs/mapa_troncal_tm01.html` - Mapa Leaflet (este archivo)

---

## 6. DIFERENCIAS CON EL MAPA ANTERIOR

### **❌ Mapa Anterior (layout_map.html):**
- Usaba coordenadas aproximadas
- No usaba coordenadas UF reales
- Interpolación genérica sin rutas reales
- No dibujaba la vía correctamente

### **✅ Nuevo Mapa (mapa_troncal_tm01.html):**
- ✅ Usa coordenadas reales de KML por UF
- ✅ Interpolación precisa según rutas reales
- ✅ Dibuja la vía completa usando coordenadas UF
- ✅ Georeferenciación correcta según PK/PKD

---

## 7. VALIDACIÓN

### **Para Verificar que Funciona:**
1. Abrir `docs/mapa_troncal_tm01.html` en el navegador
2. Verificar que la vía se dibuja correctamente (línea roja)
3. Verificar que los equipos aparecen en la vía (no en línea recta)
4. Filtrar por sistema (ej: CCTV) y verificar que aparecen distribuidos
5. Click en un equipo y verificar que el popup muestra información correcta

---

**Estado:** ✅ **NUEVO MAPA DESDE CERO**  
**Versión:** 1.0  
**Fecha:** 31 de Octubre 2025

