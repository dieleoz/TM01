# 🌐 SERVIDOR WEB PARA MAPA TM01

## ⚠️ IMPORTANTE

El mapa **NO funciona** si lo abres directamente desde el sistema de archivos (`file:///`).

El navegador bloquea las peticiones `fetch()` por seguridad (CORS).

## ✅ SOLUCIÓN: Usar un Servidor Web Local

### **Opción 1: Script Python (Recomendado)**

```bash
cd docs
python servidor_web.py
```

El servidor se iniciará en `http://localhost:8000` y abrirá el navegador automáticamente.

### **Opción 2: Script PowerShell**

```powershell
cd docs
.\servidor_web.ps1
```

### **Opción 3: Python HTTP Server Manual**

```bash
cd docs
python -m http.server 8000
```

Luego abre en el navegador: `http://localhost:8000/mapa_troncal_tm01.html`

### **Opción 4: Node.js (si tienes Node instalado)**

```bash
cd docs
npx http-server -p 8000
```

## 📝 NOTAS

- El archivo JSON es grande (~119MB) y puede tardar **10-30 segundos** en cargar
- El servidor debe estar en el directorio `docs/` para que las rutas funcionen correctamente
- Presiona `Ctrl+C` para detener el servidor

## 🔍 VERIFICAR QUE FUNCIONA

1. El servidor muestra: `🚀 Servidor web iniciado en http://localhost:8000`
2. El navegador se abre automáticamente (o abre manualmente la URL)
3. En la consola del navegador (F12) verás:
   - `🔄 Cargando coordenadas UF...`
   - `📦 Parseando JSON...`
   - `✅ Coordenadas UF cargadas: 13 UFs`
   - `✅ Equipos ITS cargados: [número]`

## ❌ SI SIGUE FALLANDO

1. Verifica que estás en el directorio `docs/`
2. Verifica que los archivos existen:
   - `docs/data/coordenadas_uf_tm01.json`
   - `docs/data/tm01_master_data.js`
3. Verifica que el puerto 8000 no está en uso
4. Revisa la consola del navegador (F12) para ver errores específicos

