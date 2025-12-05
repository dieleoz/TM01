# 🗺️ ANÁLISIS KML PARA GEOREFERENCIACIÓN TM01
## Evaluación del archivo KML para georeferenciación del proyecto

**Fecha:** 31 de Octubre 2025  
**Archivo:** `TRONCAL - copia doc.kml`  
**Propósito:** Georeferenciar equipos ITS con coordenadas reales

---

## 📋 ¿QUÉ ES UN ARCHIVO KML?

**KML (Keyhole Markup Language)** es un formato XML usado por Google Earth, Google Maps y otros sistemas GIS para representar datos geográficos.

### **Elementos que puede contener:**

1. **Placemarks (Marcadores):** Puntos específicos con coordenadas
2. **Paths (Rutas):** Líneas/polilíneas que representan la ruta
3. **Polygons (Polígonos):** Áreas delimitadas
4. **Folders:** Organización de elementos
5. **Metadata:** Nombres, descripciones, estilos

---

## ✅ ¿SIRVE PARA GEOREFERENCIAR EL PROYECTO?

### **SÍ, si el KML contiene:**

✅ **Ruta de la troncal** (RN 4510, 4511, 4513) como Path/LineString  
✅ **Puntos kilométricos** (PK) asociados a coordenadas  
✅ **Marcadores de equipos** (SOS, CCTV, PMV, etc.)  
✅ **Puntos de referencia** (Peajes, CCO, Áreas de Servicio)  
✅ **Coordenadas WGS84** (latitud/longitud)

### **Lo que necesitamos extraer:**

1. **Coordenadas de la ruta principal** (293 km)
2. **Relación PK → Coordenadas** (PKR/PKD → Lat/Lng)
3. **Puntos de equipos ITS** (si están marcados)
4. **Referencias geográficas** (pueblos, intersecciones, etc.)

---

## 🔍 ANÁLISIS DEL SISTEMA ACTUAL

### **Estado Actual:**

```javascript
// docs/data/tm01_master_data.js
generateCoordinates(sistema) {
    // Coordenadas aproximadas por sistema
    const coordenadas = {
        'SOS': { lat: 7.5, lng: -73.2 },      // ⚠️ Aproximado
        'ETD/RADAR': { lat: 7.6, lng: -73.1 }, // ⚠️ Aproximado
        'CCTV': { lat: 7.4, lng: -73.3 },     // ⚠️ Aproximado
        // ...
    };
    return coordenadas[sistema] || { lat: 7.5, lng: -73.2 };
}
```

**Problema:** Las coordenadas son **genéricas**, no corresponden a ubicaciones reales.

---

## 🎯 PLAN DE INTEGRACIÓN KML

### **Fase 1: Extraer datos del KML**

El KML puede contener:

```xml
<!-- Ejemplo de estructura KML -->
<kml>
  <Document>
    <Placemark>
      <name>PK 0+000 - Inicio</name>
      <Point>
        <coordinates>-73.201, 7.499, 0</coordinates>
      </Point>
    </Placemark>
    
    <Placemark>
      <name>Ruta Principal</name>
      <LineString>
        <coordinates>
          -73.201, 7.499, 0
          -73.202, 7.498, 0
          -73.203, 7.497, 0
          <!-- ... más coordenadas ... -->
        </coordinates>
      </LineString>
    </Placemark>
  </Document>
</kml>
```

### **Fase 2: Crear función de interpolación**

```javascript
// Función para calcular coordenadas por PKR/PKD
function getCoordenadasPorPK(pkr, ruta, kmlData) {
    // 1. Extraer coordenadas de la ruta del KML
    const rutaCoords = kmlData.routes[ruta];
    
    // 2. Convertir PKR a kilómetros (ej: "38+100" -> 38.1 km)
    const pk = parsePK(pkr); // 38.1
    
    // 3. Interpolar coordenadas en la ruta
    const coordenadas = interpolateCoordinates(rutaCoords, pk);
    
    return {
        lat: coordenadas.lat,
        lng: coordenadas.lng,
        pkd: pk,
        pkr: pkr,
        ruta: ruta
    };
}
```

### **Fase 3: Actualizar layout con coordenadas reales**

```javascript
// Actualizar cada equipo con coordenadas reales
cctvLocations.forEach(loc => {
    const coords = getCoordenadasPorPK(loc.pkr, loc.ruta, kmlData);
    
    layoutData.push({
        id: loc.id,
        nombre: loc.nombre,
        sistema: 'CCTV',
        pkr: loc.pkr,
        pkd: loc.pkd,
        ruta: loc.ruta,
        coordenadas: {
            lat: coords.lat,
            lng: coords.lng
        },
        // ... resto de datos
    });
});
```

---

## 🛠️ SCRIPT PARA PROCESAR KML

### **Opción 1: Python (Recomendado)**

```python
# scripts/procesar_kml.py
import xml.etree.ElementTree as ET
import json
from typing import List, Dict

def parse_kml(kml_file: str) -> Dict:
    """Extraer datos del KML"""
    tree = ET.parse(kml_file)
    root = tree.getroot()
    
    # Namespace KML
    ns = {'kml': 'http://www.opengis.net/kml/2.2'}
    
    routes = {}
    placemarks = []
    
    # Buscar LineStrings (rutas)
    for line_string in root.findall('.//kml:LineString', ns):
        name = line_string.find('..//kml:name', ns)
        coords_text = line_string.find('kml:coordinates', ns).text
        
        # Parsear coordenadas
        coords = []
        for coord_line in coords_text.strip().split('\n'):
            parts = coord_line.strip().split(',')
            if len(parts) >= 2:
                coords.append({
                    'lng': float(parts[0]),
                    'lat': float(parts[1]),
                    'alt': float(parts[2]) if len(parts) > 2 else 0
                })
        
        routes[name.text if name is not None else 'Ruta'] = coords
    
    # Buscar Placemarks (puntos)
    for placemark in root.findall('.//kml:Placemark', ns):
        name_elem = placemark.find('kml:name', ns)
        point = placemark.find('.//kml:Point', ns)
        
        if point is not None:
            coords_text = point.find('kml:coordinates', ns).text
            parts = coords_text.strip().split(',')
            
            placemarks.append({
                'name': name_elem.text if name_elem is not None else '',
                'lng': float(parts[0]),
                'lat': float(parts[1]),
                'alt': float(parts[2]) if len(parts) > 2 else 0
            })
    
    return {
        'routes': routes,
        'placemarks': placemarks
    }

def interpolate_coordinates(
    route_coords: List[Dict], 
    distance_km: float
) -> Dict:
    """Interpolar coordenadas por distancia en km"""
    # Calcular distancia acumulada
    total_distance = 0
    segments = []
    
    for i in range(len(route_coords) - 1):
        p1 = route_coords[i]
        p2 = route_coords[i + 1]
        
        # Calcular distancia (Haversine)
        dist = haversine_distance(p1['lat'], p1['lng'], p2['lat'], p2['lng'])
        segments.append({
            'start': p1,
            'end': p2,
            'distance': dist,
            'accumulated': total_distance
        })
        total_distance += dist
    
    # Encontrar segmento donde está el PK
    accumulated = 0
    for segment in segments:
        if accumulated + segment['distance'] >= distance_km:
            # Interpolar en este segmento
            progress = (distance_km - accumulated) / segment['distance']
            
            lat = segment['start']['lat'] + (segment['end']['lat'] - segment['start']['lat']) * progress
            lng = segment['start']['lng'] + (segment['end']['lng'] - segment['start']['lng']) * progress
            
            return {'lat': lat, 'lng': lng}
        
        accumulated += segment['distance']
    
    # Si no se encuentra, retornar último punto
    return route_coords[-1]

def haversine_distance(lat1, lon1, lat2, lon2):
    """Calcular distancia entre dos puntos (Haversine)"""
    from math import radians, sin, cos, sqrt, atan2
    
    R = 6371  # Radio de la Tierra en km
    
    dlat = radians(lat2 - lat1)
    dlon = radians(lon2 - lon1)
    
    a = sin(dlat/2)**2 + cos(radians(lat1)) * cos(radians(lat2)) * sin(dlon/2)**2
    c = 2 * atan2(sqrt(a), sqrt(1-a))
    
    return R * c

# Uso
if __name__ == '__main__':
    kml_data = parse_kml('TRONCAL - copia doc.kml')
    
    # Guardar datos procesados
    with open('docs/data/kml_routes.json', 'w', encoding='utf-8') as f:
        json.dump(kml_data, f, indent=2, ensure_ascii=False)
    
    print(f"✅ Procesado: {len(kml_data['routes'])} rutas, {len(kml_data['placemarks'])} puntos")
```

### **Opción 2: JavaScript/Node.js**

```javascript
// scripts/procesar_kml.js
const fs = require('fs');
const { DOMParser } = require('xmldom');

function parseKML(kmlFile) {
    const kmlContent = fs.readFileSync(kmlFile, 'utf-8');
    const parser = new DOMParser();
    const doc = parser.parseFromString(kmlContent, 'text/xml');
    
    const routes = {};
    const placemarks = [];
    
    // Buscar LineStrings
    const lineStrings = doc.getElementsByTagName('LineString');
    for (let i = 0; i < lineStrings.length; i++) {
        const lineString = lineStrings[i];
        const name = lineString.parentNode.getElementsByTagName('name')[0]?.textContent || 'Ruta';
        const coordsText = lineString.getElementsByTagName('coordinates')[0]?.textContent;
        
        if (coordsText) {
            const coords = coordsText.trim().split('\n').map(line => {
                const parts = line.trim().split(',');
                return {
                    lng: parseFloat(parts[0]),
                    lat: parseFloat(parts[1]),
                    alt: parseFloat(parts[2]) || 0
                };
            });
            
            routes[name] = coords;
        }
    }
    
    // Buscar Placemarks
    const placemarkElements = doc.getElementsByTagName('Placemark');
    for (let i = 0; i < placemarkElements.length; i++) {
        const pm = placemarkElements[i];
        const name = pm.getElementsByTagName('name')[0]?.textContent || '';
        const point = pm.getElementsByTagName('Point')[0];
        
        if (point) {
            const coordsText = point.getElementsByTagName('coordinates')[0]?.textContent;
            const parts = coordsText.trim().split(',');
            
            placemarks.push({
                name: name,
                lng: parseFloat(parts[0]),
                lat: parseFloat(parts[1]),
                alt: parseFloat(parts[2]) || 0
            });
        }
    }
    
    return { routes, placemarks };
}

// Uso
const kmlData = parseKML('TRONCAL - copia doc.kml');
fs.writeFileSync(
    'docs/data/kml_routes.json', 
    JSON.stringify(kmlData, null, 2),
    'utf-8'
);

console.log(`✅ Procesado: ${Object.keys(kmlData.routes).length} rutas, ${kmlData.placemarks.length} puntos`);
```

---

## 📊 INTEGRACIÓN CON SISTEMA ACTUAL

### **1. Crear archivo de datos KML procesado:**

```javascript
// docs/data/kml_routes.js
const KML_ROUTES = {
    'RN 4510': [
        { lat: 7.499, lng: -73.201, km: 0.0 },
        { lat: 7.498, lng: -73.202, km: 1.0 },
        // ... coordenadas de la ruta
    ],
    'RN 4511': [
        // ... coordenadas
    ],
    'RN 4513': [
        // ... coordenadas
    ]
};
```

### **2. Actualizar `tm01_master_data.js`:**

```javascript
// En tm01_master_data.js
import { KML_ROUTES } from './kml_routes.js';

generateCoordinates(sistema, pkr, ruta) {
    // Usar coordenadas reales del KML
    const route = KML_ROUTES[ruta];
    if (!route) {
        return this.generateCoordinates(sistema); // Fallback
    }
    
    // Convertir PKR a km
    const pk = this.parsePK(pkr); // 38.1 km
    
    // Interpolar coordenadas
    const coords = this.interpolateCoordinates(route, pk);
    
    return coords;
}

parsePK(pkr) {
    // "38+100" -> 38.1 km
    const parts = pkr.split('+');
    return parseFloat(parts[0]) + (parseFloat(parts[1]) / 1000);
}

interpolateCoordinates(route, distanceKm) {
    // Encontrar segmento donde está el PK
    let accumulated = 0;
    
    for (let i = 0; i < route.length - 1; i++) {
        const segment = {
            start: route[i],
            end: route[i + 1],
            distance: this.haversineDistance(
                route[i].lat, route[i].lng,
                route[i + 1].lat, route[i + 1].lng
            )
        };
        
        if (accumulated + segment.distance >= distanceKm) {
            // Interpolar
            const progress = (distanceKm - accumulated) / segment.distance;
            
            const lat = segment.start.lat + (segment.end.lat - segment.start.lat) * progress;
            const lng = segment.start.lng + (segment.end.lng - segment.start.lng) * progress;
            
            return { lat, lng };
        }
        
        accumulated += segment.distance;
    }
    
    // Último punto
    return route[route.length - 1];
}
```

---

## ✅ BENEFICIOS DE USAR EL KML

1. ✅ **Coordenadas reales** en lugar de aproximadas
2. ✅ **Visualización precisa** en Google Maps/Earth
3. ✅ **Cálculo de distancias** reales entre equipos
4. ✅ **Análisis geográfico** (elevación, pendientes, etc.)
5. ✅ **Validación de ubicaciones** con respecto a la ruta real
6. ✅ **Exportación a otros formatos** (GeoJSON, Shapefile)

---

## 🚀 PLAN DE ACCIÓN

### **Paso 1: Copiar KML al proyecto**
```bash
# Copiar archivo a la carpeta del proyecto
cp "C:\Users\Diego.Zuñiga\Downloads\TRONCAL - copia doc.kml" "docs/data/troncal.kml"
```

### **Paso 2: Ejecutar script de procesamiento**
```bash
# Python
python scripts/procesar_kml.py

# O Node.js
node scripts/procesar_kml.js
```

### **Paso 3: Validar datos extraídos**
- Revisar `docs/data/kml_routes.json`
- Verificar que las rutas coincidan con RN 4510, 4511, 4513
- Validar coordenadas (lat: 7.x, lng: -73.x)

### **Paso 4: Integrar con sistema actual**
- Actualizar `tm01_master_data.js` con función de interpolación
- Regenerar `layout_datos.js` con coordenadas reales
- Validar en `docs/layout.html` que los marcadores estén sobre la ruta

---

## 📝 PRÓXIMOS PASOS

1. **Copiar el KML al proyecto** para que pueda analizarlo
2. **Ejecutar análisis** del contenido del KML
3. **Crear script de procesamiento** específico para tu KML
4. **Integrar coordenadas** en el sistema actual

---

**¿Quieres que analice el KML específico?**  
Copia el archivo a: `docs/data/troncal.kml` y podré analizarlo en detalle.

