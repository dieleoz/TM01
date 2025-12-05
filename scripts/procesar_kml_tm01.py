#!/usr/bin/env python3
"""
Script para procesar archivo KML y extraer coordenadas reales para TM01
Proyecto: TM01 Troncal Magdalena
Fecha: 31 de Octubre 2025
"""

import xml.etree.ElementTree as ET
import json
import math
from pathlib import Path
from typing import List, Dict, Tuple, Optional

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
            'rutas': [{'nombre': str, 'coordenadas': [[lat, lon], ...]}],
            'puntos': [{'nombre': str, 'lat': float, 'lon': float, 'tipo': str}],
            'lineas': [{'nombre': str, 'coordenadas': [[lat, lon], ...]}]
        }
    """
    tree = ET.parse(kml_file)
    root = tree.getroot()
    
    # Namespace de KML
    ns = {'kml': 'http://www.opengis.net/kml/2.2',
          'gx': 'http://www.google.com/kml/ext/2.2'}
    
    resultado = {
        'rutas': [],
        'puntos': [],
        'lineas': []
    }
    
    # Buscar todos los Placemarks
    for placemark in root.findall('.//kml:Placemark', ns):
        nombre = placemark.find('kml:name', ns)
        nombre_texto = nombre.text if nombre is not None else 'Sin nombre'
        
        # Buscar LineString (rutas)
        linestring = placemark.find('.//kml:LineString', ns)
        if linestring is not None:
            coords_elem = linestring.find('kml:coordinates', ns)
            if coords_elem is not None and coords_elem.text:
                coords_text = coords_elem.text.strip()
                coords_list = []
                
                for coord_pair in coords_text.split():
                    parts = coord_pair.split(',')
                    if len(parts) >= 2:
                        lon = float(parts[0])
                        lat = float(parts[1])
                        coords_list.append([lat, lon])
                
                if coords_list:
                    resultado['lineas'].append({
                        'nombre': nombre_texto,
                        'coordenadas': coords_list
                    })
        
        # Buscar Point (puntos)
        point = placemark.find('.//kml:Point', ns)
        if point is not None:
            coords_elem = point.find('kml:coordinates', ns)
            if coords_elem is not None and coords_elem.text:
                coords_text = coords_elem.text.strip()
                parts = coords_text.split(',')
                if len(parts) >= 2:
                    lon = float(parts[0])
                    lat = float(parts[1])
                    
                    # Determinar tipo según nombre
                    tipo = 'punto'
                    if 'camara' in nombre_texto.lower() or 'camera' in nombre_texto.lower():
                        tipo = 'cctv'
                    elif 'poste' in nombre_texto.lower():
                        tipo = 'poste'
                    elif 'central' in nombre_texto.lower() or 'cco' in nombre_texto.lower():
                        tipo = 'cco'
                    elif 'peaje' in nombre_texto.lower():
                        tipo = 'peaje'
                    
                    resultado['puntos'].append({
                        'nombre': nombre_texto,
                        'lat': lat,
                        'lon': lon,
                        'tipo': tipo
                    })
    
    return resultado

def calcular_distancia_acumulada(coordenadas: List[List[float]]) -> List[Dict]:
    """
    Calcular distancia acumulada a lo largo de una ruta
    Retorna lista de puntos con distancia acumulada en km
    """
    puntos = []
    distancia_acumulada = 0.0
    
    for i, coord in enumerate(coordenadas):
        if i > 0:
            distancia = haversine_distance(
                coordenadas[i-1][0], coordenadas[i-1][1],
                coord[0], coord[1]
            )
            distancia_acumulada += distancia
        
        puntos.append({
            'lat': coord[0],
            'lon': coord[1],
            'distancia_km': round(distancia_acumulada, 3),
            'indice': i
        })
    
    return puntos

def generar_mapa_pk_coordenadas(rutas: List[Dict], longitud_total_km: float = 293.0) -> Dict:
    """
    Generar mapeo de PK (kilómetros) a coordenadas
    Usa la ruta principal y normaliza a la longitud del proyecto
    """
    # Buscar la ruta más larga (probablemente la principal)
    ruta_principal = None
    max_longitud = 0
    
    for ruta in rutas:
        if len(ruta['coordenadas']) > max_longitud:
            max_longitud = len(ruta['coordenadas'])
            ruta_principal = ruta
    
    if not ruta_principal:
        return {}
    
    # Calcular distancia acumulada
    puntos_con_distancia = calcular_distancia_acumulada(ruta_principal['coordenadas'])
    
    if not puntos_con_distancia:
        return {}
    
    # Obtener distancia total real
    distancia_total_real = puntos_con_distancia[-1]['distancia_km']
    
    # Normalizar a longitud del proyecto (293 km)
    factor_escala = longitud_total_km / distancia_total_real if distancia_total_real > 0 else 1.0
    
    # Crear mapeo PK → Coordenadas
    mapa_pk = {}
    
    # Interpolar para cada kilómetro completo
    for pk_entero in range(int(longitud_total_km) + 1):
        pk_normalizado = pk_entero / factor_escala
        
        # Encontrar puntos adyacentes
        punto_anterior = None
        punto_siguiente = None
        
        for i, punto in enumerate(puntos_con_distancia):
            if punto['distancia_km'] <= pk_normalizado:
                punto_anterior = punto
            else:
                punto_siguiente = punto
                break
        
        if punto_anterior and punto_siguiente:
            # Interpolar
            dist_anterior = punto_anterior['distancia_km']
            dist_siguiente = punto_siguiente['distancia_km']
            
            if dist_siguiente > dist_anterior:
                factor = (pk_normalizado - dist_anterior) / (dist_siguiente - dist_anterior)
                
                lat = punto_anterior['lat'] + (punto_siguiente['lat'] - punto_anterior['lat']) * factor
                lon = punto_anterior['lon'] + (punto_siguiente['lon'] - punto_anterior['lon']) * factor
            else:
                lat = punto_anterior['lat']
                lon = punto_anterior['lon']
        elif punto_anterior:
            lat = punto_anterior['lat']
            lon = punto_anterior['lon']
        elif punto_siguiente:
            lat = punto_siguiente['lat']
            lon = punto_siguiente['lon']
        else:
            continue
        
        mapa_pk[pk_entero] = {
            'lat': round(lat, 6),
            'lon': round(lon, 6),
            'pk': pk_entero
        }
    
    return mapa_pk

def main():
    """Función principal"""
    # Rutas de archivos
    kml_file = Path('IV. Ingenieria Basica/doc.kml')
    output_dir = Path('docs/data')
    output_dir.mkdir(parents=True, exist_ok=True)
    
    if not kml_file.exists():
        print(f"❌ Error: No se encuentra el archivo KML: {kml_file}")
        return
    
    print(f"📖 Procesando KML: {kml_file}")
    
    # Parsear KML
    datos = parse_kml(kml_file)
    
    print(f"✅ Encontradas:")
    print(f"   - {len(datos['lineas'])} rutas/líneas")
    print(f"   - {len(datos['puntos'])} puntos")
    
    # Generar mapeo PK → Coordenadas
    mapa_pk = generar_mapa_pk_coordenadas(datos['lineas'])
    
    print(f"✅ Generado mapeo PK → Coordenadas: {len(mapa_pk)} puntos")
    
    # Guardar resultados
    output_file = output_dir / 'coordenadas_tm01_kml.json'
    resultado = {
        'fuente': 'KML - TRONCAL PUERTO ARAUJO_BARRANCABERMEJA',
        'fecha_procesamiento': '2025-10-31',
        'total_rutas': len(datos['lineas']),
        'total_puntos': len(datos['puntos']),
        'mapa_pk_coordenadas': mapa_pk,
        'rutas': datos['lineas'],
        'puntos': datos['puntos']
    }
    
    with open(output_file, 'w', encoding='utf-8') as f:
        json.dump(resultado, f, indent=2, ensure_ascii=False)
    
    print(f"✅ Resultados guardados en: {output_file}")
    
    # Generar resumen
    print("\n📊 RESUMEN:")
    print(f"   - Ruta principal: {len(datos['lineas'][0]['coordenadas']) if datos['lineas'] else 0} puntos")
    print(f"   - Mapeo PK: {len(mapa_pk)} kilómetros")
    print(f"   - Puntos extraídos: {len(datos['puntos'])}")
    
    # Mostrar algunos ejemplos
    if mapa_pk:
        print("\n📍 EJEMPLOS DE COORDENADAS:")
        for pk in [0, 50, 100, 150, 200, 250, 293]:
            if pk in mapa_pk:
                coord = mapa_pk[pk]
                print(f"   PK {pk}: Lat {coord['lat']:.6f}, Lon {coord['lon']:.6f}")

if __name__ == '__main__':
    main()

