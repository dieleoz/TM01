#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""Script para corregir últimos emojis mal codificados en docs/wbs.html"""

file_path = "docs/wbs.html"

# Leer archivo
with open(file_path, 'rb') as f:
    content_bytes = f.read()

content = content_bytes.decode('utf-8', errors='replace')

print(f"Corrigiendo últimos emojis en {file_path}...")

# Dividir en líneas
lines = content.split('\n')
count = 0

# Corregir línea 183: "âŒ Error"
if len(lines) > 182 and 'Error' in lines[182]:
    if 'â' in lines[182] or 'Œ' in lines[182]:
        lines[182] = lines[182].replace('âŒ', '❌').replace('â', '❌').replace('Œ', '')
        count += 1
        print(f"✓ Línea 183 corregida")

# Corregir línea 186: "âŒ Error"
if len(lines) > 185 and 'Error' in lines[185]:
    if 'â' in lines[185] or 'Œ' in lines[185]:
        lines[185] = lines[185].replace('âŒ', '❌').replace('â', '❌').replace('Œ', '')
        count += 1
        print(f"✓ Línea 186 corregida")

# Corregir línea 269: "âŒ No"
if len(lines) > 268 and 'No se encontraron' in lines[268]:
    if 'â' in lines[268] or 'Œ' in lines[268]:
        lines[268] = lines[268].replace('âŒ', '❌').replace('â', '❌').replace('Œ', '')
        count += 1
        print(f"✓ Línea 269 corregida")

# Corregir línea 297: "ðŸ'ï¸ Detalles"
if len(lines) > 296 and 'Detalles' in lines[296]:
    if 'ðŸ' in lines[296] and 'Detalles' in lines[296]:
        import re
        lines[296] = re.sub(r"ðŸ[^>]*Detalles", 'ℹ️ Detalles', lines[296])
        count += 1
        print(f"✓ Línea 297 corregida")

# Unir líneas
content_new = '\n'.join(lines)

# Escribir archivo
with open(file_path, 'w', encoding='utf-8', newline='') as f:
    f.write(content_new)

print(f"✅ Archivo corregido: {file_path}")
print(f"Total correcciones: {count}")

# Verificar todos los emojis
verifications = ['📋 DT', 'ℹ️ Ver', '🔍', '📈', '🗑️', '❌', '✅', 'ℹ️ Detalles']
found = [v for v in verifications if v in content_new]
print(f"✓ Emojis correctos encontrados: {', '.join(found)}")

