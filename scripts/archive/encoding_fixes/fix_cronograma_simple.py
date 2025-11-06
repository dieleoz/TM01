#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""Script simple para corregir caracteres españoles y emojis corruptos en cronograma.html"""

file_path = "docs/cronograma.html"

print(f"Corrigiendo problemas de encoding en {file_path}...")

# Leer archivo
with open(file_path, 'rb') as f:
    content_bytes = f.read()

content = content_bytes.decode('utf-8', errors='replace')

# Reemplazos directos de caracteres españoles corruptos
spanish_fixes = [
    ('MÃ¡xima', 'Máxima'),
    ('MÃ¡ximas', 'Máximas'),
    ('AÃ±adir', 'Añadir'),
    ('aÃ±adir', 'añadir'),
    ('mÃ­nimos', 'mínimos'),
    ('mÃ­nimo', 'mínimo'),
    ('dÃ­as', 'días'),
    ('DuraciÃ³n', 'Duración'),
    ('CrÃ­tica', 'Crítica'),
    ('CrÃ­tico', 'Crítico'),
    ('SecciÃ³n', 'Sección'),
    ('energÃ­a', 'energía'),
    ('Ã³ptica', 'óptica'),
    ('PreparaciÃ³n', 'Preparación'),
    ('IngenierÃ­a', 'Ingeniería'),
]

# Reemplazos directos de emojis corruptos
emoji_fixes = [
    ('âŒ Vencida', '❌ Vencida'),
    ('âŒ Vencidos', '❌ Vencidos'),
    ('âŒ Error:', '❌ Error:'),
    ('ðŸŸ¡ En plazo', '✅ En plazo'),
    ('âš ï¸', '⚠️'),
]

count = 0

# Aplicar reemplazos de caracteres españoles
print("\n--- Corrigiendo caracteres españoles ---")
for old, new in spanish_fixes:
    if old in content:
        occurrences = content.count(old)
        content = content.replace(old, new)
        count += occurrences
        print(f"[OK] {old} -> {new} ({occurrences} veces)")

# Aplicar reemplazos de emojis
print("\n--- Corrigiendo emojis ---")
for old, new in emoji_fixes:
    if old in content:
        occurrences = content.count(old)
        content = content.replace(old, new)
        count += occurrences
        # Mostrar solo los primeros caracteres en ASCII para evitar problemas de encoding
        old_ascii = old[:20].encode('ascii', errors='replace').decode('ascii', errors='replace')
        print(f"[OK] {old_ascii}... -> [emoji] ({occurrences} veces)")

print(f"\nTotal reemplazos: {count}")

# Escribir archivo con UTF-8 sin BOM
with open(file_path, 'w', encoding='utf-8', newline='') as f:
    f.write(content)

print(f"[OK] Archivo corregido: {file_path}")

# Verificar
verifications_spanish = ['Máxima', 'Añadir', 'mínimos', 'días']
verifications_emoji = ['❌ Vencida', '❌ Error', '✅ En plazo']
found_spanish = [v for v in verifications_spanish if v in content]
found_emoji = [v for v in verifications_emoji if v in content]
print(f"[OK] Correcciones verificadas: {len(found_spanish + found_emoji)}/{len(verifications_spanish + verifications_emoji)}")
print(f"[OK] Textos correctos: {', '.join(found_spanish)} y {len(found_emoji)} emojis")

