import re

file_path = r'd:\onedrive\gdrive\TM1\0.1 ingenieria basica\0.0 FORMATOS PARA IA\docs\presupuesto.html'

# Read as strict UTF-8
with open(file_path, 'r', encoding='utf-8') as f:
    content = f.read()

# Fix the specific artifacts using context to avoid strict string matching failures
# "Ñ tem" header
content = re.sub(r'Ñ\s*tem', 'ÍTEM', content)
# "â ³ Cargando" -> "⏳ Cargando"
content = re.sub(r'â\s*³\s*Cargando', '⏳ Cargando', content)
# "SEÑ...ALIZACI...N" to fixed string
content = re.sub(r'SEÑ.ALIZACI.N', 'SEÑALIZACIÓN', content)

# Fix < tr > spacing issues aggressively
content = re.sub(r'<\s+tr\s*>', '<tr>', content)
content = re.sub(r'<\s+/tr\s*>', '</tr>', content)
content = re.sub(r'<\s+td\s*>', '<td>', content)
content = re.sub(r'<\s+/td\s*>', '</td>', content)

with open(file_path, 'w', encoding='utf-8') as f:
    f.write(content)

print("Applied Regex V4 fixes.")
