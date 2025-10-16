# ==========================================
# SCRIPT: Convertir UN documento TXT a MD
# Metodologia Punto 42
# ==========================================

param(
    [Parameter(Mandatory=$true)]
    [string]$ArchivoOrigen,
    
    [Parameter(Mandatory=$true)]
    [string]$ArchivoDestino,
    
    [Parameter(Mandatory=$true)]
    [string]$TipoDocumento,
    
    [Parameter(Mandatory=$true)]
    [string]$NumeroDocumento,
    
    [Parameter(Mandatory=$false)]
    [switch]$EliminarOrigen
)

$fechaActual = Get-Date -Format "dd/MM/yyyy"

Write-Host "Convirtiendo: $NumeroDocumento..." -ForegroundColor Cyan

# Header Metodologia Punto 42
$header = @"
# $NumeroDocumento - APP PUERTO SALGAR - BARRANCABERMEJA
## Proyecto Vehicular - Concesion APP

**Fecha de actualizacion:** $fechaActual  
**Proyecto:** APP Puerto Salgar - Barrancabermeja  
**Contrato:** Concesion APP  
**Documento:** $NumeroDocumento  
**Tipo:** $TipoDocumento  
**Estado:** Contenido completo  

---

## 1. INFORMACION DEL DOCUMENTO

| Campo | Valor |
|-------|-------|
| **Fecha de actualizacion** | $fechaActual |
| **Proyecto** | APP Puerto Salgar - Barrancabermeja |
| **Contrato** | Concesion APP |
| **Responsable** | Administrador Contractual EPC |
| **Tipo** | $TipoDocumento |
| **Numero** | $NumeroDocumento |
| **Estado** | Contenido completo |

---

## 2. CONTENIDO DEL DOCUMENTO

"@

# Footer
$footer = @"

---

## 3. CONTROL DE VERSIONES

| Version | Fecha | Responsable | Descripcion |
|:---:|:---:|:---|:---|
| **v1.0** | $fechaActual | Administrador Contractual EPC | Conversion inicial a Markdown - Metodologia Punto 42 |

---

**Estado del documento:** Contenido completo  
**Version:** 1.0  
**Responsable:** Administrador Contractual EPC  
**Proxima actualizacion:** Segun necesidad contractual
"@

try {
    # Crear directorio destino si no existe
    $directorioDestino = Split-Path -Parent $ArchivoDestino
    if (-Not (Test-Path $directorioDestino)) {
        New-Item -ItemType Directory -Force -Path $directorioDestino | Out-Null
    }
    
    # Escribir header
    $header | Out-File -FilePath $ArchivoDestino -Encoding UTF8
    
    # Agregar contenido original
    Get-Content $ArchivoOrigen -Raw -Encoding UTF8 | Out-File -FilePath $ArchivoDestino -Append -Encoding UTF8
    
    # Agregar footer
    $footer | Out-File -FilePath $ArchivoDestino -Append -Encoding UTF8
    
    Write-Host "  OK Convertido a: $ArchivoDestino" -ForegroundColor Green
    
    # Eliminar origen si se solicita
    if ($EliminarOrigen) {
        Remove-Item $ArchivoOrigen -Force
        Write-Host "  OK Eliminado: $ArchivoOrigen" -ForegroundColor Yellow
    }
    
} catch {
    Write-Host "  ERROR: $_" -ForegroundColor Red
    exit 1
}

