#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""Script para corregir línea 284 de docs/wbs.html con emojis mal codificados"""

file_path = "docs/wbs.html"

# Leer archivo completo
with open(file_path, 'rb') as f:
    content_bytes = f.read()

# Decodificar
content = content_bytes.decode('utf-8', errors='replace')

# Dividir en líneas
lines = content.split('\n')

# Corregir línea 284 (índice 283)
if len(lines) > 283:
    line284 = lines[283]
    print(f"Línea 284 original: {repr(line284[:100])}")
    
    # Reemplazos directos
    # "ðŸ"‹ DT" → "📋 DT"
    if 'ðŸ"‹ DT' in line284:
        line284 = line284.replace('ðŸ"‹ DT', '📋 DT')
        print("✓ Reemplazado: ðŸ\"‹ DT → 📋 DT")
    elif 'ðŸ' in line284 and 'DT</button>' in line284:
        # Buscar y reemplazar patrón más amplio
        import re
        line284 = re.sub(r'ðŸ[^>]*DT', '📋 DT', line284)
        print("✓ Reemplazado patrón DT con regex")
    
    # "ðŸ'\x81ï¸\x8f Ver" o variantes → "ℹ️ Ver"
    if 'ðŸ' in line284 and 'Ver</button>' in line284:
        import re
        # Buscar patrón que va desde ðŸ hasta Ver
        line284 = re.sub(r"ðŸ[^>]*Ver", 'ℹ️ Ver', line284)
        print("✓ Reemplazado patrón Ver con regex")
    
    lines[283] = line284
    print(f"Línea 284 corregida: {repr(line284[:100])}")

# Unir líneas
content_new = '\n'.join(lines)

# Escribir archivo
with open(file_path, 'w', encoding='utf-8', newline='') as f:
    f.write(content_new)

print(f"✅ Archivo corregido: {file_path}")

# Verificar
if '📋 DT' in content_new:
    print("✓ Verificado: 📋 DT encontrado")
if 'ℹ️ Ver' in content_new:
    print("✓ Verificado: ℹ️ Ver encontrado")

