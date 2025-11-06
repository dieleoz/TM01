#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""Script para corregir emojis restantes en WBS_Menu_Principal.html"""

import re

file_path = "docs/WBS_Menu_Principal.html"

with open(file_path, 'rb') as f:
    content_bytes = f.read()

content = content_bytes.decode('utf-8', errors='replace')

print(f"Corrigiendo emojis restantes en {file_path}...")

# Reemplazos adicionales específicos
additional_replacements = {
    'GESTIÃ"N': 'GESTIÓN',
    'AutomÃ¡tica': 'Automática',
    'DinÃ¡micos': 'Dinámicos',
    'CapÃ­tulo': 'Capítulo',
    'exportaciÃ³n': 'exportación',
    'bÃºsqueda': 'búsqueda',
    'UbicaciÃ³n': 'Ubicación',
    'AnÃ¡lisis': 'Análisis',
    'JustificaciÃ³n': 'Justificación',
    'supuestos': 'supuestos',
    'tÃ©cnicos': 'técnicos',
    'Detalle': 'Detalle',
    'presupuestal': 'presupuestal',
    'presupuestal completo': 'presupuestal completo',
    'cÃ¡lculos': 'cálculos',
    'Ã­tem': 'ítem',
    'validaciÃ³n': 'validación',
    'descomposiciÃ³n': 'descomposición',
    'Entregables': 'Entregables',
    'gestiÃ³n': 'gestión',
    'Cronograma': 'Cronograma',
    'ejecuciÃ³n': 'ejecución',
    'crÃ­ticos': 'críticos',
    'recursos': 'recursos',
    'rutas': 'rutas',
    'categorizados': 'categorizados',
    'mitigaciÃ³n': 'mitigación',
    'probabilidad': 'probabilidad',
    'IngenierÃ­a': 'Ingeniería',
    'COCINA': 'COCINA',
    'Word': 'Word',
    'HTML': 'HTML',
    'visualizaciÃ³n': 'visualización',
    'impresiÃ³n': 'impresión',
    'Ã­ndice': 'Índice',
    'interactivo': 'interactivo',
    'stakeholders': 'stakeholders',
}

# Aplicar reemplazos simples adicionales
for old, new in additional_replacements.items():
    if old in content:
        count = content.count(old)
        content = content.replace(old, new)
        print(f"✓ Reemplazado: {old} → {new} ({count} veces)")

# Corregir emojis específicos con regex más amplio
emoji_fixes = [
    (r'ðŸ["\'][^\s]*Š', '📊'),  # Para "ðŸ"Š"
    (r'ðŸ["\'][^\s]*„', '📋'),  # Para "ðŸ"„"
    (r'ðŸ["\'][^\s]*Filtros', '🔍 Filtros'),
    (r'ðŸ["\'][^\s]*Aplicar', '🔍 Aplicar'),
    (r'ðŸ—[\'"]?[^\s]*ï¸[^\s]*', '🗺️'),  # Para emojis de mapa
    (r'âœ"', '✅'),
    (r'â­', '✳'),
]

for pattern, replacement in emoji_fixes:
    matches = re.findall(pattern, content)
    if matches:
        content = re.sub(pattern, replacement, content)
        print(f"✓ Corregido emoji: {pattern[:30]}... → {replacement} ({len(matches)} veces)")

# Corregir específicamente línea 415, 418, 429, 435
lines = content.split('\n')
if len(lines) > 414:
    # Línea 415: "ðŸ"Š WBS MENU PRINCIPAL"
    if 'ðŸ' in lines[414] and 'WBS MENU PRINCIPAL' in lines[414]:
        lines[414] = re.sub(r'ðŸ[^>]*WBS MENU', '📊 WBS MENU', lines[414])
        print("✓ Línea 415 corregida")
    
    # Línea 418: "ðŸ"„ GESTIÓN DE CAMBIOS"
    if 'ðŸ' in lines[417] and 'GESTI' in lines[417]:
        lines[417] = re.sub(r'ðŸ[^>]*GESTI', '📋 GESTI', lines[417])
        print("✓ Línea 418 corregida")
    
    # Línea 429: "Generación de DT Automática"
    if len(lines) > 428 and 'Autom' in lines[428]:
        lines[428] = lines[428].replace('AutomÃ¡tica', 'Automática').replace('DinÃ¡micos', 'Dinámicos')
        print("✓ Línea 429 corregida")
    
    # Línea 435: "CapÃ­tulo"
    if len(lines) > 434 and 'Cap' in lines[434]:
        lines[434] = lines[434].replace('CapÃ­tulo', 'Capítulo')
        print("✓ Línea 435 corregida")

content = '\n'.join(lines)

# Escribir archivo
with open(file_path, 'w', encoding='utf-8', newline='') as f:
    f.write(content)

print(f"✅ Archivo corregido: {file_path}")

