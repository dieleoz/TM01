# ==========================================
# SCRIPT: Convertir TODOS los Contratos a Markdown
# Proyecto: APP Puerto Salgar - Barrancabermeja
# Metodología: Punto 42
# ==========================================

Write-Host "========================================" -ForegroundColor Cyan
Write-Host "CONVERSION MASIVA: TXT a MD (Metodologia Punto 42)" -ForegroundColor Cyan
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""

# Configuración
$carpetaOrigen = "0.1 contrato en .md"
$fechaActual = Get-Date -Format "dd/MM/yyyy"

# Listado de archivos a convertir con su destino
$archivos = @(
    # CONTRATOS PRINCIPALES
    @{
        Origen = "$carpetaOrigen/PARTE GENERAL PUBLICAS TRONCAL SIN MARCAS.txt"
        Destino = "I. Contrato General/1_Parte_General_v1.0.md"
        Tipo = "Contrato Principal - Parte General"
        Numero = "Parte General"
    },
    @{
        Origen = "$carpetaOrigen/PARTE ESPECIAL C1 ADENDA 6 SIN MARCAS.txt"
        Destino = "I. Contrato General/2_Parte_Especial_v1.0.md"
        Tipo = "Contrato Principal - Parte Especial"
        Numero = "Parte Especial C1"
    },
    
    # APÉNDICES TÉCNICOS
    @{
        Origen = "$carpetaOrigen/AP1-ALCANCE DEL PROYECTO C1 (ADENDA4)_SIN MARCAS.txt"
        Destino = "II. Apendices Tecnicos/AT1_Alcance_Proyecto_v1.0.md"
        Tipo = "Apéndice Técnico"
        Numero = "AT1"
    },
    @{
        Origen = "$carpetaOrigen/2 AP2 - CONDICIONES OYM (ADENDA2) C1_SIN MARCAS.txt"
        Destino = "II. Apendices Tecnicos/AT2_Operacion_Mantenimiento_v1.0.md"
        Tipo = "Apéndice Técnico"
        Numero = "AT2"
    },
    @{
        Origen = "$carpetaOrigen/6AP3 - ESPECIFICACIONES GENERALES C1.txt"
        Destino = "II. Apendices Tecnicos/AT3_Especificaciones_Generales_v1.0.md"
        Tipo = "Apéndice Técnico"
        Numero = "AT3"
    },
    @{
        Origen = "$carpetaOrigen/4 AP4-INDICADORES C1 (ADENDA4)_SIN MARCAS.txt"
        Destino = "II. Apendices Tecnicos/AT4_Indicadores_v1.0.md"
        Tipo = "Apéndice Técnico"
        Numero = "AT4"
    },
    @{
        Origen = "$carpetaOrigen/9AP5 - INTERFERENCIA CON REDES.txt"
        Destino = "II. Apendices Tecnicos/AT5_Interferencia_Redes_v1.0.md"
        Tipo = "Apéndice Técnico"
        Numero = "AT5"
    },
    @{
        Origen = "$carpetaOrigen/6 AP6- APNDICE G.AMBIENTAL C1(ADENDA3)_SIN MARCAS.txt"
        Destino = "II. Apendices Tecnicos/AT6_Gestion_Ambiental_v1.0.md"
        Tipo = "Apéndice Técnico"
        Numero = "AT6"
    },
    @{
        Origen = "$carpetaOrigen/APENDICE GAMBIENTAL C1(ADENDA_ABRIL)_SIN MARCAS.txt"
        Destino = "II. Apendices Tecnicos/AT6_Gestion_Ambiental_ABRIL_v1.0.md"
        Tipo = "Apéndice Técnico"
        Numero = "AT6 (Abril)"
    },
    @{
        Origen = "$carpetaOrigen/7 AP7 GESTION PREDIAL C1(ADENDA 3)_SIN MARCAS.txt"
        Destino = "II. Apendices Tecnicos/AT7_Gestion_Predial_v1.0.md"
        Tipo = "Apéndice Técnico"
        Numero = "AT7"
    },
    @{
        Origen = "$carpetaOrigen/8 AP8 GESTION SOCIAL C1(ADENDA 3)_SM.txt"
        Destino = "II. Apendices Tecnicos/AT8_Gestion_Social_v1.0.md"
        Tipo = "Apéndice Técnico"
        Numero = "AT8"
    },
    @{
        Origen = "$carpetaOrigen/7 AP3-ANEXO PLAN GESTIÓN RIESGO DESASTRES.txt"
        Destino = "II. Apendices Tecnicos/AT3_Anexo_Plan_Gestion_Riesgo_Desastres_v1.0.md"
        Tipo = "Apéndice Técnico - Anexo"
        Numero = "AT3-Anexo"
    },
    
    # APÉNDICES FINANCIEROS
    @{
        Origen = "$carpetaOrigen/22 APENDICE FINANCIERO 1 INFORMACION FINANCIERA.txt"
        Destino = "II. Apendices Tecnicos/AF1_Informacion_Financiera_v1.0.md"
        Tipo = "Apéndice Financiero"
        Numero = "AF1"
    },
    @{
        Origen = "$carpetaOrigen/23 APENDICE FINANCIERO 2 CESION ESPECIAL DE LA RETRIBUCIO.txt"
        Destino = "II. Apendices Tecnicos/AF2_Cesion_Especial_Retribucion_v1.0.md"
        Tipo = "Apéndice Financiero"
        Numero = "AF2"
    },
    @{
        Origen = "$carpetaOrigen/24 APENDICE FINANCIERO 3 PORTADA.txt"
        Destino = "II. Apendices Tecnicos/AF3_Polizas_Portada_v1.0.md"
        Tipo = "Apéndice Financiero"
        Numero = "AF3-Portada"
    },
    @{
        Origen = "$carpetaOrigen/25 APENDICE FINANCIERO 3.1 POLIZA DE CUMPLIMIENTO.txt"
        Destino = "II. Apendices Tecnicos/AF3.1_Poliza_Cumplimiento_v1.0.md"
        Tipo = "Apéndice Financiero"
        Numero = "AF3.1"
    },
    @{
        Origen = "$carpetaOrigen/26 APENDICE FINANCIERO 3.2 POLIZA RESPONSABILIDAD CIVIL.txt"
        Destino = "II. Apendices Tecnicos/AF3.2_Poliza_Responsabilidad_Civil_v1.0.md"
        Tipo = "Apéndice Financiero"
        Numero = "AF3.2"
    },
    @{
        Origen = "$carpetaOrigen/27 APENDICE FINANCIERO 3.3 POLIZA OBRAS CIVILES.txt"
        Destino = "II. Apendices Tecnicos/AF3.3_Poliza_Obras_Civiles_v1.0.md"
        Tipo = "Apéndice Financiero"
        Numero = "AF3.3"
    },
    @{
        Origen = "$carpetaOrigen/5 APENDICE FINANCIERO 3 ANEXO 2 POLIZA RESPONSABILIDAD CIVIL SIN MARCAS ADENDA 1.txt"
        Destino = "II. Apendices Tecnicos/AF3_Anexo2_Poliza_Responsabilidad_Civil_v1.0.md"
        Tipo = "Apéndice Financiero - Anexo"
        Numero = "AF3-Anexo2"
    }
)

Write-Host "📋 Total de archivos a convertir: $($archivos.Count)" -ForegroundColor Yellow
Write-Host ""

# Contador
$convertidos = 0
$errores = 0

# Procesar cada archivo
foreach ($archivo in $archivos) {
    $num = $convertidos + 1
    Write-Host "[$num/$($archivos.Count)] Procesando: $($archivo.Numero)..." -ForegroundColor Cyan
    
    try {
        # Verificar que el archivo origen existe
        if (-Not (Test-Path $archivo.Origen)) {
            Write-Host "  ⚠️  Archivo no encontrado: $($archivo.Origen)" -ForegroundColor Yellow
            $errores++
            continue
        }
        
        # Leer contenido del archivo .txt
        $contenido = Get-Content $archivo.Origen -Raw -Encoding UTF8
        
        # Crear encabezado Metodología Punto 42
        $encabezado = @"
# $($archivo.Numero): APP PUERTO SALGAR - BARRANCABERMEJA
## Proyecto Vehícular - Concesión

**Fecha de actualización:** $fechaActual  
**Proyecto:** APP Puerto Salgar - Barrancabermeja  
**Contrato:** Concesión APP  
**Documento:** $($archivo.Numero)  
**Tipo:** $($archivo.Tipo)  
**Estado:** ✅ Contenido completo  

---

## 1. INFORMACIÓN DEL DOCUMENTO

| Campo | Valor |
|-------|-------|
| **Fecha de actualización** | $fechaActual |
| **Proyecto** | APP Puerto Salgar - Barrancabermeja |
| **Contrato** | Concesión APP |
| **Responsable** | Administrador Contractual EPC |
| **Tipo** | $($archivo.Tipo) |
| **Número** | $($archivo.Numero) |
| **Estado** | ✅ Contenido completo |

---

## 2. CONTENIDO DEL DOCUMENTO

"@
        
        # Pie de página
        $piePagina = @"

---

## 3. CONTROL DE VERSIONES

| Versión | Fecha | Responsable | Descripción |
|:---:|:---:|:---|:---|
| **v1.0** | $fechaActual | Administrador Contractual EPC | Conversión inicial a Markdown - Metodología Punto 42 |

---

**Estado del documento:** ✅ Contenido completo  
**Versión:** 1.0  
**Responsable:** Administrador Contractual EPC  
**Próxima actualización:** Según necesidad contractual
"@
        
        # Combinar encabezado + contenido + pie
        $documentoCompleto = $encabezado + "`n`n" + $contenido + "`n" + $piePagina
        
        # Guardar archivo .md
        $documentoCompleto | Out-File -FilePath $archivo.Destino -Encoding UTF8
        
        Write-Host "  ✅ Convertido: $($archivo.Destino)" -ForegroundColor Green
        $convertidos++
        
    } catch {
        Write-Host "  ❌ Error: $_" -ForegroundColor Red
        $errores++
    }
}

Write-Host ""
Write-Host "========================================" -ForegroundColor Cyan
Write-Host "✅ CONVERSIÓN COMPLETADA" -ForegroundColor Green
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""
Write-Host "📊 Resumen:" -ForegroundColor Yellow
Write-Host "  - Convertidos: $convertidos" -ForegroundColor Green
Write-Host "  - Errores: $errores" -ForegroundColor $(if ($errores -gt 0) { "Red" } else { "Green" })
Write-Host ""
Write-Host "📁 Archivos generados en:" -ForegroundColor Yellow
Write-Host "  - I. Contrato General/" -ForegroundColor White
Write-Host "  - II. Apendices Tecnicos/" -ForegroundColor White
Write-Host ""
Write-Host "🎯 Próximo paso: Revisar y validar documentos convertidos" -ForegroundColor Yellow
Write-Host ""

