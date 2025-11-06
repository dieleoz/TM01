#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""Script final para corregir TODOS los caracteres mal codificados en WBS_Menu_Principal.html"""

import re

file_path = "docs/WBS_Menu_Principal.html"

with open(file_path, 'rb') as f:
    content_bytes = f.read()

content = content_bytes.decode('utf-8', errors='replace')

print(f"Corrigiendo TODOS los caracteres mal codificados en {file_path}...")

# Reemplazos adicionales de caracteres españoles
additional_replacements = {
    'jerÃ¡rquica': 'jerárquica',
    'jerÃ¡rquica': 'jerárquica',
    'DescomposiciÃ³n': 'Descomposición',
    'descomposiciÃ³n': 'descomposición',
    'rutas crÃ­ticas': 'rutas críticas',
    'crÃ­ticas': 'críticas',
    'ANÃLISIS': 'ANÁLISIS',
    'AnÃ¡lisis': 'Análisis',
    'EvaluaciÃ³n': 'Evaluación',
    'evaluaciÃ³n': 'evaluación',
    'mitigaciÃ³n especÃ­ficas': 'mitigación específicas',
    'especÃ­ficas': 'específicas',
    'IngenierÃ­a': 'Ingeniería',
    'ingenierÃ­a': 'ingeniería',
    'Ã­ndice': 'Índice',
    'Ã­ndice': 'Índice',
    'visualizaciÃ³n': 'visualización',
    'impresiÃ³n': 'impresión',
}

# Aplicar reemplazos simples
for old, new in additional_replacements.items():
    if old in content:
        count = content.count(old)
        content = content.replace(old, new)
        print(f"✓ Reemplazado: {old} → {new} ({count} veces)")

# Corregir emojis específicos con regex más agresivo
emoji_fixes = [
    # EDT DETALLADO
    (r'ðŸ[^\s]*EDT DETALLADO', '📈 EDT DETALLADO'),
    (r'ðŸ[^\s]*ï¸[^\s]*EDT', '📈 EDT'),
    
    # CRONOGRAMA
    (r'ðŸ[^\s]*CRONOGRAMA', '📅 CRONOGRAMA'),
    (r'ðŸ[^\s]*CRONOGRAMA DE TRABAJO', '📅 CRONOGRAMA DE TRABAJO'),
    
    # ANÁLISIS DE RIESGOS
    (r'âš\s*ï¸[^\s]*AN', '⚙️ AN'),
    (r'âš\s*ï¸[^\s]*ANÃ', '⚙️ ANÁ'),
    
    # SERVIR INGENIERÍA
    (r'ðŸ[^\s]*SERVIR', '🛠️ SERVIR'),
    (r'ðŸ[^\s]*SERVIR INGENIER', '🛠️ SERVIR INGENIER'),
    
    # SERVIR DOCUMENTOS
    (r'ðŸ[^\s]*ï¸[^\s]*SERVIR DOCUMENTOS', '🛠️ SERVIR DOCUMENTOS'),
    (r'ðŸ[^\s]*SERVIR DOCUMENTOS', '🛠️ SERVIR DOCUMENTOS'),
    
    # RESUMEN EJECUTIVO
    (r'ðŸ[^\s]*RESUMEN', '📊 RESUMEN'),
    (r'ðŸ[^\s]*Š RESUMEN', '📊 RESUMEN'),
    
    # Otros emojis
    (r'ðŸ[^\s]*ï¸[^\s]*DOCUMENTOS', '🛠️ DOCUMENTOS'),
    (r'ðŸ[^\s]*COCINA', '🍳 COCINA'),
]

for pattern, replacement in emoji_fixes:
    matches = re.findall(pattern, content)
    if matches:
        content = re.sub(pattern, replacement, content)
        print(f"✓ Corregido emoji: {pattern[:40]}... → {replacement} ({len(matches)} veces)")

# Correcciones específicas por línea si es necesario
lines = content.split('\n')
corrections = 0

for i, line in enumerate(lines):
    original_line = line
    
    # Correcciones específicas
    if 'EDT DETALLADO' in line and 'ðŸ' in line:
        lines[i] = re.sub(r'ðŸ[^\s]*EDT DETALLADO', '📈 EDT DETALLADO', line)
        if lines[i] != original_line:
            corrections += 1
            print(f"✓ Línea {i+1}: EDT DETALLADO corregido")
    
    if 'CRONOGRAMA DE TRABAJO' in line and 'ðŸ' in line:
        lines[i] = re.sub(r'ðŸ[^\s]*CRONOGRAMA', '📅 CRONOGRAMA', line)
        if lines[i] != original_line:
            corrections += 1
            print(f"✓ Línea {i+1}: CRONOGRAMA corregido")
    
    if 'ANÁLISIS DE RIESGOS' in line or 'ANÃ' in line and 'ðŸ' not in line:
        if 'âš' in line:
            lines[i] = re.sub(r'âš\s*ï¸[^\s]*AN', '⚙️ ANÁ', line)
            if lines[i] != original_line:
                corrections += 1
                print(f"✓ Línea {i+1}: ANÁLISIS DE RIESGOS corregido")
    
    if 'SERVIR INGENIER' in line and 'ðŸ' in line:
        lines[i] = re.sub(r'ðŸ[^\s]*SERVIR', '🛠️ SERVIR', line)
        if lines[i] != original_line:
            corrections += 1
            print(f"✓ Línea {i+1}: SERVIR INGENIERÍA corregido")
    
    if 'SERVIR DOCUMENTOS' in line and 'ðŸ' in line:
        lines[i] = re.sub(r'ðŸ[^\s]*SERVIR DOCUMENTOS', '🛠️ SERVIR DOCUMENTOS', line)
        if lines[i] != original_line:
            corrections += 1
            print(f"✓ Línea {i+1}: SERVIR DOCUMENTOS corregido")
    
    if 'RESUMEN EJECUTIVO' in line and 'ðŸ' in line:
        lines[i] = re.sub(r'ðŸ[^\s]*RESUMEN', '📊 RESUMEN', line)
        if lines[i] != original_line:
            corrections += 1
            print(f"✓ Línea {i+1}: RESUMEN EJECUTIVO corregido")

content = '\n'.join(lines)

# Escribir archivo
with open(file_path, 'w', encoding='utf-8', newline='') as f:
    f.write(content)

print(f"✅ Archivo corregido: {file_path}")
print(f"Total correcciones de líneas: {corrections}")

# Verificar que no quedan caracteres mal codificados
bad_patterns = ['ðŸ', 'â', 'CÃ', 'jerÃ', 'DescomposiciÃ', 'rutas crÃ', 'ANÃ', 'EvaluaciÃ', 'IngenierÃ', 'Ã­ndice']
remaining = []
for pattern in bad_patterns:
    if pattern in content:
        remaining.append(pattern)

if remaining:
    print(f"⚠️  Advertencia: Aún quedan patrones: {remaining}")
else:
    print("✅ Verificado: No quedan caracteres mal codificados")

