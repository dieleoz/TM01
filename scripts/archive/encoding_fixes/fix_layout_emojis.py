#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""Script para corregir emojis mal codificados en docs/layout.html"""

import re

file_path = "docs/layout.html"

with open(file_path, 'rb') as f:
    content_bytes = f.read()

content = content_bytes.decode('utf-8', errors='replace')

print(f"Corrigiendo emojis mal codificados en {file_path}...")

# Reemplazos específicos para emojis en layout.html
replacements = {
    # Emojis comunes en filtros
    'ðŸ"— Sistema:': '🔍 Sistema:',
    'ðŸ"— Unidad Funcional': '🔍 Unidad Funcional',
    'ðŸ"— Buscar:': '🔍 Buscar:',
    'ðŸ"— Aplicar Filtros': '🔍 Aplicar Filtros',
    'ðŸ"— Limpiar': '🗑️ Limpiar',
    'ðŸ"— Exportar CSV': '📊 Exportar CSV',
}

count = 0
for old, new in replacements.items():
    if old in content:
        occurrences = content.count(old)
        content = content.replace(old, new)
        count += occurrences
        print(f"✓ Reemplazado: {old[:30]}... → {new} ({occurrences} veces)")

# También usar regex para capturar variantes
emoji_fixes = [
    # Sistema
    (r'ðŸ[^\s]*\s*Sistema:', '🔍 Sistema:'),
    # Unidad Funcional
    (r'ðŸ[^\s]*\s*Unidad Funcional', '🔍 Unidad Funcional'),
    # Buscar
    (r'ðŸ[^\s]*\s*Buscar:', '🔍 Buscar:'),
    # Aplicar Filtros
    (r'ðŸ[^\s]*\s*Aplicar Filtros', '🔍 Aplicar Filtros'),
    # Limpiar
    (r'ðŸ[^\s]*\s*Limpiar', '🗑️ Limpiar'),
    # Exportar CSV
    (r'ðŸ[^\s]*\s*Exportar CSV', '📊 Exportar CSV'),
]

for pattern, replacement in emoji_fixes:
    matches = re.findall(pattern, content)
    if matches:
        content = re.sub(pattern, replacement, content)
        count += len(matches)
        print(f"✓ Corregido emoji: {pattern[:40]}... → {replacement} ({len(matches)} veces)")

print(f"Total reemplazos: {count}")

# Escribir archivo
with open(file_path, 'w', encoding='utf-8', newline='') as f:
    f.write(content)

print(f"✅ Archivo corregido: {file_path}")

# Verificar que los emojis correctos están presentes
verifications = ['🔍 Sistema', '🔍 Unidad Funcional', '🔍 Buscar', '🔍 Aplicar', '🗑️ Limpiar', '📊 Exportar']
found = []
for v in verifications:
    if v in content:
        found.append(v)
        print(f"✓ Verificado: {v} encontrado")

if len(found) == len(verifications):
    print("✅ Todos los emojis están correctos")
else:
    print(f"⚠️  Solo se encontraron {len(found)}/{len(verifications)} emojis esperados")

