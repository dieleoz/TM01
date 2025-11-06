#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""Script para corregir emojis mal codificados usando reemplazo directo de bytes"""

file_path = "docs/WBS_Menu_Principal.html"

# Leer archivo como bytes
with open(file_path, 'rb') as f:
    content = f.read()

# Decodificar con UTF-8
try:
    text = content.decode('utf-8', errors='replace')
except:
    text = content.decode('utf-8', errors='ignore')

print(f"Corrigiendo emojis mal codificados en {file_path}...")

# Reemplazos directos - buscar los patrones exactos mal codificados
replacements = [
    # EDT DETALLADO
    ('ðŸ"—ï¸ EDT DETALLADO', '📈 EDT DETALLADO'),
    # CRONOGRAMA
    ('ðŸ"— CRONOGRAMA DE TRABAJO', '📅 CRONOGRAMA DE TRABAJO'),
    # ANÁLISIS DE RIESGOS
    ('âš ï¸ ANÁLISIS DE RIESGOS', '⚙️ ANÁLISIS DE RIESGOS'),
    # SERVIR INGENIERÍA
    ('ðŸ"— SERVIR INGENIERÃ­A', '🛠️ SERVIR INGENIERÍA'),
    ('SERVIR INGENIERÃ­A', 'SERVIR INGENIERÍA'),
    # Consolida
    ('ðŸ"— Consolida', '🍳 Consolida'),
    ('ðŸ"—³ Consolida', '🍳 Consolida'),
    # SERVIR DOCUMENTOS
    ('ðŸ"—ï¸ SERVIR DOCUMENTOS', '🛠️ SERVIR DOCUMENTOS'),
    ('ðŸ"—½ï¸ SERVIR DOCUMENTOS', '🛠️ SERVIR DOCUMENTOS'),
    # Índice
    ('Ã­ndice', 'Índice'),
]

count = 0
for old, new in replacements:
    if old in text:
        occurrences = text.count(old)
        text = text.replace(old, new)
        count += occurrences
        print(f"✓ Reemplazado: {old[:30]}... → {new} ({occurrences} veces)")

# También hacer búsqueda más amplia con regex
import re

# Buscar cualquier patrón que empiece con ðŸ seguido de caracteres y termine con "EDT DETALLADO"
text = re.sub(r'ðŸ[^\s]*ï¸[^\s]*EDT DETALLADO', '📈 EDT DETALLADO', text)
# Buscar cualquier patrón que empiece con ðŸ seguido de caracteres y termine con "CRONOGRAMA"
text = re.sub(r'ðŸ[^\s]*CRONOGRAMA DE TRABAJO', '📅 CRONOGRAMA DE TRABAJO', text)
# Buscar cualquier patrón con âš seguido de espacios y termine con "ANÁLISIS"
text = re.sub(r'âš\s*ï¸[^\s]*ANÁLISIS', '⚙️ ANÁLISIS', text)
# Buscar "ðŸ"—" seguido de caracteres y termine con "SERVIR INGENIER"
text = re.sub(r'ðŸ[^\s]*SERVIR INGENIER', '🛠️ SERVIR INGENIER', text)
# Buscar "ðŸ"—" seguido de caracteres y termine con "Consolida"
text = re.sub(r'ðŸ[^\s]*Consolida', '🍳 Consolida', text)
# Buscar "ðŸ"—" seguido de caracteres y termine con "SERVIR DOCUMENTOS"
text = re.sub(r'ðŸ[^\s]*ï¸[^\s]*SERVIR DOCUMENTOS', '🛠️ SERVIR DOCUMENTOS', text)
text = re.sub(r'ðŸ[^\s]*SERVIR DOCUMENTOS', '🛠️ SERVIR DOCUMENTOS', text)

print(f"Total reemplazos: {count}")

# Escribir archivo con UTF-8 sin BOM
with open(file_path, 'w', encoding='utf-8', newline='') as f:
    f.write(text)

print(f"✅ Archivo corregido: {file_path}")

# Verificar que los emojis correctos están presentes
verifications = ['📈 EDT', '📅 CRONOGRAMA', '⚙️ ANÁLISIS', '🛠️ SERVIR', '🍳 Consolida']
for v in verifications:
    if v in text:
        print(f"✓ Verificado: {v} encontrado")

