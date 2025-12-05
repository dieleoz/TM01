#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Script para procesar KML por UF y generar directamente archivo JS
(sin pasar por JSON, evita problemas de permisos)
Patrón: Igual que en "0.0 Formatos para IA - copia" (coordenadas_kml.js)
"""

import json
import xml.etree.ElementTree as ET
from pathlib import Path
from typing import Dict, List, Optional
import math

def haversine_distance(lat1: float, lon1: float, lat2: float, lon2: float) -> float:
    """Calcular distancia entre dos puntos en km usando fórmula de Haversine"""
    R = 6371  # Radio de la Tierra en km
    
    dlat = math.radians(lat2 - lat1)
    dlon = math.radians(lon2 - lon1)
    
    a = (math.sin(dlat / 2) ** 2 + 
         math.cos(math.radians(lat1)) * math.cos(math.radians(lat2)) * 
         math.sin(dlon / 2) ** 2)
    c = 2 * math.atan2(math.sqrt(a), math.sqrt(1 - a))
    
    return R * c

def parse_kml_file(kml_path: Path) -> List[List[float]]:
    """Parsear archivo KML y extraer coordenadas"""
    try:
        tree = ET.parse(kml_path)
        root = tree.getroot()
        
        # Namespace KML
        ns = {'kml': 'http://www.opengis.net/kml/2.2'}
        
        coordenadas = []
        
        # Buscar LineStrings (rutas)
        for line_string in root.findall('.//kml:LineString', ns):
            coords_elem = line_string.find('kml:coordinates', ns)
            if coords_elem is not None and coords_elem.text:
                coords_text = coords_elem.text.strip()
                for line in coords_text.split('\n'):
                    line = line.strip()
                    if line:
                        parts = line.split(',')
                        if len(parts) >= 2:
                            try:
                                lon = float(parts[0])
                                lat = float(parts[1])
                                coordenadas.append([lon, lat])  # Formato [lon, lat]
                            except ValueError:
                                continue
        
        return coordenadas
    except Exception as e:
        print(f"⚠️ Error parseando {kml_path}: {e}")
        return []

def procesar_uf_desde_kml(uf_folder: Path, uf_name: str) -> Optional[Dict]:
    """Procesar una UF desde su carpeta de KML"""
    if not uf_folder.exists():
        return None
    
    # Buscar archivos KML en la carpeta
    kml_files = list(uf_folder.rglob('*.kml'))
    if not kml_files:
        print(f"⚠️ No se encontraron archivos KML en {uf_folder}")
        return None
    
    print(f"📂 Procesando {uf_name}: {len(kml_files)} archivos KML")
    
    todas_coordenadas = []
    total_puntos = 0
    
    for kml_file in kml_files:
        coords = parse_kml_file(kml_file)
        todas_coordenadas.extend(coords)
        total_puntos += len(coords)
    
    if not todas_coordenadas:
        print(f"⚠️ No se extrajeron coordenadas de {uf_name}")
        return None
    
    # Calcular distancia total
    distancia_total = 0.0
    for i in range(len(todas_coordenadas) - 1):
        coord1 = todas_coordenadas[i]
        coord2 = todas_coordenadas[i + 1]
        distancia_total += haversine_distance(coord1[1], coord1[0], coord2[1], coord2[0])
    
    # Rangos PK según AT1 Tabla 3 (en km)
    # Formato: {UF: {inicio: PK_inicio, fin: PK_fin, ruta: 'RN XXXX'}}
    rangos_at1 = {
        'UF1': {'inicio': 84.4, 'fin': 94.31, 'ruta': 'RN 4510'},
        'UF2': {'inicio': 0, 'fin': 51.1, 'ruta': 'RN 4511'},  # Continúa desde RN 4510 PK 125.58
        'UF3': {'inicio': 51.1, 'fin': 64.65, 'ruta': 'RN 4511'},
        'UF4': {'inicio': 64.65, 'fin': 74.65, 'ruta': 'RN 4511'},
        'UF5': {'inicio': 39.08, 'fin': 84.22, 'ruta': 'RN 4510'},
        'UF6': {'inicio': 74.65, 'fin': 83.22, 'ruta': 'RN 4511'},
        'UF7': {'inicio': 83.22, 'fin': 97.0, 'ruta': 'RN 4511'},
        'UF8': {'inicio': 97.0, 'fin': 107.0, 'ruta': 'RN 4511'},
        'UF9': {'inicio': 107.0, 'fin': 117.69, 'ruta': 'RN 4511'},
        'UF10': {'inicio': 117.69, 'fin': 128.0, 'ruta': 'RN 4511'},
        'UF11': {'inicio': 74.65, 'fin': 9.8, 'ruta': 'RN 4513'},  # Cruza a RN 4513
        'UF12': {'inicio': 128.0, 'fin': 149.11, 'ruta': 'RN 4511'},
        'UF13': {'inicio': 0, 'fin': 9.8, 'ruta': 'RN 4513'}
    }
    
    # Obtener rangos del AT1
    rango_at1 = rangos_at1.get(uf_name, {})
    pk_inicio = rango_at1.get('inicio', None)
    pk_fin = rango_at1.get('fin', None)
    
    return {
        'uf': uf_name,
        'nombre': uf_folder.name,
        'coordenadas_consolidadas': todas_coordenadas,
        'total_puntos': total_puntos,
        'distancia_total_km': round(distancia_total, 2),
        'pk_inicio': pk_inicio,  # Desde AT1 Tabla 3
        'pk_fin': pk_fin  # Desde AT1 Tabla 3
    }

def main():
    """Función principal"""
    base_path = Path(__file__).parent.parent
    kmz_folder = base_path / 'IV. Ingenieria Basica' / 'TM1 - KMZ' / 'KMZ_troncal 1_por UF - copia'
    js_path = base_path / 'docs' / 'data' / 'coordenadas_uf_tm01.js'
    
    print(f"📂 Buscando KML en: {kmz_folder}")
    
    if not kmz_folder.exists():
        print(f"❌ No se encontró la carpeta: {kmz_folder}")
        print(f"💡 Verifica que la carpeta 'KMZ_troncal 1_por UF - copia' exista")
        return
    
    # Mapeo de carpetas UF
    uf_folders = {
        'UF1': kmz_folder / 'UF1_Troncal_1',
        'UF2': kmz_folder / 'UF2_Troncal_1',
        'UF3': kmz_folder / 'UF3_Troncal_1',
        'UF4': kmz_folder / 'UF4_Troncal_1',
        'UF5': kmz_folder / 'UF5_Troncal_1 (Mejoramiento)',
        'UF6': kmz_folder / 'UF6_Troncal_1',
        'UF7': kmz_folder / 'UF7_Troncal_1',
        'UF8': kmz_folder / 'UF8_Troncal_1',
        'UF9': kmz_folder / 'UF9_Troncal_1',
        'UF10': kmz_folder / 'UF10_Troncal_1',
        'UF11': kmz_folder / 'UF11_Troncal_1 (Mejoramiento)',
        'UF12': kmz_folder / 'UF12_Troncal_1',
        'UF13': kmz_folder / 'UF13_Troncal_1',
    }
    
    unidades_funcionales = {}
    total_ufs = 0
    
    print(f"\n🔄 Procesando UFs desde KML...")
    
    for uf_name, uf_folder in uf_folders.items():
        uf_data = procesar_uf_desde_kml(uf_folder, uf_name)
        if uf_data:
            unidades_funcionales[uf_name] = uf_data
            total_ufs += 1
            print(f"  ✅ {uf_name}: {uf_data['total_puntos']} puntos, {uf_data['distancia_total_km']} km")
    
    if total_ufs == 0:
        print(f"\n❌ No se procesaron UFs. Verifica que los KML existan.")
        return
    
    # Crear estructura de datos
    coordenadas_data = {
        'fuente': 'KML por UF - Procesado directamente desde KML',
        'fecha_procesamiento': '2025-11-01',
        'total_ufs': total_ufs,
        'unidades_funcionales': unidades_funcionales
    }
    
    # Generar archivo JS (patrón igual que coordenadas_kml.js en carpeta copia)
    print(f"\n📝 Generando archivo JS: {js_path}")
    
    js_content = f"""// COORDENADAS UF TM01 - PROCESADO DIRECTAMENTE DESDE KML
// Archivo: docs/data/coordenadas_uf_tm01.js
// Generado automáticamente desde KML por UF
// Propósito: Evitar problemas de CORS al cargar desde file://
// Patrón: Igual que en "0.0 Formatos para IA - copia" (coordenadas_kml.js)

const coordenadasUFData = {json.dumps(coordenadas_data, ensure_ascii=False, indent=2)};

// Exponer globalmente (patrón igual que coordenadas_kml.js en carpeta copia)
if (typeof window !== 'undefined') {{
    window.coordenadasUFData = coordenadasUFData;
}}

// Función para obtener coordenadas UF
function obtenerCoordenadasUF() {{
    return coordenadasUFData;
}}

// Exportar para uso en otros archivos
if (typeof module !== 'undefined' && module.exports) {{
    module.exports = {{
        coordenadasUFData,
        obtenerCoordenadasUF
    }};
}}

console.log('✅ Coordenadas UF cargadas desde JS:', coordenadasUFData.total_ufs || 13, 'UFs');
"""
    
    try:
        with open(js_path, 'w', encoding='utf-8') as f:
            f.write(js_content)
        
        print(f"✅ Archivo JS creado: {js_path}")
        print(f"   - Tamaño: {len(js_content)} caracteres")
        print(f"   - UFs procesadas: {total_ufs}")
        print(f"\n📊 RESUMEN:")
        for uf_name, uf_data in unidades_funcionales.items():
            print(f"   - {uf_name}: {uf_data['total_puntos']} puntos, {uf_data['distancia_total_km']} km")
        
    except Exception as e:
        print(f"❌ Error guardando archivo JS: {e}")

if __name__ == '__main__':
    main()

