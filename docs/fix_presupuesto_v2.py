import re
import os

file_path = r'd:\onedrive\gdrive\TM1\0.1 ingenieria basica\0.0 FORMATOS PARA IA\docs\presupuesto.html'

with open(file_path, 'r', encoding='utf-8') as f:
    content = f.read()

# Fix stubborn unicode using regex
content = re.sub(r'CAP.+TULO', 'CAPÍTULO', content)
content = re.sub(r'CAP.+TULOS', 'CAPÍTULOS', content)
content = re.sub(r'DESCRIPCI.+N', 'DESCRIPCIÓN', content)
content = re.sub(r'.\s*TEM', 'ÍTEM', content) # Matches Ñ TEM or ? TEM

# Fix broken CSS selectors caused by space insertion
content = content.replace('.row - sub', '.row-sub')
content = content.replace('.row - total', '.row-total')
content = content.replace('first - child', 'first-child')
content = content.replace('text - align', 'text-align') # Just in case

# Fix < table > etc which might have been missed or re-broken
content = re.sub(r'<\s+([a-zA-Z])', r'<\1', content)
content = re.sub(r'([a-zA-Z])\s+>', r'\1>', content)
content = content.replace("</table >", "</table>")
content = content.replace("</body >", "</body>")
content = content.replace("</html >", "</html>")
content = content.replace("< /div >", "</div>")
content = content.replace("</ div >", "</div>")
content = content.replace("</div >", "</div>")

with open(file_path, 'w', encoding='utf-8') as f:
    f.write(content)

print("Successfully fixed unicode regex and CSS tags.")
