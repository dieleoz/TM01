#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""Script para corregir encoding UTF-8 en archivos HTML"""

import os
import re

files = [
    "docs/presupuesto.html",
    "docs/WBS_Menu_Principal.html",
    "docs/wbs.html",
    "docs/layout.html",
    "docs/reporte_gerencial.html",
    "docs/cronograma.html",
    "docs/analisis_riesgos.html",
    "docs/edt_detalle.html",
    "docs/estado_sync.html",
    "docs/layout_georeferenciado.html"
]

# Reemplazos: mal codificado -> correcto
replacements = {
    # Caracteres españoles
    'CÃ¡lculos': 'Cálculos',
    'exportaciÃ³n': 'exportación',
    'ExportaciÃ³n': 'Exportación',
    'MenÃº': 'Menú',
    'menÃº': 'menú',
    'capÃ­tulos': 'capítulos',
    'CapÃ­tulos': 'Capítulos',
    'automÃ¡ticos': 'automáticos',
    'AutomÃ¡ticos': 'Automáticos',
    'anÃ¡lisis': 'análisis',
    'AnÃ¡lisis': 'Análisis',
    'CÃ³digo': 'Código',
    'cÃ³digo': 'código',
    'descripciÃ³n': 'descripción',
    'DescripciÃ³n': 'Descripción',
    'DecisiÃ³n': 'Decisión',
    'TÃ©cnica': 'Técnica',
    'tÃ©cnico': 'técnico',
    'TÃ©cnicos': 'Técnicos',
    'GestiÃ³n': 'Gestión',
    'gestiÃ³n': 'gestión',
    'SincronizaciÃ³n': 'Sincronización',
    'sincronizaciÃ³n': 'sincronización',
    'JustificaciÃ³n': 'Justificación',
    'EstratÃ©gicas': 'Estratégicas',
    'Ã­tem': 'ítem',
    'Ãtems': 'Ítems',
    'SecciÃ³n': 'Sección',
    'TrabajÃ³n': 'Trabajón',
    'IntervenciÃ³n': 'Intervención',
    'â†': '←',
    'â†': '←',
    
    # Emojis mal codificados (UTF-8 bytes incorrectos)
    'ðŸ'°': '💰',
    'ðŸ"': '🔍',
    'ðŸ"„': '🗑️',
    'ðŸ"Š': '📊',
    'ðŸ"„': '📋',
    'ðŸ§¾': '🧾',
    'ðŸ"‹': '📝',
    'ðŸ"Š': '📈',
    'ðŸ"„': '📥',
    'ðŸ"§': '⚙️',
    'ðŸ—ºï¸': '🗺️',
    'ðŸŒ': '🗺️',
    'ðŸ–¨ï¸': '🖨️',
    'ðŸ"': '📋',
    'ðŸ"': '📈',
    'ðŸŽ¯': '✅',
    'ðŸ—'ï¸': '📍',
    'ðŸ"§': '🔧',
    'ðŸ"': '📊',
    'ðŸ"': '📈',
    'ðŸ"': '📋',
    'ðŸ"': '📝',
}

total_fixed = 0
files_fixed = 0

for filepath in files:
    if not os.path.exists(filepath):
        print(f"  [SKIP] {filepath} (no encontrado)")
        continue
    
    print(f"  [PROC] {filepath}...")
    
    # Leer como bytes primero, luego decodificar
    with open(filepath, 'rb') as f:
        content_bytes = f.read()
    
    # Decodificar con UTF-8, reemplazando errores
    try:
        content = content_bytes.decode('utf-8', errors='replace')
    except:
        content = content_bytes.decode('latin1', errors='replace')
    
    original = content
    count = 0
    
    # Aplicar reemplazos
    for bad, good in replacements.items():
        if bad in content:
            content = content.replace(bad, good)
            count += content.count(good)
    
    if content != original:
        # Escribir con UTF-8 BOM
        with open(filepath, 'w', encoding='utf-8-sig', newline='') as f:
            f.write(content)
        print(f"    [OK] {count} reemplazos")
        files_fixed += 1
        total_fixed += count
    else:
        print(f"    [OK] Sin cambios")

print(f"\n✅ Corrección completada:")
print(f"   Archivos corregidos: {files_fixed}")
print(f"   Total reemplazos: {total_fixed}")
