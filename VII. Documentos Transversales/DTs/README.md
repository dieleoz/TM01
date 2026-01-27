# CARPETA DE DECISIONES TÉCNICAS (DTs) - TM01 TRONCAL MAGDALENA

## Propósito
Esta carpeta contiene todas las Decisiones Técnicas (DTs) generadas automáticamente por el sistema de detección implementado en el archivo `.cursorrules`.

## Estructura
```
DTs/
├── 00_HISTORICO/                # 📂 Repositorio de DTs anteriores/supersedidas
├── DT-TM01-SOS-001-20251024.md    # Ejemplo: Cambio cantidad postes SOS
├── DT-TM01-ETD-002-YYYYMMDD.md    # Futuras DTs de ETD/RADAR
...
├── DT-TM01-CCTV-003-YYYYMMDD.md   # Futuras DTs de CCTV
├── DT-TM01-PMV-004-YYYYMMDD.md    # Futuras DTs de PMV
├── DT-TM01-METEO-005-YYYYMMDD.md  # Futuras DTs de METEO
└── DT-TM01-WIM-006-YYYYMMDD.md    # Futuras DTs de WIM
```

## Convención de Nombres
- **Formato**: `DT-TM01-[SISTEMA]-[NUM]-[FECHA].md`
- **SISTEMA**: SOS, ETD, CCTV, PMV, METEO, WIM
- **NUM**: Número secuencial por sistema (001, 002, 003...)
- **FECHA**: Fecha en formato YYYYMMDD

## Proceso Automático
1. **Detección**: El archivo `.cursorrules` detecta cambios técnicos
2. **Generación**: Se crea automáticamente una DT con formato estándar
3. **Propagación**: Se ejecuta el script maestro de sincronización
4. **Validación**: Se actualizan todos los archivos del sistema

## Estados de DTs
- **Generada**: DT creada automáticamente
- **Ejecutada**: Script maestro ejecutado exitosamente
- **Validada**: Revisada por QA
- **Aprobada**: Aprobada por Especificador
- **Implementada**: En producción

## Archivos Relacionados
- **`.cursorrules`**: Reglas de detección automática
- **`scripts/sincronizar_SISTEMA_TM01_COMPLETO.ps1`**: Script maestro
- **`Sistema_Validacion_Web/data/tm01_master_data.js`**: Fuente de datos
- **Logs**: `logs/sync_completo_*.log`

## Contacto
- **Responsable**: Equipo Técnico TM01
- **Fecha creación**: 24 de octubre de 2025
- **Versión**: 1.0

