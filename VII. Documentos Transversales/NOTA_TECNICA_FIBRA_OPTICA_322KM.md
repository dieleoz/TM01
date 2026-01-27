# NOTA TÉCNICA: ACLARACIÓN SOBRE 322 KM DE FIBRA ÓPTICA
## Proyecto TM01 - Sistema de Telecomunicaciones

**Fecha:** 05 de Diciembre 2025  
**Sistema:** Telecomunicaciones  
**Tema:** Aclaración sobre unidad de medida de fibra óptica  
**Responsable:** Administrador Contractual EPC

---

## 🎯 PROPÓSITO

Esta nota técnica aclara la interpretación correcta de "322 km de fibra óptica" mencionada en los documentos del proyecto, para evitar confusiones en presupuestos, RFQs y adquisiciones.

---

## 📏 ACLARACIÓN TÉCNICA

### **322 km = Longitud del CABLE (no suma de hilos)**

Los **322 km** se refieren a la **longitud física del CABLE de fibra óptica** que se debe adquirir e instalar, NO a la suma de las longitudes de los hilos individuales de fibra.

---

## 🔍 DESGLOSE DETALLADO

### 1. Cálculo de la Longitud del Cable

```
Corredor vial (trazado real):     293 km
Reserva técnica (+10%):           +29 km
  - Ondulaciones del terreno
  - Reparaciones futuras
  - Empalmes y conexiones
  - Reserva en ODFs
─────────────────────────────────────────
TOTAL CABLE A ADQUIRIR:           322 km
```

### 2. Composición del Cable

Un cable de fibra óptica de **322 km de longitud física** contiene:

```
┌─────────────────────────────────────────────────────────┐
│  CABLE DE FIBRA ÓPTICA (322 km de longitud física)     │
│                                                          │
│  Estructura interna:                                    │
│  ├─ Cubierta exterior (protección)                      │
│  ├─ Elementos de refuerzo                               │
│  ├─ Tubos holgados (loose tubes)                        │
│  │   ├─ Hilo 1: 322 km de longitud                     │
│  │   ├─ Hilo 2: 322 km de longitud                     │
│  │   ├─ Hilo 3: 322 km de longitud                     │
│  │   ├─ ...                                             │
│  │   └─ Hilo 24: 322 km de longitud                    │
│  └─ Elemento central de tracción                        │
│                                                          │
│  Especificación típica:                                 │
│  - Cable: 1 unidad de 322 km                           │
│  - Hilos: 12, 24, 48 o 96 (según diseño)              │
│  - Cada hilo: 322 km dentro del mismo cable            │
└─────────────────────────────────────────────────────────┘
```

### 3. Unidad de Compra

**Unidad estándar de compra e instalación:**
- **322 km de CABLE de fibra óptica**
- Especificación: "Cable de fibra óptica monomodo G.652.D de 24 hilos"

**NO se compra:**
- ❌ 322 km × 24 hilos = 7,728 km
- ❌ 322 km por cada hilo

---

## 💰 IMPACTO EN PRESUPUESTO

### Ejemplo de Cálculo Correcto

**Especificación:** Cable de fibra óptica monomodo G.652.D de 24 hilos

| Concepto | Cantidad | Unidad | Precio Unitario | Total |
|:---------|:---------|:-------|:----------------|:------|
| Cable FO 24 hilos | 322 | km | $3,500 USD/km | $1,127,000 |
| Instalación | 322 | km | $2,000 USD/km | $644,000 |
| **TOTAL** | **322 km** | - | - | **$1,771,000** |

### Ejemplo de Cálculo INCORRECTO (evitar)

❌ **ERROR COMÚN:**
```
Cable FO: 322 km × 24 hilos = 7,728 km
Precio: 7,728 km × $3,500 USD/km = $27,048,000 USD
```

Este cálculo es **INCORRECTO** porque:
- Los 24 hilos ya vienen dentro del cable de 322 km
- No se compran 7,728 km de cable
- El precio por km ya incluye todos los hilos del cable

---

## 📋 APLICACIÓN EN DOCUMENTOS DEL PROYECTO

### Documentos Actualizados con esta Aclaración

1. ✅ **T01 Telecomunicaciones:** `27H_T01_Ficha_Sistema_Telecomunicaciones_MVP_v1.0.md`
   - Sección 3.2: Aclaración técnica agregada

2. ✅ **Estado Metodología:** `ESTADO_METODOLOGIA_TELECOMUNICACIONES_MVP.md`
   - Sección 2.3: Aclaración técnica agregada

3. ✅ **Resumen Ejecutivo:** `RESUMEN_EJECUTIVO_PROYECTO_COMPLETADO.md`
   - Nota técnica agregada en tabla de sistemas

4. ✅ **Esta Nota Técnica:** `NOTA_TECNICA_FIBRA_OPTICA_322KM.md`
   - Documento de referencia permanente

### Documentos Pendientes de Actualización

⚠️ **T04 y T05 de Telecomunicaciones:**
- Actualizar de 285 km a 322 km
- Incluir esta aclaración técnica
- Verificar que presupuestos usen unidad correcta

---

## 🔧 ESPECIFICACIONES TÉCNICAS

### Cable de Fibra Óptica Recomendado

**Especificación mínima:**
- **Tipo:** Monomodo G.652.D (ITU-T)
- **Número de hilos:** 24 hilos (12 pares)
- **Longitud:** 322 km (en bobinas de 2-4 km)
- **Cubierta:** HDPE (polietileno de alta densidad)
- **Protección:** Armadura dieléctrica
- **Aplicación:** Instalación subterránea en ductos
- **Temperatura operación:** -40°C a +70°C
- **Atenuación:** ≤0.35 dB/km @ 1310 nm, ≤0.22 dB/km @ 1550 nm

### Presentación Comercial

Los fabricantes suministran el cable en:
- **Bobinas estándar:** 2-4 km por bobina
- **Cantidad de bobinas:** ~80-160 bobinas para 322 km
- **Empalmes:** Cada 2-4 km (según longitud de bobina)

---

## 📊 COMPARACIÓN: CORRECTO vs INCORRECTO

| Aspecto | ✅ CORRECTO | ❌ INCORRECTO |
|:--------|:-----------|:-------------|
| **Longitud a comprar** | 322 km de cable | 322 km × 24 hilos = 7,728 km |
| **Unidad de medida** | km de CABLE | km de HILO |
| **Especificación RFQ** | "322 km de cable FO 24 hilos" | "7,728 km de fibra" |
| **Presupuesto** | 322 km × $3,500/km = $1.1M | 7,728 km × $3,500/km = $27M |
| **Instalación** | Tender 322 km de cable | Tender 7,728 km (imposible) |
| **Bobinas requeridas** | ~80-160 bobinas | ~1,932 bobinas (error) |

---

## 🎓 CONCEPTOS CLAVE

### 1. Cable vs Hilo
- **Cable:** Estructura física que se instala (322 km)
- **Hilo (fibra):** Elemento transmisor dentro del cable (24 hilos × 322 km cada uno)

### 2. Capacidad de Transmisión
- **1 hilo:** 1 canal de comunicación (puede multiplexarse con DWDM)
- **24 hilos:** 24 canales independientes
- **Capacidad total:** Depende de tecnología (10G, 40G, 100G por hilo)

### 3. Redundancia
- **Anillo redundante:** Usa 2 hilos (principal + respaldo)
- **Hilos disponibles:** 22 hilos para otros servicios
- **Reserva:** Hilos adicionales para futuro crecimiento

---

## 📝 RECOMENDACIONES

### Para Presupuestos
1. ✅ Usar "322 km de cable de fibra óptica"
2. ✅ Especificar número de hilos (12, 24, 48, etc.)
3. ✅ Precio unitario por km de CABLE (no por hilo)
4. ✅ Incluir instalación por km de CABLE

### Para RFQs (Request for Quotation)
1. ✅ Especificar: "Cable de fibra óptica monomodo G.652.D de 24 hilos"
2. ✅ Cantidad: "322 km"
3. ✅ Presentación: "Bobinas de 2-4 km"
4. ✅ Incluir: Empalmes, ODFs, accesorios

### Para Instalación
1. ✅ Tender 322 km de cable físico
2. ✅ Realizar empalmes cada 2-4 km
3. ✅ Instalar ODFs en puntos de agregación
4. ✅ Certificar cada hilo individualmente

---

## 🔗 REFERENCIAS

### Documentos del Proyecto
- T01 Telecomunicaciones: `27H_T01_Ficha_Sistema_Telecomunicaciones_MVP_v1.0.md`
- T02 Telecomunicaciones: `27H_T02_Analisis_Requisitos_Telecomunicaciones_MVP_v1.0.md`
- T03 Telecomunicaciones: `27H_T03_Arquitectura_Conceptual_Telecomunicaciones_MVP_v1.0.md`
- Estado Metodología: `ESTADO_METODOLOGIA_TELECOMUNICACIONES_MVP.md`

### Normativa Técnica
- **ITU-T G.652:** Características de fibra óptica monomodo
- **ITU-T G.657:** Fibra óptica insensible a curvaturas
- **IEC 60794:** Cables de fibra óptica
- **TIA-568:** Estándares de cableado de telecomunicaciones

### Fabricantes de Referencia
- Corning (OptiTip, ClearCurve)
- Prysmian Group
- Furukawa Electric
- CommScope

---

## ✅ CONCLUSIÓN

**Los 322 km de fibra óptica mencionados en el proyecto se refieren a:**
- ✅ Longitud física del CABLE a adquirir e instalar
- ✅ Unidad de compra: 322 km de cable
- ✅ Unidad de presupuesto: 322 km × precio/km
- ✅ Unidad de instalación: 322 km de tendido

**NO se refieren a:**
- ❌ Suma de longitudes de hilos individuales
- ❌ 322 km × número de hilos
- ❌ Múltiples cables de 322 km cada uno

Esta aclaración es fundamental para evitar errores en presupuestos, RFQs y adquisiciones que podrían resultar en sobrecostos significativos.

---

**Versión:** 1.0  
**Fecha:** 05 de Diciembre 2025  
**Responsable:** Administrador Contractual EPC  
**Estado:** ✅ Documento de Referencia Permanente

---

**Aprobado por:**
- [ ] Ingeniero de Telecomunicaciones
- [ ] Administrador Contractual
- [ ] Gerente de Proyecto

**Distribución:**
- Equipo de Ingeniería
- Equipo de Presupuestos
- Equipo de Adquisiciones
- Archivo del Proyecto

