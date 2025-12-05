#!/usr/bin/env python3
"""
Script para procesar archivo KML y extraer coordenadas de rutas
Proyecto: TM01 Troncal Magdalena
Fecha: 31 de Octubre 2025
"""

import xml.etree.ElementTree as ET
import json
import math
from typing import List, Dict, Tuple
from pathlib import Path

def haversine_distance(lat1: float, lon1: float, lat2: float, lon2: float) -> float:
    """Calcular distancia entre dos puntos usando fórmula de Haversine (km)"""
    R = 6371  # Radio de la Tierra en km
    
    dlat = math.radians(lat2 - lat1)
    dlon = math.radians(lon2 - lon1)
    
    a = (math.sin(dlat/2)**2 + 
         math.cos(math.radians(lat1)) * math.cos(math.radians(lat2)) * 
         math.sin(dlon/2)**2)
    
    c = 2 * math.atan2(math.sqrt(a), math.sqrt(1-a))
    
    return R * c

def parse_kml(kml_file: str) -> Dict:
    """
    Extraer datos del archivo KML
    
    Retorna:
        {
            'routes': { 'nombre_ruta': [coords...] },
            'placemarks': [puntos...]
        }
    """
    tree = ET.parse(kml_file)
    root = tree.getroot()
    
    # Namespace KML (puede variar)
    namespaces = {
        'kml': 'http://www.opengis.net/kml/2.2',
        '': 'http://www.opengis.net/kml/2.2'  # Sin namespace
    }
    
    routes = {}
    placemarks = []
    
    # Buscar todos los elementos (con y sin namespace)
    for ns_key, ns_value in namespaces.items():
        ns_prefix = f'{{{ns_value}}}' if ns_key else ''
        
        # Buscar LineStrings (rutas)
        line_strings = root.findall(f'.//{ns_prefix}LineString')
        if not line_strings:
            line_strings = root.findall('.//LineString')
        
        for line_string in line_strings:
            # Buscar nombre en el Placemark padre
            parent = line_string
            while parent is not None:
                name_elem = parent.find(f'{ns_prefix}name')
                if name_elem is not None:
                    name = name_elem.text
                    break
                parent = parent.getparent()
            
            if name_elem is None:
                name = 'Ruta'
            
            # Extraer coordenadas
            coords_elem = line_string.find(f'{ns_prefix}coordinates')
            if coords_elem is None:
                coords_elem = line_string.find('coordinates')
            
            if coords_elem is not None and coords_elem.text:
                coords = []
                for coord_line in coords_elem.text.strip().split('\n'):
                    coord_line = coord_line.strip()
                    if not coord_line:
                        continue
                    
                    parts = coord_line.split(',')
                    if len(parts) >= 2:
                        try:
                            coords.append({
                                'lng': float(parts[0]),
                                'lat': float(parts[1]),
                                'alt': float(parts[2]) if len(parts) > 2 else 0
                            })
                        except ValueError:
                            continue
                
                if coords:
                    routes[name] = coords
        
        # Buscar Placemarks (puntos)
        placemark_elements = root.findall(f'.//{ns_prefix}Placemark')
        if not placemark_elements:
            placemark_elements = root.findall('.//Placemark')
        
        for placemark in placemark_elements:
            name_elem = placemark.find(f'{ns_prefix}name')
            if name_elem is None:
                name_elem = placemark.find('name')
            
            point = placemark.find(f'.//{ns_prefix}Point')
            if point is None:
                point = placemark.find('.//Point')
            
            if point is not None:
                coords_elem = point.find(f'{ns_prefix}coordinates')
                if coords_elem is None:
                    coords_elem = point.find('coordinates')
                
                if coords_elem is not None and coords_elem.text:
                    parts = coords_elem.text.strip().split(',')
                    if len(parts) >= 2:
                        try:
                            placemarks.append({
                                'name': name_elem.text if name_elem is not None else '',
                                'lng': float(parts[0]),
                                'lat': float(parts[1]),
                                'alt': float(parts[2]) if len(parts) > 2 else 0
                            })
                        except ValueError:
                            continue
    
    return {
        'routes': routes,
        'placemarks': placemarks
    }

def calculate_route_distances(route_coords: List[Dict]) -> List[Dict]:
    """Calcular distancia acumulada para cada punto de la ruta"""
    result = []
    accumulated_distance = 0
    
    for i, coord in enumerate(route_coords):
        if i == 0:
            distance_from_prev = 0
        else:
            prev_coord = route_coords[i-1]
            distance_from_prev = haversine_distance(
                prev_coord['lat'], prev_coord['lng'],
                coord['lat'], coord['lng']
            )
            accumulated_distance += distance_from_prev
        
        result.append({
            **coord,
            'km': round(accumulated_distance, 3),
            'distance_from_prev': round(distance_from_prev, 3)
        })
    
    return result

def interpolate_coordinates(
    route_coords: List[Dict], 
    distance_km: float
) -> Dict:
    """
    Interpolar coordenadas por distancia en km a lo largo de la ruta
    
    Args:
        route_coords: Lista de coordenadas con distancia acumulada
        distance_km: Distancia en km desde el inicio
    
    Returns:
        {'lat': float, 'lng': float, 'alt': float}
    """
    if not route_coords:
        return {'lat': 0, 'lng': 0, 'alt': 0}
    
    # Si la distancia es menor que el primer punto
    if distance_km <= 0:
        return route_coords[0]
    
    # Si la distancia es mayor que el último punto
    if distance_km >= route_coords[-1]['km']:
        return route_coords[-1]
    
    # Encontrar el segmento donde está el PK
    for i in range(len(route_coords) - 1):
        start = route_coords[i]
        end = route_coords[i + 1]
        
        if start['km'] <= distance_km <= end['km']:
            # Interpolar en este segmento
            segment_distance = end['km'] - start['km']
            if segment_distance == 0:
                return start
            
            progress = (distance_km - start['km']) / segment_distance
            
            lat = start['lat'] + (end['lat'] - start['lat']) * progress
            lng = start['lng'] + (end['lng'] - start['lng']) * progress
            alt = start.get('alt', 0) + (end.get('alt', 0) - start.get('alt', 0)) * progress
            
            return {'lat': round(lat, 6), 'lng': round(lng, 6), 'alt': round(alt, 2)}
    
    return route_coords[-1]

def main():
    """Procesar archivo KML"""
    # Rutas de archivos
    script_dir = Path(__file__).parent
    project_root = script_dir.parent
    
    kml_file = project_root / 'docs' / 'data' / 'troncal.kml'
    output_file = project_root / 'docs' / 'data' / 'kml_routes.json'
    
    # Verificar que existe el archivo
    if not kml_file.exists():
        print(f"❌ Error: No se encuentra el archivo KML")
        print(f"   Buscado en: {kml_file}")
        print(f"\n📋 Por favor, copia el archivo KML a:")
        print(f"   {kml_file}")
        return
    
    print(f"📂 Procesando: {kml_file}")
    
    try:
        # Parsear KML
        kml_data = parse_kml(str(kml_file))
        
        # Calcular distancias para cada ruta
        processed_routes = {}
        for route_name, coords in kml_data['routes'].items():
            processed_routes[route_name] = calculate_route_distances(coords)
            total_distance = processed_routes[route_name][-1]['km']
            print(f"✅ Ruta '{route_name}': {len(coords)} puntos, {total_distance:.2f} km")
        
        # Guardar datos procesados
        output_data = {
            'routes': processed_routes,
            'placemarks': kml_data['placemarks'],
            'metadata': {
                'total_routes': len(processed_routes),
                'total_placemarks': len(kml_data['placemarks']),
                'processing_date': str(Path(__file__).stat().st_mtime)
            }
        }
        
        with open(output_file, 'w', encoding='utf-8') as f:
            json.dump(output_data, f, indent=2, ensure_ascii=False)
        
        print(f"\n✅ Datos procesados guardados en: {output_file}")
        print(f"   - {len(processed_routes)} rutas procesadas")
        print(f"   - {len(kml_data['placemarks'])} puntos de referencia")
        
        # Mostrar estadísticas
        print("\n📊 Estadísticas:")
        for route_name, route_data in processed_routes.items():
            if route_data:
                total_km = route_data[-1]['km']
                print(f"   {route_name}: {total_km:.2f} km")
        
    except Exception as e:
        print(f"❌ Error procesando KML: {e}")
        import traceback
        traceback.print_exc()

if __name__ == '__main__':
    main()

