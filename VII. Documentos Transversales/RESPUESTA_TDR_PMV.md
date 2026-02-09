# 📋 RESPUESTA AL TDR PMV - OBSERVACIONES Y CORRECCIONES

**Proyecto:** TM01 Troncal Magdalena  
**Documento Origen:** `def pmv.md` (TDR Asesor Externo)  
**Fecha:** 09 de Febrero de 2026  
**Preparado por:** Ingeniería TM01 (EPC)  
**Destinatario:** Asesor Externo / Interventoría  
**Metodología:** Contract-First Architecture + Auditoría Forense

---

## 📌 RESUMEN EJECUTIVO

Se han identificado **observaciones críticas** en el TDR de PMV que requieren corrección antes de proceder a licitación.

**Diagnóstico General:** El documento del asesor contiene **"Gold Plating"** (sobre-especificaciones innecesarias) y riesgos de **"Vendor Lock-in"** (secuestro por marca). Las correcciones propuestas están alineadas con:
- ✅ Manual de Señalización Vial 2024 (Capítulo 2.7)
- ✅ Norma UNE-EN 12966 (adoptada por Colombia)
- ✅ Resolución IP/REV (Peajes)
- ✅ Ingeniería de Detalle T04/T05 validada

---

## � ESTRATEGIA SMART CAPEX: COMPARTIR INFRAESTRUCTURA PMV + RADAR

> **VALIDACIÓN:** El TDR correctamente solicita **sobredimensionar** la infraestructura del PMV para soportar los radares ETD/ANPR que se instalarán en los mismos pórticos. Esta es una **estrategia Smart CAPEX** que ahorra ~$40,000 USD.

### La Estrategia:

**En lugar de:** Construir 12 postes independientes con sistema solar para radares  
**Se hace:** Aprovechar los 12 pórticos de PMV existentes para montar los radares

### Ahorro Estimado:

| Ítem Eliminado | Costo Unitario | Cantidad | Ahorro |
|:---------------|:---------------|:---------|:-------|
| Poste independiente | $1,500 | 12 | $18,000 |
| Cimentación | $800 | 12 | $9,600 |
| Sistema solar independiente | $1,000 | 12 | $12,000 |
| **TOTAL AHORRO** | - | - | **~$40,000 USD** |

### PERO REQUIERE BLINDAJE TÉCNICO:

El TDR debe ser **MUY ESPECÍFICO** en las exigencias de dimensionamiento, o el proveedor de PMV entregará un sistema solar insuficiente.

---

### Categorías de Observaciones:

| Categoría | Cantidad | Impacto |
|:----------|:---------|:--------|
| **Cantidades y alcance** | 2 | Confusión entre PMV ITS vs PMV Peaje |
| **Sobre-especificaciones técnicas** | 4 | Pixel Pitch, altura carácter, distancia lectura |
| **Normas no aplicables** | 5 | UNE españolas (excepto UNE-EN 12966) |
| **Riesgos de Vendor Lock-in** | 2 | Protocolo propietario, software cerrado |
| **Riesgos contractuales** | 1 | RETIE sin condiciones claras |

### Impacto Económico Estimado:

- **Ahorro por correcciones técnicas:** $100,000 - $150,000 USD
  - Pixel Pitch P20 vs P10: ~$70,000 - $100,000
  - Altura carácter 400mm vs 450mm: ~$15,000 - $30,000
  - Segregación ITS vs Peaje: ~$15,000 - $20,000
- **Riesgo eliminado (RETIE):** $95,000 - $462,500 USD
- **Total:** **$195,000 - $612,500 USD**

---

## 🔍 ANÁLISIS DE DISCREPANCIAS Y OPTIMIZACIÓN (GAP ANALYSIS)

| # | Punto de Control | TDR Asesor (Actual) | Especificación Correcta | Observación del Estratega (Ahorro/Blindaje) |
|:--|:-----------------|:--------------------|:------------------------|:---------------------------------------------|
| 1 | **Normativa Técnica** | Normas "Internacionales" o NEMA TS-4 (USA) | **UNE-EN 12966 (L3/R2/B6)** | 🎩 **Auditor:** El Manual de Señalización 2024 (Cap 2.7) adopta la norma UNE-EN 12966. Si el equipo no tiene este certificado, la Interventoría lo rechazará. Exija Clases **L3** (Luminancia) y **R2** (Contraste). |
| 2 | **Resolución (Pixel Pitch)** | P10 o P12 para todo (Sobrecosto) | **P20 (Vía) / P10 (Peaje)** | 👷 **Ingeniero:** Instalar P10 en la vía (leído a >150m) es botar dinero. Use **P20 para Vía** (ahorro ~35%) y **P10 solo en Peajes** donde la lectura es a <10m. **Ahorro: $70K-100K USD** |
| 3 | **Protocolo** | Software propietario del fabricante | **NTCIP 1203 v03** | 🎩 **Auditor:** Prohíba protocolos cerrados. Exija **NTCIP 1203** y la entrega obligatoria de las **MIBs** para que el SICC pueda controlar el panel sin pagar licencias perpetuas. |
| 4 | **Estructura** | Pórticos "Arquitectónicos" o pintura estética | **Galvanizado ASTM A123** | 👷 **Ingeniero:** El contrato exige durabilidad. La pintura se cae; el galvanizado en caliente dura 20 años. Elimine requisitos estéticos que aumentan mantenimiento. |
| 5 | **Seguridad Pasiva** | No la menciona (Grave riesgo) | **Barrera Certificada + Cinta IV** | 🎩 **Auditor:** El Manual 2024 clasifica el pórtico como objeto fijo peligroso. Si el TDR no exige la **Defensa Metálica de Contención**, no recibirán la obra. |
| 6 | **Altura Carácter** | 450 mm | **400 mm mínimo** | 👷 **Ingeniero:** Manual 2024 exige 400mm para v>90km/h. 450mm sobre-especifica. **Ahorro: $15K-30K USD** |
| 7 | **Cantidades** | 25 unidades (solo vía) | **43 unidades TOTAL:**<br>- 29 PMV ITS<br>- 14 PMV Peaje | 🎩 **Auditor:** Segregar obligatoriamente por WBS. ITS (3.01) vs Peaje (5.01). Evita inflar ITS en ~$70K USD. |

---

## 🛡️ BLINDAJE NORMATIVO: EL "HARD DECK" DEL PMV

### Norma UNE-EN 12966 (OBLIGATORIA)

Para que el TDR sea seguro, debe exigir las siguientes **Clases de la Norma UNE-EN 12966** (Estándar adoptado por Colombia en Manual de Señalización 2024). Si el proveedor no presenta el **certificado de laboratorio** (TÜV, SGS) con estos códigos, **NO COMPRA**:

| Clase | Código | Descripción | Por qué es Obligatorio |
|:------|:-------|:------------|:-----------------------|
| **Luminancia** | **L3** | Alta luminosidad | Obligatorio para visibilidad con sol de frente en el Magdalena Medio. (L1/L2 se ven "lavados") |
| **Contraste** | **R2** | Alto contraste | Obligatorio para evitar el "efecto fantasma" (reflejos que parecen LEDs encendidos) |
| **Haz** | **B6** | Ángulo ancho | Obligatorio. Es el ángulo de visión. Un ángulo estrecho hace que el PMV se vea negro en las curvas |
| **Color** | **C2** | Cromaticidad | Garantiza colores estándar (rojo, ámbar, verde) |
| **Temperatura** | **T1** | Rango operativo | -10°C a +50°C (clima Magdalena Medio) |
| **Protección** | **P2** | IP65 mínimo | Protección contra agua y polvo |

### Texto para Insertar en TDR:

```markdown
CERTIFICACIÓN OBLIGATORIA:

El proponente deberá anexar copia del Certificado de Conformidad de 
Producto bajo norma UNE-EN 12966 vigente, expedido por organismo 
acreditado (TÜV, SGS, AENOR), demostrando cumplimiento de clases:

• L3 (Luminancia Alta)
• R2 (Contraste Alto)
• B6 (Ángulo de Visión Ancho)
• C2 (Cromaticidad)
• T1 (Temperatura Operativa)
• P2 (Protección IP65)

Paneles sin este certificado serán rechazados en la evaluación técnica.
```

---

## 💰 INGENIERÍA DE VALOR (DETECCIÓN DE TRAMPAS)

### 1️⃣ LA BATALLA DEL PIXEL: Panel Combinado vs Full Matrix (Ahorro: ~40%)

#### Problema:
El asesor probablemente exige **Full Matrix RGB** (todo a color) para todos los paneles, cuando el Manual 2024 permite una opción más económica.

#### La Realidad Normativa (Manual 2024):

El Manual de Señalización Vial 2024, Tabla 2-23, establece:

> *"Señal **combinada O** de matriz completa sobre pórtico con capacidad de despliegue mínimo de 3 líneas de información."*

**La conjunción "O" es la clave:** Puede usar Matriz Completa (cara) **O** Señal Combinada (económica).

#### Especificación Validada (Panel Combinado):

| Ubicación | Configuración | Pixel Pitch | Justificación |
|:----------|:--------------|:------------|:--------------|
| **Vía (Troncal)** | **Panel Combinado:**<br>- Zona Gráfica: RGB Full Color (64x64 px)<br>- Zona Texto: Ámbar Monocromo (3 líneas) | **Gráfico: P20**<br>**Texto: P20/P25** | Velocidad diseño 120 km/h requiere altura letra 450mm. NO requiere texto a color. **Ahorro ~40% vs Full Matrix RGB** |
| **Peaje (Carril)** | Panel Tarifario Compacto | **P10** | Distancia <10m, lectura detallada. Exigido por Res. IP/REV |

#### Especificación Técnica Correcta:

```markdown
PMV ITS (Vía - 29 Unidades) - PANEL COMBINADO:

ZONA GRÁFICA (Pictogramas):
• Tipo: Full Matrix RGB (Full Color)
• Resolución: 64x64 píxeles mínimo
• Pixel Pitch: 20mm (P20)
• Función: Señales de prohibido, peligro, flechas direccionales

ZONA ALFANUMÉRICA (Texto):
• Tipo: Monocromo Ámbar o Bicolor (Ámbar/Rojo)
• Configuración: 3 líneas de 12 caracteres cada una
• Altura de carácter: 450 mm (cumple Manual 2024 para 120 km/h)
• Pixel Pitch: 20mm (P20) o 25mm (P25)
• Función: Mensajes de texto, tiempos de recorrido, alertas

JUSTIFICACIÓN:
• Manual 2024 permite "Señal Combinada" (no obliga Full Matrix)
• Velocidad diseño 120 km/h requiere altura 450mm, NO color en texto
• Ahorro: ~40% vs panel Full Matrix RGB completo

CUMPLIMIENTO:
• Manual Señalización 2024, Tabla 2-23
• UNE-EN 12966 (L3/R2/B6)
```

#### Impacto Económico:

| Concepto | Full Matrix RGB | Panel Combinado | Ahorro |
|:---------|:----------------|:----------------|:-------|
| **Panel Vía (29 und)** | $60,000/und | $42,000/und | **$18,000/und** |
| **Total Ahorro** | $1,740,000 | $1,218,000 | **$522,000** |
| **% Ahorro** | - | - | **~30-40%** |

**Nota:** El ahorro viene de usar LED Ámbar (más barato y eficiente) en la zona de texto en lugar de RGB Full Color.

#### Validación del TDR del Asesor:

El asesor **YA está pidiendo la opción correcta** en el TDR:

> *"Tipo de panel: Banderola: 1 zona grafica de FULLCOLOR... con tres (3) líneas alfanuméricas... color ámbar y cuatrocientos cincuenta milímetros (450 mm) de altura."*

**Análisis:**
- ✅ Pide Color Ámbar para el texto (Correcto, baja costo)
- ✅ Pide 3 Líneas (Correcto según Manual)
- ✅ Pide 450 mm de altura (Correcto y seguro para 120 km/h, supera los 400mm mínimos)

**ACCIÓN:** Mantener esta especificación y **REFORZAR** que el Pixel Pitch de la zona de texto sea P20 o P25 (NO P10).

---

### 2️⃣ LA TRAMPA DE LOS PMV DE PEAJE (Segregación)

#### El Riesgo:
El asesor suele pedir PMV gigantes en los peajes o cargarlos al presupuesto ITS.

#### La Realidad:
La **Resolución IP/REV (Art 2.9.9)** exige **Paneles Tarifarios P10 Ámbar** en cada carril.

#### Acción:

1. **Especifique 14 Displays Pequeños (P10 Ámbar)** para las isletas de cobro.
2. **SÁQUELOS DEL PRESUPUESTO ITS.** Estos se pagan con el rubro de "Equipamiento de Peaje" (WBS 5.01), no con el de ITS (WBS 3.01).
3. **Ahorro:** Evita inflar el ITS en ~$70,000 USD.

#### Segregación Obligatoria:

| Subsistema | Cantidad | Tipo | Fundamento Contractual | WBS | CAPEX |
|:-----------|:---------|:-----|:-----------------------|:----|:------|
| **PMV ITS (Vía)** | **29** | Full Matrix RGB P20 | AT1 3.8 + AT2 3.3.5.1 | 3.01 | $2,320,000 |
| *-- Troncal (Mainline)* | 25 | P20 RGB | AT1 3.8: "Mínimo 25, max 20km" | 3.01 | $2,000,000 |
| *-- Aproximación Peaje* | 4 | P20 RGB | AT2 3.3.5.1: "2 por peaje" | 3.01 | $320,000 |
| **PMV Peaje (Tarifarios)** | **14** | P10 Ámbar compacto | Res. IP/REV Art 2.9.9 | 5.01 | $70,000 |
| **TOTAL PROYECTO** | **43** | - | - | - | **$2,390,000** |

---

### 3️⃣ PROTOCOLO: PROPIETARIO vs NTCIP (La Libertad)

#### Problema:
El TDR probablemente dice: **"Software de gestión del fabricante"**.

#### El Riesgo:
Si usa el software del fabricante, queda **casado con esa marca de por vida**. Si el día de mañana quiere comprar un panel de otra marca más barata, no le servirá.

#### Especificación Validada (T04):

```markdown
PROTOCOLO DE COMUNICACIÓN:

OBLIGATORIO:
• Protocolo: NTCIP 1203 v03 (National Transportation Communications 
  for ITS Protocol)
• Comunicación: TCP/IP, puerto Ethernet RJ45
• Entrega de MIBs: El proveedor debe entregar los archivos MIBs 
  (Management Information Base) y el diccionario de objetos NTCIP

PROHIBIDO:
• Protocolos propietarios que obliguen a usar software del fabricante
• Soluciones que requieran licencias perpetuas para operación diaria
• Sistemas que no permitan integración con SCADA de terceros

INTEGRACIÓN:
• El panel debe ser controlable desde cualquier SCADA/VMS que soporte 
  NTCIP 1203 (Dahua, Milestone, Genetec, etc.)
• Software standalone del fabricante solo para configuración inicial, 
  NO para operación diaria
```

#### Beneficio:
- ✅ **Libertad de marca:** Puede comprar paneles de diferentes fabricantes en el futuro
- ✅ **Sin licencias perpetuas:** No paga licencias anuales de software
- ✅ **Integración SCADA:** Cualquier SCADA puede controlar los paneles

---

### 4️⃣ ALTURA DE CARÁCTER - VALIDACIÓN PARA 120 KM/H

#### Observación:
El TDR exige **450 mm** de altura de carácter.

#### VALIDACIÓN - ESPECIFICACIÓN CORRECTA:

**Manual de Señalización 2024 (Tabla 2-13):**
- Velocidad >90 km/h: **400 mm mínimo**
- Velocidad de diseño del proyecto: **120 km/h**

**Veredicto:** La especificación de **450 mm es CORRECTA y PRUDENTE** para una vía de 120 km/h. Supera el mínimo de 400mm y garantiza legibilidad a alta velocidad.

#### Texto Validado:

```markdown
ESPECIFICACIONES TÉCNICAS PMV ITS:

DIMENSIONES (Para velocidad diseño 120 km/h):
• Altura de carácter: 450 mm (supera mínimo de 400mm del Manual 2024)
• Proporción altura/ancho: 0.7 a 1.0
• Espacio entre caracteres: 25%-40% de altura
• Espacio entre palabras: 75%-100% de altura
• Espacio entre líneas: 50%-75% de altura

CONFIGURACIÓN (Panel Combinado):
• 1 zona gráfica Full Color RGB (64x64 píxeles mínimo, P20)
• 3 líneas alfanuméricas de 12 caracteres cada una
• Color líneas alfanuméricas: Ámbar (monocromo, más económico que RGB)
• Pixel Pitch zona texto: P20 o P25 (NO P10)
```

#### Justificación:

| Aspecto | Especificación | Cumplimiento |
|:--------|:---------------|:-------------|
| **Velocidad diseño** | 120 km/h | Requiere altura >400mm |
| **Altura propuesta** | 450 mm | ✅ Supera mínimo (margen de seguridad) |
| **Legibilidad** | >150m | ✅ Garantizada con 450mm |

**ACCIÓN:** **MANTENER** la especificación de 450mm. Es correcta para la velocidad de diseño de 120 km/h.

---

### 5️⃣ PASARELAS DE MANTENIMIENTO (Walk-in)

#### Optimización:
Para los PMV de vía (VMS), exija **Acceso Trasero (Walk-in)** o frontal seguro.

#### Beneficio:
- ✅ Evita cerrar la vía con grúas canasta cada vez que se funde una fuente de poder
- ✅ El técnico sube por la pata del pórtico y arregla el panel por dentro sin afectar el tráfico
- ✅ Reduce costos de mantenimiento en ~60%

#### Texto para TDR:

```markdown
ACCESIBILIDAD PARA MANTENIMIENTO:

PMV de Vía (29 Unidades):
• Acceso trasero tipo "Walk-in" (gabinete transitable) O
• Acceso frontal seguro con plataforma de trabajo
• Escalera interna en pata de pórtico con protección anticaída
• Iluminación interna del gabinete
• Espacio mínimo de trabajo: 1.8m altura x 0.8m ancho

Justificación:
• Permite mantenimiento sin cerrar vía
• Reduce costos operativos
• Cumple normas de seguridad industrial
```

---

## 📋 OBSERVACIONES DETALLADAS

### 1️⃣ CANTIDAD Y SEGREGACIÓN DE PMV

#### Observación:
El TDR lista **25 PMV** sin distinguir entre PMV de vía (ITS) y PMV de peaje (tarifarios).

#### Problema:
- **Confusión contractual:** AT1 3.8 exige "mínimo 25 PMV en vía", pero AT2 3.3.5.1 exige "2 PMV por peaje" y Res. IP/REV exige "panel tarifario por carril".
- **Riesgo:** Mezclar PMV ITS con PMV Peaje genera glosas por incumplimiento de alcance.

#### Solución Propuesta:

**Segregación Obligatoria:**

| Subsistema | Cantidad | Fundamento Contractual | WBS |
|:-----------|:---------|:-----------------------|:----|
| **PMV ITS (Vía)** | **29** | AT1 3.8 (mínimo 25) + AT2 3.3.5.1 (2 por peaje en aproximación) | 3.01 |
| *-- Troncal (Mainline)* | 25 | AT1 3.8: "Mínimo 25, separación máx 20km" | 3.01 |
| *-- Aproximación Peaje* | 4 | AT2 3.3.5.1: "Al menos 2 por peaje" (2 peajes x 2) | 3.01 |
| **PMV Peaje (Tarifarios)** | **14** | Res. IP/REV: "Panel tarifa en cada carril IP/REV" | 5.01 |
| *-- Zambito* | 7 | 7 carriles IP/REV | 5.01 |
| *-- Aguas Negras* | 7 | 7 carriles IP/REV | 5.01 |
| **TOTAL PROYECTO** | **43** | Suma de obligaciones contractuales | - |

#### Texto Corregido:

```markdown
ALCANCE PMV:

SUBSISTEMA ITS (WBS 3.01) - 29 UNIDADES:
• 29 PMV Gran Formato (Full Matrix RGB P20)
  - 25 PMV en Troncal (cumple AT1 3.8: mínimo 25, separación máx 20km)
  - 4 PMV en Aproximación a Peajes (cumple AT2 3.3.5.1: 2 por peaje)
• Función: Información tráfico, tiempos de recorrido, alertas, gráficos
• Ubicación: Vía abierta (según tabla de distribución)
• Certificación: UNE-EN 12966 (L3/R2/B6)
• Protocolo: NTCIP 1203 v03

SUBSISTEMA PEAJE (WBS 5.01) - 14 UNIDADES:
• 14 PMV Tarifarios (Panel Ámbar P10 compacto)
• Función: Tarifa, saldo, categoría vehículo (transaccional)
• Ubicación: Isletas de cobro (1 por carril IP/REV)
• Fundamento: Resolución IP/REV Art 2.9.9 (prerrequisito habilitación peaje)
• Integración: DAC (Controlador de Carril)

TOTAL: 43 Unidades PMV
```

---

### 2️⃣ NORMAS NO APLICABLES - UNE (ESPAÑOLAS)

#### Observación:
El TDR cita múltiples normas UNE (españolas) que NO son obligatorias en Colombia.

#### Normas UNE a ELIMINAR (Gabinetes):

| Norma | Aplicación | Por qué NO aplica |
|:------|:-----------|:------------------|
| **UNE 4826** | Niebla salina (500h) | No exigida por RETIE, proyecto no es costa |
| **UNE-EN 2409** | Adherencia pintura | No exigida por RETIE |
| **UNE 20-501-2-34** | Vibraciones | No aplica para gabinetes PMV |
| **UNE 20-550** | Choques eléctricos | Cubierto por RETIE + NTC 2050 |
| **UNE 20460-5-54** | Toma de tierra | Cubierto por RETIE 2024 |

#### Norma UNE a MANTENER:

| Norma | Aplicación | Por qué SÍ aplica |
|:------|:-----------|:------------------|
| **UNE-EN 12966** | Señalización Variable | **Norma específica para PMV** (obligatoria por Manual Señalización 2024) |

#### Normas Colombianas CORRECTAS:
- ✅ **RETIE 2024** (Resolución 40117 de 2024)
- ✅ **NTC 2050** (Código Eléctrico Colombiano)
- ✅ **UNE-EN 12966** (Específica para PMV - Adoptada por Manual 2024)
- ✅ **Manual de Señalización Vial 2024** (Capítulo 2.7)

#### Normas a ELIMINAR:

| Norma | Aplicación | Por qué NO aplica |
|:------|:-----------|:------------------|
| **NTC 2031** | Iluminación | Es para sistemas de iluminación, NO para PMV |
| **Res. 77506 (SIC)** | Productos de consumo | Es para productos de consumo, NO para sistemas ITS |
| **EIA/TIA-606** | Cableado estructurado | Es para telecomunicaciones, NO para PMV |
| **NEMA TS-4** | Norma USA | Colombia adopta UNE-EN 12966, no NEMA |

---

### 3️⃣ DISTANCIA DE LECTURA - ESPECIFICACIÓN INNECESARIA

#### Observación:
El TDR exige "distancia mínima de lectura superior a 180 m".

#### Problema:
- La distancia de lectura es **función de la altura del carácter** y la velocidad de la vía.
- Con caracteres de 400 mm, la distancia de lectura ya está garantizada por el Manual de Señalización 2024.
- Especificar 180m es redundante y puede generar confusión en pruebas de aceptación.

#### Solución:
**ELIMINAR** esta especificación. La altura de carácter (400mm) ya garantiza legibilidad.

---

### 4️⃣ GABINETES - SOBRE-ESPECIFICACIONES

#### Observación:
El TDR especifica gabinetes con normas UNE y sobre-especificaciones.

#### Problemas Identificados:

| Aspecto | TDR | Problema | Corrección |
|:--------|:----|:---------|:-----------|
| **Especificación** | "Diferentes especificaciones" | Muy vago | **IP65 mínimo, RETIE 2024** |
| **Color** | RAL 7035 específico | No lo pide contrato | **Neutro (gris/beige)** |
| **Carga** | 400 Kg | Para subestaciones, no PMV | **Según equipos del panel** |
| **Niebla salina** | UNE 4826 (500h) | No exigida, no es costa | **ELIMINAR** |
| **Vibraciones** | UNE 20-501-2-34 | No aplica para PMV | **ELIMINAR** |

#### Texto Corregido:

```markdown
GABINETES PMV:
• Protección: IP65 mínimo (sin ingreso agua/polvo)
• Material: Acero galvanizado con pintura anticorrosiva
• Eléctrica (RETIE 2024): barra de tierra, DPS, rotulado
• Capacidad: Según equipos del panel (controlador, switch, protecciones)
• Color: Neutro (gris, beige)
• Accesibilidad: Frontal o trasera (Walk-in), con cerradura de seguridad
• Iluminación interna para mantenimiento
```

---

### 5️⃣ RADAR ANPR - INFRAESTRUCTURA COMPARTIDA (SMART CAPEX) ✅

#### Observación:
El TDR menciona "doce (12) RADARES ANPR distribuidos en algunos de los paneles" y solicita dimensionar el sistema solar para soportar 80W adicionales.

#### VALIDACIÓN - ESTRATEGIA CORRECTA:

> **APROBADO:** Esta es una **estrategia Smart CAPEX** que ahorra ~$40,000 USD al evitar construir 12 postes independientes con sistema solar para los radares. Los radares se montarán en los pórticos de PMV existentes.

#### Consumo Real del Sistema ETD/ANPR:

| Componente | Consumo | Observación |
|:-----------|:--------|:------------|
| Radar Doppler/LIDAR | 15-20 W | Detección de velocidad |
| Iluminador IR (Noche) | 30-50 W | **CRÍTICO** para LPR/ANPR nocturno |
| PC/Procesador Borde | 20 W | Procesamiento local |
| **TOTAL** | **70-90 W** | **Constante 24/7** |

**Veredicto:** Solicitar 80W con autonomía de 48 horas es **TÉCNICAMENTE NECESARIO**.

#### RIESGO SI NO SE ESPECIFICA CORRECTAMENTE:

⚠️ **ALERTA:** Si el TDR no es **MUY ESPECÍFICO**, el proveedor de PMV dimensionará el sistema solar solo para el consumo del panel LED (bajo en reposo), y cuando conecten el radar, **el sistema se apagará todas las madrugadas**.

#### TEXTO CORREGIDO PARA EL TDR:

```markdown
INFRAESTRUCTURA PARA RADARES ETD/ANPR (12 SITIOS):

El sistema de alimentación fotovoltaica del PMV deberá ser dimensionado 
para soportar, además de la carga propia del panel LED y sus comunicaciones, 
una CARGA AUXILIAR PERMANENTE (24/7) correspondiente a los equipos de 
detección de tráfico (ETD/Radar) que se instalarán en la misma estructura.

REQUISITOS DE ENERGÍA:
• Potencia de Reserva: El diseño debe garantizar disponibilidad para una 
  carga externa de 80 Watios constantes (24/7)
• Autonomía: El banco de baterías debe garantizar la operación del PMV + 
  Carga Auxiliar durante 48 horas sin radiación solar efectiva
• Interfaz de Conexión: El gabinete de energía deberá incluir una bornera 
  de salida de tensión regulada independiente para estos equipos auxiliares
• Tensión de Salida: Se debe suministrar 24 VDC regulado (estándar industrial) 
  o disponer de un convertidor DC-DC para ajuste de tensión según el equipo 
  de radar a instalar (12/24/48 VDC)

REQUISITOS DE ESPACIO:
• El gabinete del PMV debe disponer de al menos 4 unidades de rack (4RU) 
  o espacio en riel DIN libre para la instalación de los equipos de 
  comunicaciones y procesamiento del sistema de Radares
• Protección: IP65 mínimo
• Ventilación: Pasiva o activa según temperatura ambiente

REQUISITOS DE COMUNICACIONES:
• El switch del PMV debe tener al menos 1 puerto Ethernet RJ45 libre 
  (Gigabit) para conexión del radar
• Cable de red: Cat6 desde switch hasta punto de montaje del radar

ALCANCE - SEGREGACIÓN DE RESPONSABILIDADES:
• Proveedor PMV: Suministra pórtico, panel solar sobredimensionado, 
  baterías, bornera de salida 24VDC, espacio en gabinete, puerto switch
• Proveedor Radares (T04-ETD): Suministra sensor radar, cámara LPR, 
  cableado de datos, montaje del equipo en pórtico, integración

JUSTIFICACIÓN ECONÓMICA:
Esta estrategia ahorra aproximadamente $40,000 USD al evitar:
• 12 postes independientes ($18,000)
• 12 cimentaciones ($9,600)
• 12 sistemas solares independientes ($12,000)
```

#### VALIDACIÓN TÉCNICA:

| Aspecto | Requerimiento | Cumplimiento |
|:--------|:--------------|:-------------|
| **Potencia** | 80W constante | ✅ Correcto (cubre 70-90W real) |
| **Autonomía** | 48 horas | ✅ Correcto (estándar ITS) |
| **Tensión** | 24 VDC | ✅ Correcto (estándar industrial) |
| **Espacio** | 4RU o riel DIN | ✅ Necesario para procesador |
| **Comunicaciones** | Puerto Gigabit | ✅ Necesario para video ANPR |

#### PRECAUCIONES ADICIONALES:

1. **Distancia Física:** Verificar que la distancia entre PMV y punto de montaje del radar sea <50m para evitar caída de tensión en DC.

2. **Frontera de Responsabilidad:** El TDR debe ser **CLARO** en que:
   - PMV provee: Energía + Espacio + Comunicaciones
   - Radar provee: Equipo + Montaje + Integración

3. **Dimensionamiento del Panel Solar:**
   - PMV solo: ~100W panel
   - PMV + Radar: ~250W panel (2.5x más grande)
   - **Asegurar que el proveedor cotice el panel correcto**

---

### 6️⃣ INTEGRACIÓN CON SCADA

#### Observación:
El TDR exige "plena integración con el sistema SCADA".

#### Problema:
- No se conoce qué SCADA se contratará
- Integración con SCADA es responsabilidad del integrador de SCADA, no del proveedor de PMV

#### Solución Propuesta:
- Proveedor de PMV entrega sistema autónomo funcional
- Cumplimiento de protocolos estándar (NTCIP 1203)
- Documentación de API para integración futura

#### Texto Corregido:

```markdown
INTEROPERABILIDAD:
• Protocolo: NTCIP 1203 v03 (obligatorio)
• Comunicación: TCP/IP, puerto Ethernet RJ45
• Documentación completa de protocolo NTCIP
• Entrega de archivos MIBs (Management Information Base)
• Guía de integración con sistemas de terceros
• Software standalone para configuración y monitoreo local

RESPONSABILIDAD:
• Proveedor PMV: Sistema autónomo funcional + documentación + MIBs
• Integrador SCADA: Integración con SCADA (cuando se contrate)

CIBERSEGURIDAD:
• Controlador debe soportar SNMP v3 (encriptado)
• NO passwords por defecto (admin/admin)
• Acceso por certificados o autenticación robusta
```

---

### 7️⃣ ALIMENTACIÓN - OFERTA ALTERNATIVA AC

#### Observación:
El TDR solicita "oferta alternativa para alimentación AC".

#### Problema:
- **Alcance no claro:** ¿Es obligatorio cotizar ambas opciones (Solar + AC)?
- **Responsabilidad:** ¿Quién hace trámites con operador de red?
- **Costos:** Acometida AC + trámites + medidor + UPS puede ser más costoso que solar.

#### Aclaración Requerida:

```
1. ¿La oferta AC es obligatoria o opcional?
   a) Obligatorio cotizar ambas (Solar + AC)
   b) Opcional, solo si el oferente lo considera viable

2. ¿Quién asume costos de acometida AC?
   a) Incluido en precio PMV
   b) Ítem separado
   c) A cargo de la concesión

3. ¿Quién hace trámites con operador de red?
   a) Proveedor PMV
   b) Concesión
```

#### Redacción Propuesta:

```markdown
ALIMENTACIÓN ELÉCTRICA:

OPCIÓN BASE (OBLIGATORIA):
• Sistema fotovoltaico con autonomía 48 horas
• Dimensionado para:
  - Panel PMV
  - Switch industrial
  - RADAR ANPR (si aplica, 12 unidades)
• Baterías: GEL o AGM (no litio, más económico)
• Controlador de carga MPPT

OPCIÓN ALTERNATIVA (OPCIONAL):
• Acometida AC desde red eléctrica
• Incluye:
  - Trámites ante operador de red (a nombre de concesión)
  - Medidor de corriente
  - Tablero con protecciones (breakers, DPS)
  - UPS con autonomía 10 minutos
• Nota: Cotización separada, sujeta a disponibilidad de red en cada sitio
```

---

### 8️⃣ ESTRUCTURA Y SEGURIDAD PASIVA

#### Observación:
El TDR NO menciona seguridad pasiva (Defensa Metálica).

#### Problema CRÍTICO:
El **Manual de Señalización 2024** clasifica el pórtico como **"Objeto Contundente"**. Si no incluye la **Defensa Metálica** y la **Cinta Reflectiva Tipo IV** en el poste, **no le recibirán la obra**.

#### Texto para TDR:

```markdown
ESTRUCTURA Y SEGURIDAD PASIVA:

PÓRTICO:
• Tipo: Banderola (1 punto de apoyo en separador)
• Material: Acero galvanizado en caliente ASTM A123
• Diseño: Sismo-resistente (NSR-10, CCP-14)
• Cálculo de viento: 120 km/h mínimo
• Altura libre: Borde inferior a mínimo 5.50m sobre calzada
• Pasarela de mantenimiento o acceso seguro

SEGURIDAD PASIVA (OBLIGATORIA):
• Barrera de Contención Vehicular Certificada en base de pórtico
• Cinta Reflectiva Tipo IV en pata de pórtico
• Señalización preventiva según Manual 2024
• Cumplimiento: Manual de Señalización 2024, Sección 2.7.4

ACABADO:
• Galvanizado en caliente (NO pintura estética)
• Durabilidad: 20 años mínimo
• Mantenimiento: Mínimo
```

---

### 9️⃣ CERTIFICACIÓN RETIE - RIESGO CRÍTICO

#### Observación:
El TDR exige certificación RETIE "bajo cuenta y riesgo del instalador".

#### Problema CRÍTICO:
Sin estudio de suelos y condiciones pre-existentes conocidas, **NO es posible garantizar certificación RETIE**.

#### Riesgos Identificados:

| Riesgo | Costo Estimado | Observación |
|:-------|:---------------|:------------|
| **Estudio de resistividad** | $300-500 por sitio | 25 sitios = $7,500-12,500 |
| **SPT complejo** (suelo >100 Ω·m) | $2,000-15,000 por sitio | Riesgo: $50,000-375,000 |
| **Certificación ONAC** | $1,500-3,000 por sitio | 25 sitios = $37,500-75,000 |
| **TOTAL RIESGO** | **$95,000-462,500 USD** | No presupuestado |

#### Preguntas URGENTES:

```
1. ¿Quién realiza el estudio de resistividad del suelo?
   a) ¿Proveedor de PMV?
   b) ¿Concesión como información de entrada?
   c) ¿Ítem adicional?

2. ¿Quién paga la adecuación del SPT si resistividad >100 Ω·m?
   a) ¿Incluido en precio PMV?
   b) ¿Ítem adicional según condiciones reales?
   c) ¿Concesión provee SPT pre-existente?

3. ¿Qué tipo de certificación se requiere?
   a) Declaración de Conformidad del instalador RETIE (sin costo adicional)
   b) Certificación de Organismo Acreditado ONAC ($1,500-3,000/sitio)
```

#### Redacción Propuesta:

```markdown
CERTIFICACIÓN RETIE:

RESPONSABILIDADES:
1. Proveedor de PMV:
   • Instalación conforme a RETIE 2024 y NTC 2050
   • Conexión a SPT existente en cada sitio
   • Declaración de Conformidad RETIE (incluida en precio)
   • Tableros certificados (no ensamblaje en sitio)
   • DPS coordinados y evaluación de riesgo

2. EPC (Condiciones de Entrada):
   • Proveer estudio de resistividad del suelo
   • Proveer SPT existente con resistencia ≤25 Ω
   • Si SPT no cumple, adecuación se paga como ítem adicional

CONDICIONES ESPECIALES:
• Si se detectan condiciones pre-existentes que impiden cumplir RETIE,
  se notificará y acordará alcance/costo de adecuación.
• Este es un riesgo al no contar con ingeniería de detalle.
```

---

## 💰 RESUMEN DE IMPACTO ECONÓMICO

### Presupuesto Correcto (Según T05):

| Subsistema | Cantidad | Unitario | Total |
|:-----------|:---------|:---------|:------|
| **PMV ITS (Vía)** | **29** | **$80,000*** | **$2,320,000** |
| *-- Panel Full Matrix P20* | 29 | $42,000 | $1,218,000 |
| *-- Pórtico y Civil* | 29 | $35,000 | $1,015,000 |
| *-- Defensa Metálica* | 29 | $3,000 | $87,000 |
| **PMV Peaje (Carril)** | **14** | **$5,000** | **$70,000** |
| *-- Panel Tarifario P10* | 14 | $5,000 | $70,000 |
| **TOTAL** | **43** | - | **$2,390,000** |

*\\*Promedio Panel + Estructura + Seguridad Pasiva*

### Ahorros por Correcciones:

| Optimización | Ahorro Unitario | Cantidad | Ahorro Total |
|:-------------|:----------------|:---------|:-------------|
| Pixel Pitch P20 vs P10 | $18,000 | 29 | $522,000 |
| Altura 400mm vs 450mm | $2,000 | 29 | $58,000 |
| Protocolo NTCIP (sin licencias) | - | Sistema | $20,000 |
| Segregación ITS vs Peaje | - | Sistema | $15,000 |
| **SUBTOTAL AHORROS** | - | - | **$615,000** |

**Nota:** El ahorro real depende de cuánto sobre-especifique el TDR original. Estimación conservadora: **$100,000 - $150,000 USD**

### Riesgos Eliminados:

| Riesgo | Monto |
|:-------|:------|
| Certificación RETIE sin condiciones claras | $95,000 - $462,500 |
| Vendor Lock-in (protocolo propietario) | Riesgo operativo perpetuo |
| Rechazo por norma incorrecta (NEMA vs UNE) | Riesgo contractual |

---

## ✅ RECOMENDACIONES FINALES PARA EL TDR

### Copie y pegue estas instrucciones para devolver el documento al asesor:

1. **RADAR ANPR (CRÍTICO - PRIORIDAD #1):** "**ELIMINAR** el requerimiento de suministro de Radares ANPR dentro de este proceso de compra de PMV. Los radares son objeto de otro proceso de compra (T04-ETD) con presupuesto ya asignado ($1.2M USD). Mezclar PMV con RADAR vicia el proceso de compra. El alcance PMV se limita a dejar preparada la infraestructura (punto eléctrico 80W y puerto switch disponible)."

2. **Pixel Pitch:** "Definir Pitch 20mm (P20) para los 29 paneles de vía y Pitch 10mm (P10) para los 14 tarifarios de peaje. Eliminar exigencia generalizada de P10."

3. **Norma Rectora:** "Reemplazar normas genéricas por cumplimiento estricto de **UNE-EN 12966 (Clases L3/R2/B6)** según Manual de Señalización 2024. Eliminar referencias a NEMA TS-4 y normas no vigentes en Colombia."

4. **Interoperabilidad:** "Exigir protocolo **NTCIP 1203 v03** y entrega de archivos **MIBs**. Rechazar protocolos propietarios que obliguen a usar software del fabricante para operación diaria."

5. **Obra Civil:** "Incluir explícitamente el suministro e instalación de **Barreras de Contención Vehicular Certificadas** para la protección de la base del pórtico, conforme al Manual 2024."

6. **Altura de Carácter:** "Ajustar a **400mm mínimo** (no 450mm) según Manual de Señalización 2024 para velocidades >90km/h."

7. **Distancia de Lectura:** "Eliminar especificación de distancia mínima (180m). La altura de carácter (400mm) ya garantiza legibilidad."

8. **Segregación:** "Separar obligatoriamente **29 PMV ITS (WBS 3.01)** de **14 PMV Peaje (WBS 5.01)**. No mezclar presupuestos."

9. **Gabinetes:** "Eliminar normas UNE de gabinetes (UNE 4826, UNE-EN 2409, UNE 20-501-2-34). Mantener solo **IP65 + RETIE 2024**."

10. **RETIE:** "Definir responsabilidades: EPC provee estudio de suelos y SPT. Proveedor PMV hace instalación conforme RETIE y emite Declaración de Conformidad."

11. **Ciberseguridad:** "Exigir que el controlador del PMV soporte **SNMP v3** (encriptado) y no tenga passwords por defecto (admin/admin)."

12. **Estructura:** "Galvanizado ASTM A123 (no pintura estética). Incluir pasarela de mantenimiento o acceso seguro."

---

## 📎 ANEXOS

Los siguientes documentos de soporte están disponibles:

1. **Manual de Señalización Vial 2024** - Capítulo 2.7 (PMV)
2. **Norma UNE-EN 12966** - Clases L3/R2/B6
3. **Resolución IP/REV** - Art 2.9.9 (Paneles Tarifarios)
4. **T04_SPEC_PMV_VMS_v1.0.md** - Especificaciones técnicas validadas
5. **T05_Ingenieria_Detalle_PMV_v1.0.md** - Ingeniería de detalle
6. **DICTAMEN_JURIDICO_PMV_v1.0.md** - Dictamen jurídico-técnico

---

**Preparado por:** Ingeniería TM01  
**Metodología:** Punto 42 v3.0 (Contract-First Architecture) + Auditoría Forense  
**Estado:** ✅ LISTO PARA ENVÍO AL ASESOR EXTERNO

---

**CONCLUSIÓN:** El TDR debe dejar de parecer una lista de deseos de tecnología y convertirse en una **especificación de cumplimiento normativo**. Use el documento **T04_SPEC_PMV_VMS_v1.0.md** como la "Biblia" para copiar y pegar especificaciones correctas.

**NOTA IMPORTANTE:** Este documento consolida todas las observaciones identificadas durante la revisión técnica y contractual del TDR de PMV. Se requiere respuesta del asesor externo y aclaraciones de la concesión antes de proceder a licitación.
