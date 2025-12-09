import re
import os

file_path = r'd:\onedrive\gdrive\TM1\0.1 ingenieria basica\0.0 FORMATOS PARA IA\docs\presupuesto.html'

try:
    with open(file_path, 'r', encoding='utf-8') as f:
        content = f.read()
except UnicodeDecodeError:
    with open(file_path, 'r', encoding='latin-1') as f:
        content = f.read()

# Fix hidden unicode/mojibake
# We replace the known corrupted strings directly
content = content.replace("CAPÑ TULO", "CAPÍTULO")
content = content.replace("Ñ TEM", "ÍTEM")
content = content.replace("DESCRIPCIÑ“N", "DESCRIPCIÓN")
content = content.replace("←³", "→")

# Fix malformed tags caused by bad edits: < tr >, < /tr >, < div >, < !DOCTYPE >, < script >
# 1. Opening tags: < tag > or < tag ... >
# We want to remove space after < and before > if it's a tag.
# Fix < tag
content = re.sub(r'<\s+([a-zA-Z!/])', r'<\1', content)
# Fix tag >
# This is trickier because of attributes like <div class="...">. We only want to remove space if it's `div >` or `script >` or `/tr >`.
# Let's target specific common tags we saw broken or generic closing
content = re.sub(r'(</?[a-zA-Z0-9]+)\s+>', r'\1>', content)

# Specific fixes for things seen in the view that might escape generic regex
content = content.replace("< !DOCTYPE", "<!DOCTYPE")
content = content.replace("< script >", "<script>")
content = content.replace("< /script >", "</script>")
content = content.replace("</ script >", "</script>") # Just in case
content = content.replace("< style >", "<style>")
content = content.replace("</ style >", "</style>")

# Fix weird spacing in attributes if any? e.g. text - align
content = content.replace("text - align", "text-align")
content = content.replace("font - weight", "font-weight")
content = content.replace("font - family", "font-family")
content = content.replace("font - size", "font-size")
content = content.replace("border - collapse", "border-collapse")
content = content.replace("max - width", "max-width")
content = content.replace("border - radius", "border-radius")
content = content.replace("box - shadow", "box-shadow")
content = content.replace("margin - top", "margin-top")
content = content.replace("row - sub", "row-sub") # class names

# Write back as UTF-8
with open(file_path, 'w', encoding='utf-8') as f:
    f.write(content)

print("Successfully fixed unicode and malformed tags.")
