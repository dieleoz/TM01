#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Script para obtener las coordenadas exactas del PKD0 (CCO)
desde el KML de UF13 que incluye La Lizama
"""

import os
import xml.etree.ElementTree as ET
from pathlib import Path

def parse_kml(kml_path):
    """Parsear archivo KML y extraer coordenadas"""
    try:
        tree = ET.parse(kml_path)
        root = tree.getroot()
        
        # Namespace de KML
        ns = {'kml': 'http://www.opengis.net/kml/2.2'}
        
        coordinates = []
        
        # Buscar todas las coordenadas en el KML
        for coord_elem in root.findall('.//kml:coordinates', ns):
            coord_text = coord_elem.text
            if coord_text:
                # Parsear coordenadas (formato: lon,lat,altitud)
                for line in coord_text.strip().split():
                    parts = line.split(',')
                    if len(parts) >= 2:
                        lon = float(parts[0])
                        lat = float(parts[1])
                        coordinates.append((lon, lat))
        
        return coordinates
    except Exception as e:
        print(f"Error parseando KML: {e}")
        return []

def encontrar_coordenadas_pkd0():
    """Encontrar coordenadas del PKD0 (CCO) en La Lizama PK 4+400"""
    
    # Ruta al KML de UF13 (que incluye La Lizama)
    kml_path = Path("IV. Ingenieria Basica/TM1 - KMZ/KMZ_troncal 1_por UF - copia/UF13_Troncal_1/doc.kml")
    
    if not kml_path.exists():
        print(f"❌ No se encontró el archivo: {kml_path}")
        print("\n📋 Información del PKD0:")
        print("   • Ubicación: La Lizama, RN 4513 PK 4+400")
        print("   • PKD: 0+000 (punto de inicio del anillo de fibra)")
        print("   • Coordenadas locales (AT1): E=1050813.22, N=1278537.32 (PK 00+000)")
        print("   • Para obtener coordenadas WGS84, usar el KML de UF13")
        return None
    
    print(f"📂 Procesando KML: {kml_path}")
    coordinates = parse_kml(kml_path)
    
    if not coordinates:
        print("⚠️ No se encontraron coordenadas en el KML")
        return None
    
    print(f"✅ Se encontraron {len(coordinates)} puntos de coordenadas")
    
    # La Lizama está al inicio de UF13 (PK 00+000 RN 4513)
    # El CCO está en PK 4+400, que es aproximadamente el 45% del tramo UF13 (9.82 km)
    # UF13 va de PK 00+000 a PK 09+800 (9.82 km)
    # CCO en PK 4+400 = 4.4 / 9.82 = 44.8% del tramo
    
    if len(coordinates) > 0:
        # Tomar el punto que corresponde aproximadamente al 45% del tramo
        index_pkd0 = int(len(coordinates) * 0.448)
        if index_pkd0 >= len(coordinates):
            index_pkd0 = len(coordinates) - 1
        
        lon, lat = coordinates[index_pkd0]
        
        print("\n📍 COORDENADAS DEL PKD0 (CCO):")
        print(f"   • Latitud:  {lat:.6f}")
        print(f"   • Longitud: {lon:.6f}")
        print(f"   • Ubicación: La Lizama, RN 4513 PK 4+400")
        print(f"   • PKD: 0+000 (punto de inicio del anillo de fibra óptica)")
        
        return {
            'lat': lat,
            'lon': lon,
            'pkr': '4+400',
            'pkd': '0+000',
            'ruta': 'RN 4513',
            'ubicacion': 'La Lizama'
        }
    
    return None

if __name__ == "__main__":
    print("=" * 60)
    print("🔍 BUSCANDO COORDENADAS DEL PKD0 (CCO)")
    print("=" * 60)
    print()
    
    resultado = encontrar_coordenadas_pkd0()
    
    if resultado:
        print("\n✅ Coordenadas encontradas:")
        print(f"   Lat: {resultado['lat']:.6f}, Lon: {resultado['lon']:.6f}")
        print(f"\n📋 Para usar en el mapa:")
        print(f"   L.marker([{resultado['lat']:.6f}, {resultado['lon']:.6f}])")
    else:
        print("\n⚠️ No se pudieron obtener coordenadas desde el KML")
        print("   Usar coordenadas aproximadas o procesar KML manualmente")

