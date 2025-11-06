#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""Script para corregir TODOS los emojis y caracteres mal codificados finales en archivos HTML"""

import re
import os

# Lista de archivos a corregir
files_to_fix = [
    'docs/cronograma.html',
    'docs/analisis_riesgos.html',
]

print("=" * 60)
print("Corrigiendo emojis y caracteres mal codificados finales")
print("=" * 60)

# Diccionario de reemplazos: caracteres mal codificados → correctos
replacements = {
    # Caracteres españoles comunes
    'DuraciÃ³n': 'Duración',
    'PreparaciÃ³n': 'Preparación',
    'energÃ­a': 'energía',
    'Plazos Contractuales': 'Plazos Contractuales',
    'SecciÃ³n': 'Sección',
    'CrÃ­tica': 'Crítica',
    'CRÃTICA': 'CRÍTICA',
    'MÃ¡ximas': 'Máximas',
    'lÃ­mite': 'límite',
    'con Cura': 'con Cura',
    'vencidos': 'vencidos',
    'categorÃ­as': 'categorías',
    'Ã³ptica': 'óptica',
    'MenÃº': 'Menú',
    'CrÃ­tico': 'Crítico',
    'Fase': 'Fase',
    'Tarea': 'Tarea',
    'Hito': 'Hito',
    'Sistema': 'Sistema',
    'Inicio': 'Inicio',
    'Fin': 'Fin',
    'Dur. (meses)': 'Dur. (meses)',
    'Gantt': 'Gantt',
    'Actividad': 'Actividad',
    'Prob/Imp': 'Prob/Imp',
    'Bajo': 'Bajo',
    'Medio': 'Medio',
    'Alto': 'Alto',
    'Muy Alto': 'Muy Alto',
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
        # Cronograma
        (r'ðŸ[^\s]*\s*Cronograma Maestro', '📅 Cronograma Maestro'),
        (r'ðŸ[^\s]*\s*…\s*Cronograma', '📅 Cronograma'),
        (r'ðŸ[^\s]*Žï¸[^\s]*\s*Filtros', '🔍 Filtros'),
        (r'ðŸ[^\s]*‚ï¸[^\s]*\s*Plan Maestro', '📊 Plan Maestro'),
        (r'ðŸ[^\s]*\s*" Plazos', '📋 Plazos'),
        (r'ðŸ[^\s]*\s*\' Plazos', '📋 Plazos'),
        
        # Análisis de Riesgos
        (r'ðŸ[^\s]*\s*Men', '← Menú'),
        (r'âš\s*ï¸[^\s]*\s*Análisis de Riesgos', '⚙️ Análisis de Riesgos'),
        (r'ðŸ[^\s]*§­\s*Matriz', '📊 Matriz'),
        (r'ðŸ[^\s]*Žï¸[^\s]*\s*Filtros', '🔍 Filtros'),
        
        # Botones comunes
        (r'ðŸ[^\s]*–¨ï¸[^\s]*\s*Imprimir', '🖨️ Imprimir'),
        (r'ðŸ[^\s]*¤\s*Exportar Excel', '📊 Exportar Excel'),
        
        # Estados y badges
        (r'âŒ\s*Vencida', '❌ Vencida'),
        (r'âŒ\s*Vencidos', '❌ Vencidos'),
        (r'âš\s*ï¸[^\s]*\s*CRÍTICA', '⚠️ CRÍTICA'),
        (r'ðŸ[^\s]*´\s*Urgente', '⚠️ Urgente'),
        (r'ðŸ[^\s]*¢\s*OK', '✅ OK'),
        (r'ðŸŸ¢\s*OK', '✅ OK'),
    ]
    
    for pattern, replacement in emoji_fixes:
        matches = re.findall(pattern, content)
        if matches:
            content = re.sub(pattern, replacement, content)
            count += len(matches)
            print(f"   ✓ Emoji corregido: {pattern[:40]}... → {replacement} ({len(matches)} veces)")
    
    # Reemplazos específicos adicionales
    specific_fixes = {
        '← Men': '← Menú',
        'MenÃº': 'Menú',
    }
    
    for old, new in specific_fixes.items():
        if old in content:
            occurrences = content.count(old)
            content = content.replace(old, new)
            count += occurrences
            print(f"   ✓ {old} → {new} ({occurrences} veces)")
    
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

