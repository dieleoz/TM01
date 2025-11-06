#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""Script completo para corregir TODOS los emojis mal codificados en cronograma.html"""

import re

file_path = "docs/cronograma.html"

with open(file_path, 'rb') as f:
    content_bytes = f.read()

content = content_bytes.decode('utf-8', errors='replace')

print(f"Corrigiendo TODOS los emojis mal codificados en {file_path}...")

# Reemplazos directos más específicos
replacements = [
    # Filtros - buscar cualquier variante de emoji antes de "Filtros"
    ('ðŸ"—ï¸ Filtros', '🔍 Filtros'),
    # Plazos - buscar cualquier variante de emoji antes de "Plazos Contractuales"
    ("ðŸ"—' Plazos Contractuales", '📋 Plazos Contractuales'),
    # Estados
    ('âŒ Vencida', '❌ Vencida'),
    ('âŒ Vencidos', '❌ Vencidos'),
    ('âŒ Error:', '❌ Error:'),
    # En plazo
    ('ðŸ"—¡ En plazo', '✅ En plazo'),
]

count = 0
for old, new in replacements:
    if old in content:
        occurrences = content.count(old)
        content = content.replace(old, new)
        count += occurrences
        print(f"✓ Reemplazado: {old[:30]}... → {new} ({occurrences} veces)")

# También usar regex para capturar variantes
emoji_fixes = [
    (r'ðŸ[^\s]*Žï¸[^\s]*\s*Filtros', '🔍 Filtros'),
    (r"ðŸ[^\s]*\s*['\"]\s*Plazos Contractuales", '📋 Plazos Contractuales'),
    (r'ðŸ[^\s]*["\']\s*Plazos Contractuales', '📋 Plazos Contractuales'),
    (r'âŒ\s*Vencida', '❌ Vencida'),
    (r'âŒ\s*Vencidos', '❌ Vencidos'),
    (r'âŒ\s*Error:', '❌ Error:'),
    (r'ðŸ[^\s]*¡\s*En plazo', '✅ En plazo'),
]

for pattern, replacement in emoji_fixes:
    matches = re.findall(pattern, content)
    if matches:
        content = re.sub(pattern, replacement, content)
        count += len(matches)
        print(f"✓ Corregido con regex: {pattern[:40]}... → {replacement} ({len(matches)} veces)")

print(f"Total reemplazos: {count}")

# Escribir archivo
with open(file_path, 'w', encoding='utf-8', newline='') as f:
    f.write(content)

print(f"✅ Archivo corregido: {file_path}")

# Verificar
verifications = ['🔍 Filtros', '📋 Plazos', '❌ Vencida', '❌ Error', '✅ En plazo']
found = [v for v in verifications if v in content]
print(f"✓ Emojis correctos encontrados: {', '.join(found)}")

