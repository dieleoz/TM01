#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""Script para corregir TODOS los emojis y caracteres mal codificados restantes en archivos HTML"""

import re
import os

# Lista de archivos a corregir
files_to_fix = [
    'docs/presupuesto.html',
    'docs/edt_detalle.html',
    'docs/reporte_gerencial.html',
    'docs/layout.html',
]

print("=" * 60)
print("Corrigiendo TODOS los emojis y caracteres mal codificados")
print("=" * 60)

# Diccionario de reemplazos: caracteres mal codificados → correctos
replacements = {
    # Caracteres españoles
    'Ã­tem': 'Ítem',
    'TransformaciÃ³n': 'Transformación',
    'VisualizaciÃ³n': 'Visualización',
    'Ã³ptica': 'óptica',
    'energÃ­a': 'energía',
    'autÃ³noma': 'autónoma',
    'IntegraciÃ³n': 'Integración',
    'crÃ­ticas': 'críticas',
    'JustificaciÃ³n': 'Justificación',
    'DescripciÃ³n': 'Descripción',
    'Volver al MenÃº': '← Volver al Menú',
    'MenÃº': 'Menú',
}

for file_path in files_to_fix:
    if not os.path.exists(file_path):
        print(f"\n⚠️  Archivo no encontrado: {file_path}")
        continue
    
    print(f"\n📁 Procesando: {file_path}")
    
    with open(file_path, 'rb') as f:
        content_bytes = f.read()
    
    content = content_bytes.decode('utf-8', errors='replace')
    original = content
    
    # Aplicar reemplazos simples
    count = 0
    for old, new in replacements.items():
        if old in content:
            occurrences = content.count(old)
            content = content.replace(old, new)
            count += occurrences
            if occurrences > 0:
                print(f"   ✓ {old[:30]}... → {new[:30]}... ({occurrences} veces)")
    
    # Correcciones de emojis con regex más agresivo
    emoji_fixes = [
        # Botones comunes
        (r'ðŸ[^\s]*\s*Aplicar', '🔍 Aplicar'),
        (r'ðŸ[^\s]*\s*Limpiar', '🗑️ Limpiar'),
        (r'ðŸ[^\s]*\s*Exportar Excel', '📊 Exportar Excel'),
        (r'ðŸ[^\s]*\s*Ver Desglose', '📋 Ver Desglose'),
        (r'ðŸ[^\s]*\s*Imprimir', '🖨️ Imprimir'),
        (r'ðŸ[^\s]*–¨ï¸[^\s]*Imprimir', '🖨️ Imprimir'),
        (r'ðŸ[^\s]*¤\s*Exportar Excel', '📊 Exportar Excel'),
        
        # Títulos y secciones
        (r'ðŸ[^\s]*Š\s*JustificaciÃ³n', '📊 Justificación'),
        (r'ðŸ[^\s]*Š\s*Justificación', '📊 Justificación'),
        (r'ðŸ[^\s]*§\s*Supuestos', '⚙️ Supuestos'),
        (r'âš\s*ï¸[^\s]*\s*Riesgos', '⚙️ Riesgos'),
        
        # Navegación
        (r'ðŸ[^\s]*‚ï¸[^\s]*\s*EDT Detallado', '📈 EDT Detallado'),
        (r'←[^\s]*\s*Volver al Men', '← Volver al Menú'),
        (r'ðŸ[^\s]*\s*Buscar ítem', '🔍 Buscar ítem'),
        (r'ðŸ[^\s]*³\s*Estructura EDT', '🗺️ Estructura EDT'),
        (r'ðŸ[^\s]*Ž\s*Estructura EDT', '🗺️ Estructura EDT'),
        
        # Otros emojis comunes
        (r'ðŸ[^\s]*„\s*Limpiar', '🗑️ Limpiar'),
        (r'ðŸ[^\s]*„\s*Ver', '📋 Ver'),
        (r'ðŸ[^\s]*„\s*Iniciando', '📋 Iniciando'),
        (r'âŒ\s*Error', '❌ Error'),
        (r'âŒ\s*No', '❌ No'),
    ]
    
    for pattern, replacement in emoji_fixes:
        matches = re.findall(pattern, content)
        if matches:
            content = re.sub(pattern, replacement, content)
            count += len(matches)
            print(f"   ✓ Emoji corregido: {pattern[:40]}... → {replacement} ({len(matches)} veces)")
    
    # Solo escribir si hubo cambios
    if content != original:
        with open(file_path, 'w', encoding='utf-8', newline='') as f:
            f.write(content)
        print(f"   ✅ Archivo corregido: {file_path} ({count} reemplazos)")
    else:
        print(f"   ○ Sin cambios: {file_path}")

print("\n" + "=" * 60)
print("✅ Procesamiento completado")
print("=" * 60)

