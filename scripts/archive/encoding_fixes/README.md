# Scripts de Encoding Archivados

**Fecha de consolidación:** 31 de Octubre 2025  
**Razón:** Consolidación de 35+ scripts duplicados en un solo script oficial

## 📋 Script Oficial

**Usar SOLO este script:**
```powershell
.\scripts\Fix-HtmlEncoding.ps1
```

El script oficial (`scripts/Fix-HtmlEncoding.ps1`) ejecuta internamente:
- `scripts/fix_all_html_encoding_final.py` - Script Python base

## 📦 Scripts Obsoletos

Todos los scripts en esta carpeta están **obsoletos** y fueron consolidados:
- `fix_all_html_encoding.py`
- `fix_all_html_encoding_v2.py`
- `fix_cronograma_simple.py`
- `fix_analisis_riesgos_emoji.py`
- `fix_presupuesto_emojis.py`
- `fix_final_emojis.py`
- `fix_html_encoding_v3.py`
- `fix_layout_encoding.py`
- ... (35+ scripts más)

## ⚠️ Advertencia

**NO USAR** scripts obsoletos directamente. Todos han sido:
1. Consolidados en `scripts/Fix-HtmlEncoding.ps1`
2. Archivados aquí para referencia histórica
3. Reemplazados por el script oficial

## 📝 Historial

- **31-Oct-2025:** Corrección masiva de 1,832+ caracteres en 46 archivos
- **31-Oct-2025:** Consolidación de 35+ scripts en script oficial
- **31-Oct-2025:** Scripts obsoletos movidos a este directorio

## 🔧 Uso Correcto

```powershell
# ✅ CORRECTO: Usar script oficial
.\scripts\Fix-HtmlEncoding.ps1

# ✅ CORRECTO: Con parámetros
.\scripts\Fix-HtmlEncoding.ps1 -Path "docs/" -DryRun

# ❌ INCORRECTO: Usar scripts obsoletos
.\scripts\archive\encoding_fixes\fix_all_html_encoding.py
```

## 📚 Documentación

Ver documentación completa del script oficial:
```powershell
Get-Help .\scripts\Fix-HtmlEncoding.ps1 -Full
```

