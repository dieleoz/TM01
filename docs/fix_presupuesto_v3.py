import re
import os

file_path = r'd:\onedrive\gdrive\TM1\0.1 ingenieria basica\0.0 FORMATOS PARA IA\docs\presupuesto.html'

with open(file_path, 'r', encoding='utf-8') as f:
    content = f.read()

# Fix header unicode
content = content.replace('Ñ tem', 'ÍTEM')
content = content.replace('â ³', '⏳')
content = content.replace('SEÑ‘ALIZACIÑ“N', 'SEÑALIZACIÓN')
content = content.replace('SIÍTEMAS', 'SISTEMAS')

# Fix < tr > and other tag spacing that breaks parsing
content = re.sub(r'<\s+tr\s+>', '<tr>', content)
content = re.sub(r'<\s+/tr\s+>', '</tr>', content)
content = re.sub(r'<\s+td\s+>', '<td>', content)
content = re.sub(r'<\s+/td\s+>', '</td>', content)
content = re.sub(r'<\s+div\s+>', '<div>', content)
content = re.sub(r'<\s+/div\s+>', '</div>', content)
# Fix generic closing tags with spaces
content = re.sub(r'<\s+/([a-zA-Z0-9]+)\s+>', r'</\1>', content)

# Ensure script tags are clean
content = content.replace('< script >', '<script>')
content = content.replace('< /script >', '</script>')

with open(file_path, 'w', encoding='utf-8') as f:
    f.write(content)

print("Fixed specific unicode and tag spacing.")
