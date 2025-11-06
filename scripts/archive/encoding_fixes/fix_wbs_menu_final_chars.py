#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""Script para corregir últimos caracteres mal codificados en WBS_Menu_Principal.html"""

file_path = "docs/WBS_Menu_Principal.html"

with open(file_path, 'rb') as f:
    content_bytes = f.read()

content = content_bytes.decode('utf-8', errors='replace')

print(f"Corrigiendo últimos caracteres mal codificados en {file_path}...")

# Reemplazos adicionales de caracteres españoles
replacements = {
    'Ã­ndice': 'Índice',
    'Ã©': '©',
    'Â©': '©',
    'Ãšltima': 'Última',
    'actualizaciÃ³n': 'actualización',
    'CapÃ­tulos': 'Capítulos',
    'Sistema WBS': 'Sistema WBS',  # Ya está correcto
}

count = 0
for old, new in replacements.items():
    if old in content:
        occurrences = content.count(old)
        content = content.replace(old, new)
        count += occurrences
        print(f"✓ Reemplazado: {old} → {new} ({occurrences} veces)")

print(f"Total reemplazos: {count}")

# Escribir archivo
with open(file_path, 'w', encoding='utf-8', newline='') as f:
    f.write(content)

print(f"✅ Archivo corregido: {file_path}")

# Verificar que no quedan caracteres mal codificados
bad_patterns = ['Ã­ndice', 'Ã©', 'Â©', 'Ãšltima', 'actualizaciÃ³n', 'CapÃ­tulos']
remaining = []
for pattern in bad_patterns:
    if pattern in content:
        remaining.append(pattern)

if remaining:
    print(f"⚠️  Advertencia: Aún quedan patrones: {remaining}")
else:
    print("✅ Verificado: No quedan caracteres mal codificados")

