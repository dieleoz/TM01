#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""Script final para corregir emojis en botones de docs/wbs.html"""

import re

file_path = "docs/wbs.html"

# Leer archivo
with open(file_path, 'rb') as f:
    content_bytes = f.read()

# Decodificar con UTF-8, reemplazando errores
content = content_bytes.decode('utf-8', errors='replace')

print(f"Tamaño archivo: {len(content)} caracteres")

count = 0

# Reemplazar "ðŸ"‹ DT" con "📋 DT"
old1 = 'ðŸ"‹ DT'
new1 = '📋 DT'
if old1 in content:
    content = content.replace(old1, new1)
    count += content.count(new1)
    print(f"✓ Reemplazado: {old1} → {new1} ({content.count(new1)} veces)")

# Reemplazar "ðŸ'\x81ï¸\x8f Ver" y variantes con "ℹ️ Ver"
# Buscar patrón que termina con " Ver</button>"
pattern2 = r"ðŸ['\"][^\s]*ï¸[^\s]*Ver"
replacement2 = 'ℹ️ Ver'
matches2 = re.findall(pattern2, content)
if matches2:
    content = re.sub(pattern2, replacement2, content)
    count += len(matches2)
    print(f"✓ Reemplazado patrón Ver: {len(matches2)} veces")

# Buscar patrón específico con bytes mal codificados
pattern3 = r"ðŸ['\"][^\x00-\x7F]{0,10}Ver"
matches3 = re.findall(pattern3, content)
if matches3:
    content = re.sub(pattern3, 'ℹ️ Ver', content)
    count += len(matches3)
    print(f"✓ Reemplazado patrón Ver (bytes): {len(matches3)} veces")

# Patrón alternativo más amplio para Ver
if 'ðŸ' in content and 'Ver</button>' in content:
    # Buscar línea específica y reemplazar
    lines = content.split('\n')
    for i, line in enumerate(lines):
        if 'Ver</button>' in line and 'ðŸ' in line:
            # Reemplazar todo el bloque de caracteres mal codificados antes de "Ver"
            new_line = re.sub(r'ðŸ[^\s]*Ver', 'ℹ️ Ver', line)
            if new_line != line:
                lines[i] = new_line
                count += 1
                print(f"✓ Corregida línea {i+1}")
    content = '\n'.join(lines)

# Escribir archivo corregido
with open(file_path, 'w', encoding='utf-8', newline='') as f:
    f.write(content)

print(f"✅ Archivo corregido: {file_path}")
print(f"Total reemplazos: {count}")

# Verificar resultado
if '📋 DT' in content:
    print("✓ Verificado: 📋 DT encontrado")
if 'ℹ️ Ver' in content:
    print("✓ Verificado: ℹ️ Ver encontrado")
else:
    print("⚠️ Advertencia: ℹ️ Ver no encontrado después de corrección")

