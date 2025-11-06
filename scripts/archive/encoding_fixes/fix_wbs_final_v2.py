#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""Script final para corregir TODOS los emojis restantes en docs/wbs.html"""

file_path = "docs/wbs.html"

# Leer archivo
with open(file_path, 'rb') as f:
    content_bytes = f.read()

content = content_bytes.decode('utf-8', errors='replace')

print(f"Corrigiendo TODOS los emojis restantes en {file_path}...")

# Dividir en líneas para corregir específicamente
lines = content.split('\n')
count = 0

# Corregir línea 93: "ðŸ" Filtros"
if len(lines) > 92 and 'Filtros' in lines[92]:
    if 'ðŸ' in lines[92] and 'Filtros' in lines[92]:
        import re
        lines[92] = re.sub(r'ðŸ[^>]*Filtros', '🔍 Filtros', lines[92])
        count += 1
        print(f"✓ Línea 93 corregida")

# Corregir línea 103: "ðŸ" Aplicar"
if len(lines) > 102 and 'Aplicar' in lines[102]:
    if 'ðŸ' in lines[102] and 'Aplicar' in lines[102]:
        import re
        lines[102] = re.sub(r'ðŸ[^>]*Aplicar', '🔍 Aplicar', lines[102])
        count += 1
        print(f"✓ Línea 103 corregida")

# Corregir línea 104: "ðŸ—'ï¸ Limpiar"
if len(lines) > 103 and 'Limpiar' in lines[103]:
    if 'ðŸ' in lines[103] and 'Limpiar' in lines[103]:
        import re
        lines[103] = re.sub(r'ðŸ[^>]*Limpiar', '🗑️ Limpiar', lines[103])
        count += 1
        print(f"✓ Línea 104 corregida")

# Corregir línea 183: "âŒ Error"
if len(lines) > 182 and 'Error' in lines[182]:
    if 'âŒ' in lines[182]:
        lines[182] = lines[182].replace('âŒ', '❌')
        count += 1
        print(f"✓ Línea 183 corregida")

# Corregir línea 186: "âŒ Error"
if len(lines) > 185 and 'Error' in lines[185]:
    if 'âŒ' in lines[185]:
        lines[185] = lines[185].replace('âŒ', '❌')
        count += 1
        print(f"✓ Línea 186 corregida")

# Corregir línea 269: "âŒ No"
if len(lines) > 268 and 'No se encontraron' in lines[268]:
    if 'âŒ' in lines[268]:
        lines[268] = lines[268].replace('âŒ', '❌')
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

# Verificar
verifications = ['📋 DT', 'ℹ️ Ver', '🔍', '📈', '🗑️', '❌', '✅', 'ℹ️ Detalles']
for v in verifications:
    if v in content_new:
        print(f"✓ Verificado: {v} encontrado")

