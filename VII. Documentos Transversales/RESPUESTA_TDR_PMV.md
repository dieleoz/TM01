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

## 1️⃣-B. RIESGO DE INCREMENTO DE CANTIDADES POR MANUAL 2024

### **Observación Crítica:**

El TDR del asesor no considera que la aplicación del **Manual de Señalización Vial 2024** (que sustituye al Manual 2015 vigente a la firma del contrato) **incrementa significativamente** la cantidad de PMV requeridos debido a nuevos criterios de localización obligatorios.

### **Problema Identificado:**

1. **Alcance Contractual Base (AT1):** Mínimo 25 PMV en vía, separación máxima 20 km
2. **Norma Vigente a la Firma:** Manual de Señalización Vial 2015
3. **Norma Actual:** Manual de Señalización Vial 2024 (Resolución 20243040001135)
4. **Impacto:** El Manual 2024 introduce **nuevos criterios de localización** (Tabla 2-23) que exigen PMV adicionales

### **Análisis de Incremento por Manual 2024:**

#### **Nuevos Criterios Obligatorios (Tabla 2-23 Manual 2024):**

| Criterio Manual 2024 | Requisito Técnico | Ubicaciones en TM01 | PMV Adicionales |
|:---------------------|:------------------|:--------------------|:----------------|
| **Entradas a Municipios** | "Al menos 1 km antes del desvío" | Puerto Boyacá, Puerto Berrío, San Alberto, La Dorada | +4 a +6 |
| **Variantes** | "Indicar dirección/desvío" | Variante Puerto Salgar, Variante La Dorada, El Trique, Dos y Medio, San Pedro de la Paz | +2 a +4 |
| **Intercambiadores** | "Mínimo 500m antes de la infraestructura" | Intercambiador Caño Alegre, Intercambiador La Lizama | +2 |
| **Túneles** | "Mínimo uno 300m antes de la entrada por cada sentido" | NO APLICA (Corredor a cielo abierto) | 0 |
| **Plazas de Peaje/Pesaje** | "Máximo 5 km antes de cada una" | ✅ YA CUBIERTO en los 25 contractuales | 0 |

**Total PMV requeridos si se aplica Manual 2024:** **31 a 35 Unidades**  
**Diferencia vs Alcance Contractual:** **+6 a +10 PMV**

### **Escenarios de Aplicación:**

#### **ESCENARIO 1: Cumplimiento Contractual Base (25 PMV)**

**Norma aplicable:** Manual 2015 (vigente a la firma)  
**Distribución:**
- 4 PMV en Peajes (Zambito, Aguas Negras - aproximación Norte/Sur)
- 2 PMV en Pesajes (La Lizama, Río Ermitaño)
- 19 PMV en Vía Abierta (distribución cada 15-18 km alternando sentidos)

**Estado:** ✅ Cumple AT1 (mínimo 25, separación máx 20 km)

---

#### **ESCENARIO 2: Aplicación Manual 2024 (31-35 PMV)**

**Norma aplicable:** Manual 2024 (Tabla 2-23)  
**Distribución:**
- **25 PMV Base** (Escenario 1)
- **+4-6 PMV** en Entradas a Municipios:
  - Puerto Boyacá (1 km antes del desvío)
  - Puerto Berrío (1 km antes del desvío)
  - San Alberto (1 km antes del desvío)
  - La Dorada (1 km antes del desvío)
  - Otros accesos municipales según geometría
- **+2-4 PMV** en Variantes:
  - Variante Puerto Salgar
  - Variante La Dorada
  - El Trique, Dos y Medio, San Pedro de la Paz (según aplique)
- **+2 PMV** en Intercambiadores:
  - Intercambiador Caño Alegre (500m antes)
  - Intercambiador La Lizama (500m antes)

**Estado:** ⚠️ Requiere definición contractual y presupuestal

---

### **Análisis de Riesgo Financiero:**


#### **Costo Unitario PMV (Estimado):**

| Componente | Costo Unitario |
|:-----------|:---------------|
| Panel LED (RGB + Ámbar, P20-P25) | $18,000 USD |
| Estructura (Pórtico completo) | $38,000 USD |
| Sistema Solar TIPO A (48h autonomía) | $12,000 USD |
| Obra civil (Cimentación + SPT) | $12,000 USD |
| **Total por PMV (con Pórtico)** | **$80,000 USD** |

> **Nota:** Si se utiliza estructura tipo banderola en lugar de pórtico, el costo unitario se reduce a ~$44,000 USD.

#### **Sobrecosto Total por Aplicación Manual 2024:**

| Escenario | PMV Adicionales | Costo Total (Pórtico) | Costo Total (Banderola) |
|:----------|:----------------|:----------------------|:------------------------|
| **Conservador** (Solo entradas municipales) | 8 unidades | **$640,000 USD** | **$352,000 USD** |
| **Medio** (Municipios + Variantes principales) | 10 unidades | **$800,000 USD** | **$440,000 USD** |
| **Completo** (Tabla 2-23 al 100%) | 12-14 unidades | **$960,000 - $1,120,000 USD** | **$528,000 - $616,000 USD** |

**Promedio de riesgo:** **~10 PMV adicionales = $800,000 USD** (con pórtico) o **$440,000 USD** (con banderola)



---

### **Estrategia Recomendada:**

#### **FASE 1: Cumplimiento Base (25 PMV)**

1. Diseñar e instalar los **25 PMV contractuales** según AT1 + Manual 2015
2. Ubicación: Peajes, Pesajes y Vía Abierta (cada 15-18 km)
3. ✅ Cumple obligación contractual mínima

#### **FASE 2: Gestión del Riesgo Manual 2024**

1. **Solicitar aclaración formal a ANI:**
   - ¿Se requiere aplicación del Manual 2024 para este proyecto?
   - ¿Se reconocerá el sobrecosto de los PMV adicionales?
   - Mecanismo de pago: Subcuenta de Excedentes ANI o ajuste presupuestal

2. **Marcar "sitios candidatos" en planos de ingeniería:**
   - Identificar ubicaciones de los 6-10 PMV adicionales
   - Estado: "Proyección Fase 2 - Sujeto a Aprobación Presupuestal ANI"

3. **Documentar sobrecosto:**
   - Cuantificar costo de los PMV adicionales ($264K-440K USD)
   - Preparar justificación técnica (Tabla 2-23 Manual 2024)

---

### **Conclusión:**

#### **Riesgo Identificado:**

Si la Interventoría exige aplicación taxativa del Manual 2024 sin reconocimiento de sobrecosto, el Concesionario enfrentaría:

- ❌ **Incumplimiento contractual** (si no instala los PMV adicionales)
- ❌ **Sobrecosto no compensado de $440K-$960K USD** (si los instala sin aprobación)

#### **Recomendación:**

1. ✅ Instalar **29 PMV base** (cumple AT1 + Manual 2015: 25 vía + 4 aproximación peajes)
2. ✅ Solicitar aclaración formal a ANI sobre aplicación del Manual 2024
3. ✅ Documentar y valorar el sobrecosto de los **~10 PMV adicionales** ($800K USD promedio)
4. ✅ Marcar ubicaciones adicionales en planos como **"Fase 2 - Sujeto a Aprobación Presupuestal ANI"**
5. ✅ Proteger el presupuesto base del proyecto

#### **Justificación Técnica:**

- El AT1 establece "Manual de Señalización Vial 2015 **o la norma que lo sustituya**"
- El Manual 2024 introduce criterios de localización más exigentes (Tabla 2-23)
- La diferencia entre ambas normas representa **+10 a 14 PMV adicionales**
- Este incremento no estaba contemplado en el alcance original de 29 unidades
- Se requiere definición contractual clara sobre qué norma aplica y quién asume el sobrecosto

#### **Alcance Condicionado (Texto Propuesto para TDR):**

> *"El alcance base del contrato es el suministro e instalación de **29 PMV** distribuidos para cumplir la cobertura kilométrica del Apéndice Técnico 1 (25 PMV en vía con separación máxima de 20 km + 4 PMV en aproximación a peajes).*
> 
> *Cualquier cantidad adicional derivada de la aplicación de criterios específicos del Manual de Señalización Vial 2024 (como señalización de accesos a municipios, variantes específicas o refuerzo en intercambiadores) que exceda la cantidad base, será tratada como una **Obra Adicional** sujeta a la aprobación de recursos por parte de la ANI, dado que constituye una obligación sobreviniente al alcance original del contrato."*



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

## � OBSERVACIONES ADICIONALES CRÍTICAS

### 🔟 NORMAS APLICABLES - LIMPIEZA DE RUIDO NORMATIVO

#### Observación:
El TDR lista normas "Internacionales" genéricas (ISO, UIT, DIN, EIA, IEC, IEEE, ANSI/NEMA) sin especificar cuáles aplican a PMV.

#### ERROR CRÍTICO - NORMA FALTANTE:

> **ALERTA:** El listado del asesor **NO menciona la norma rectora** de los paneles en Colombia: **UNE-EN 12966**

**Por qué es crítico:**
- El Manual de Señalización Vial 2024 (Cap. 2.7.1) adopta esta norma europea taxativamente
- Sin esta norma, pueden vender paneles "industriales" o "publicitarios" sin óptica para carreteras
- Riesgo: Interventoría rechaza paneles sin clases L3/R2/B6

#### NORMAS A ELIMINAR (Ruido):

| Norma | Por qué ELIMINAR |
|:------|:-----------------|
| **NTC 2031** | Regula "Instrumentos de pesaje" (básculas). Error de copy-paste |
| **Resolución 77506/2016 (SIC)** | Metrología para balanzas. Un PMV no pesa nada |
| **DIN (Alemanas)** | Genera ruido. La norma europea unificada es UNE-EN |

#### ESTRATEGIA SMART CAPEX - Reportes de Ensayo vs Certificación Completa:

**Problema:** Pedir Certificado de Conformidad UNE-EN 12966 completo (€50,000) cierra competencia a integradores locales.

**Solución:** Aceptar **Reportes de Ensayo de Laboratorio** (Type Test Reports) de los módulos LED.

#### TEXTO CORREGIDO PARA EL TDR:

```markdown
A. NORMAS Y REGLAMENTOS APLICABLES

El diseño, suministro e instalación de los PMV deberá cumplir con:

1. Manual de Señalización Vial (MinTransporte 2024): Capítulos 2.7 y 9.3

2. Requisito de Conformidad Óptica (Norma UNE-EN 12966):
   
   El Oferente deberá demostrar el cumplimiento de las Clases L3 
   (Luminancia), R2 (Contraste) y B6 (Ancho de Haz) mediante:
   
   a) Reportes de Ensayo de Tipo (Type Test Reports) vigentes, emitidos 
      por laboratorio independiente con acreditación internacional 
      (ILAC/ENAC), realizados sobre la referencia exacta del Módulo LED 
      ofertado
   
   b) Declaración de Conformidad del Fabricante (ISO/IEC 17050) 
      certificando que los módulos instalados corresponden técnica y 
      ópticamente a los ensayados en el reporte adjunto

3. Protocolo de Comunicaciones: NTCIP 1203 v03 (Object Definitions for 
   Dynamic Message Signs) para integración nativa

4. Reglamento Eléctrico: RETIE 2024 (Resolución 40117 MinEnergía)
   • Declaración de Conformidad del Proveedor (Art 4.2.1 RETIE 2024)
   • Componentes certificados (Tableros, Cables, DPS)

5. Código Eléctrico: NTC 2050 (Segunda Actualización)

6. Estructuras: NSR-10 y CCP-14 para pórticos y cimentaciones

7. Grado de Protección: IEC 60529 (IP55 gabinete, IP66 módulos LED)
```

#### Beneficio:

- ✅ Abre competencia a integradores locales con módulos LED chinos/americanos de calidad
- ✅ Ahorro: ~€50,000 en certificación europea innecesaria
- ✅ Cumple Manual 2024 (demuestra desempeño técnico L3/R2)
- ✅ Elimina "basura normativa" (NTC 2031, Res. 77506, DIN)

---

### 1️⃣1️⃣ DOCUMENTACIÓN AS-BUILT - ALCANCE ACOTADO

#### Observación:
El TDR pide documentación As-Built genérica sin definir alcance, generando riesgo de sobrecostos.

#### RIESGOS IDENTIFICADOS:

| Riesgo | Problema | Solución |
|:-------|:---------|:---------|
| **Levantamiento topográfico** | Puede interpretarse como topografía completa de vía | Acotar a "coordenadas GPS de puntos instalados" |
| **ONAC/Metrología** | PMV no requiere certificación metrológica (no es WIM) | Eliminar referencia a ONAC |
| **Base de datos SICC** | Software SICC es del concesionario, no del contratista | Entregar solo "listado estructurado" (Excel/Shapefile) |
| **Vendor Lock-in** | Sin MIBs/API, SCADA queda secuestrado por marca PMV | Exigir entrega de MIBs y SDK/API |

#### TEXTO CORREGIDO PARA EL TDR:

```markdown
3. DOCUMENTACIÓN AS-BUILT Y REQUISITOS DE RECIBO (PMV)

El Contratista deberá entregar la documentación final "Como Construido" 
(As-Built) como requisito para el Acta de Recibo Final:

A. INGENIERÍA Y PLANOS:
• Planos As-Built (DWG/PDF) de ubicación exacta (Abscisa/Coordenadas) 
  de cada pórtico
• Planos Eléctricos: Diagramas unifilares evidenciando capacidad de 
  reserva (borneras y potencia) para futuros equipos ETD/Radar
• Memorias de cálculo estructural firmadas por ingeniero calculista

B. INTEGRACIÓN Y SOFTWARE (NTCIP):
• Archivos MIBs (Management Information Base) específicos del fabricante 
  para protocolo NTCIP 1203 v03
• SDK, API, librerías (.jar/.dll) o documentación del protocolo TCP/IP 
  que permita al integrador SCADA comandar el panel sin software 
  propietario
• Software de diagnóstico y configuración local (licencia perpetua)

C. CERTIFICACIÓN NORMATIVA:
• Dictamen de Inspección RETIE (instalación eléctrica de uso final)
• Reportes de Ensayo de Laboratorio del Módulo LED (Clases L3/R2/B6)
• Declaración de Conformidad del Fabricante (ISO/IEC 17050)
• Certificados de componentes eléctricos (Tableros, Cables, DPS)
• NOTA: NO aplica certificación ONAC de metrología para PMV

D. INFORMACIÓN GEOGRÁFICA (ALCANCE ACOTADO):
• Listado digital (Excel) con coordenadas GPS (WGS84) de cada pórtico 
  y gabinete instalado, tomadas durante el montaje
• Archivo Shapefile (.shp): Capa de puntos correspondiente ÚNICAMENTE 
  a los activos instalados
• NOTA: NO se requiere levantamiento topográfico de la vía ni 
  cartografía base. Solo coordenadas de puntos instalados.

E. INVENTARIO DE ACTIVOS:
• Tabla digital (Excel) con: ID Sitio, Coordenadas, Marca, Modelo, 
  Serial, Fecha Instalación
• Registro fotográfico de instalación final
• NOTA: El software SICC/GMAO es responsabilidad del Concesionario. 
  El contratista solo entrega el listado estructurado.
```

#### Beneficio:

- ✅ Elimina riesgo de cobro por levantamiento topográfico (~$15K-30K USD)
- ✅ Previene vendor lock-in con entrega obligatoria de MIBs/API
- ✅ Aclara que PMV no requiere ONAC (no es equipo de metrología)
- ✅ Define que .shp es solo "puntos instalados" (5 minutos de trabajo)
- ✅ Cumple requisito contractual de As-Built para liberar pago

---

## 12. ESTRUCTURA DE SOPORTE Y ACCESIBILIDAD

### **Observación:**

El TDR especifica "Estructura de banderola" exclusivamente, lo cual limita la competencia y puede resultar en sobrecostos estructurales, especialmente considerando la carga adicional del sistema fotovoltaico.

### **Problema Identificado:**

1. **Limitación técnica:** Banderola (cantilever) genera momento de torsión elevado en un solo punto de anclaje
2. **Sobrecosto estructural:** Requiere tubo vertical muy grueso y zapata de cimentación grande
3. **Carga solar:** Paneles fotovoltaicos actúan como "vela" aumentando fuerza de viento
4. **Término "visitable":** Sin definición clara genera incertidumbre en cotizaciones

### **Corrección Técnica:**

```markdown
TIPOLOGÍA DE LA ESTRUCTURA DE SOPORTE

El Proponente podrá ofertar diseño estructural tipo:
• Pórtico (Dos apoyos), o
• Banderola/Semipórtico (Un apoyo en voladizo)

Seleccionando la opción más eficiente en relación costo-beneficio.

REQUISITOS OBLIGATORIOS:

1. Cargas de Diseño:
   La estructura deberá diseñarse para soportar:
   • Peso y área de exposición al viento del Panel LED (PMV)
   • Carga adicional y efecto de vela del Sistema Fotovoltaico
   • Gabinetes y equipos auxiliares instalados sobre ella

2. Normativa:
   • AASHTO LRFD (Specifications for Structural Supports for Highway Signs)
   • NSR-10 (Norma Sismo Resistente Colombiana)

3. Ubicación:
   • Pórtico: Apoyo en laterales de vía o separador central y lateral
   • Banderola: Anclaje en separador central o lateral derecho

4. Gálibo:
   • Altura libre mínima: 5.50m sobre parte más alta de calzada
   • Cumplimiento: Manual de Señalización Vial 2024

5. Protección:
   • Barreras de Contención (Defensas Metálicas) certificadas
   • Protección de todos los elementos verticales en zona despejada
   • Cumplimiento: Manual de Señalización Vial 2024

ACCESIBILIDAD Y MANTENIMIENTO:

Diseño para mantenimiento seguro según Res. 4272/2021 (Trabajo en Alturas).

Opciones aceptadas:

A. Acceso Frontal/Trasero con Manlift:
   • Puertas de acceso retenidas
   • Puntos de anclaje certificados para línea de vida
   • Operables desde camión canasta (Manlift)
   • NO requiere escalar la estructura

B. Acceso con Pasarela (Catwalk) - OPCIONAL:
   • Pasarela trasera metálica con barandas de seguridad
   • Línea de vida rígida o flexible
   • Escalera de acceso con jaula guarda-hombre
   • Permite mantenimiento sin vehículos de elevación

NOTA: NO se requiere estructura visitable interiormente (Walk-in)
```

#### Justificación:

- ✅ Permite competencia entre diseños estructurales eficientes
- ✅ Pórtico distribuye carga en dos patas (perfiles más livianos, zapatas más pequeñas)
- ✅ Elimina incertidumbre del término "visitable" sin especificación
- ✅ Define claramente métodos de acceso seguro para mantenimiento
- ✅ Cumple normativa colombiana (NSR-10) e internacional (AASHTO)

---

## 13. SISTEMA DE ENERGÍA FOTOVOLTAICA

### **Observación:**

El TDR no segrega los requerimientos de energía para sitios con y sin radar ANPR, ni especifica claramente la autonomía obligatoria según el Manual 2024.

### **Problema Identificado:**

1. **Falta de segregación:** No diferencia carga base vs carga con radar (80W adicionales)
2. **Autonomía no especificada:** Manual 2024 exige 48 horas obligatorias
3. **Voltaje no estandarizado:** Permite múltiples voltajes (12V, 24V, 36V)
4. **Alternativa AC sin estructura:** Oferta alternativa de red comercial sin especificaciones claras

### **Corrección Técnica:**

```markdown
SISTEMA DE ENERGÍA FOTOVOLTAICA

1. TENSIÓN DE OPERACIÓN Y AUTONOMÍA

• Tensión del Sistema: 24 VDC nominal (banco de baterías y distribución 
  interna del gabinete)

• Autonomía Normativa: 48 horas de operación continua sin radiación solar
  - Cumplimiento: Manual de Señalización Vial 2024 (Numeral 2.7.6)
  - Justificación: Garantiza operación durante 2 días completos sin sol

2. DIMENSIONAMIENTO DE LA CARGA (TIPOLOGÍAS)

El Oferente deberá considerar dos configuraciones según ubicación:

TIPO A - PMV Estándar (Sin Radar) - Cantidad: 17 Unidades
  • Panel LED (brillo diurno promedio)
  • Controlador PMV
  • Switch Industrial: 15W constante
  • Módem/Comunicaciones

TIPO B - PMV Reforzado (Con Radar) - Cantidad: 12 Unidades
  • Incluye toda la carga del TIPO A
  • Carga Adicional Obligatoria: Equipo de detección (Radar/ETD) 
    con consumo estimado de 80W continuos (24/7)
  • Banco de baterías deberá tener capacidad adicional (Ah) para 
    sostener esta carga extra durante las 48 horas de autonomía

  Cálculo carga adicional:
  - 80W × 48h = 3,840 Wh adicionales
  - A 24 VDC: 160 Ah consumo real
  - Considerando descarga máxima 50%: ~320 Ah adicionales
  - Equivalente: ~2 baterías de 200Ah extra por gabinete

3. INTERFAZ DE ALIMENTACIÓN PARA EQUIPOS DE TERCEROS (RADAR)

• El Contratista PMV entregará en los 12 sitios reforzados una bornera 
  de alimentación protegida a 24 VDC

• Delimitación de Responsabilidad: Si el equipo de detección (Radar/ETD) 
  requiere voltaje diferente (12V, 36V, 48V o PoE), el suministro e 
  instalación del convertidor DC-DC (elevador/reductor) o inyector será 
  responsabilidad EXCLUSIVA del proveedor del Radar/ETD, quien deberá 
  conectarse a la bornera de 24 VDC disponible

4. COMPONENTES MÍNIMOS

• Paneles solares policristalinos o monocristalinos
• Controlador de carga MPPT
• Banco de baterías de ciclo profundo (Gel o AGM)
• Protecciones: Fusibles, DPS, desconectadores
• Estructura de montaje galvanizada
• Cableado dimensionado para 24 VDC

5. OFERTA ALTERNATIVA: ENERGÍA DE RED (AC)

El Oferente deberá cotizar como alternativa:

• Fuentes de poder industriales conmutadas (Switching Power Supply)
• Rango de Entrada: 100 VAC a 240 VAC (±10%) sin selectores manuales
  - Justificación: Soporta fluctuaciones de tensión en zonas rurales
• Protección: DPS Clase II en entrada AC
• UPS Online: 10 minutos respaldo mínimo
• Acometida eléctrica y trámites ante operador de red
• Medidor de corriente a nombre de la Concesionaria
```

#### Justificación:

- ✅ Cumple Manual 2024 (48h autonomía obligatoria)
- ✅ Ahorro ~$25K-30K USD por segregación TIPO A/B
- ✅ Estandarización 24 VDC reduce calibre de cables y simplifica mantenimiento
- ✅ Responsabilidad clara sobre convertidor DC-DC (proveedor radar)
- ✅ Alternativa AC permite evaluación técnico-económica real

---

## 14. ESPECIFICACIONES DE GABINETES

### **Observación:**

El TDR copia normas españolas (UNE) no exigibles en Colombia y especifica cargas estructurales inadecuadas (400 kg para gabinete de pared).

### **Problema Identificado:**

1. **Normas extranjeras:** UNE 4826, UNE-EN 2409, UNE 20-501, UNE 20-550, UNE 20460 no son exigibles en Colombia
2. **Sobreespecificación:** 400 kg de carga estática para gabinete de pared (es para racks de servidores)
3. **Falta RETIE:** No especifica cumplimiento del Reglamento Técnico de Instalaciones Eléctricas
4. **Material no definido:** Permite materiales inadecuados para clima tropical húmedo

### **Corrección Técnica:**

```markdown
ESPECIFICACIONES TÉCNICAS DE GABINETES Y ENCERRAMIENTOS

Los gabinetes para alojamiento de equipos de control, comunicaciones y 
energía deberán cumplir con RETIE 2024 (Resolución 40117) y las siguientes 
características:

1. ESPECIFICACIONES AMBIENTALES Y CONSTRUCTIVAS

• Material: Aluminio marino (Serie 5052/6061) de mínimo 2.0 mm de espesor 
  o Acero Inoxidable (AISI 304/316) con acabado en pintura electrostática 
  (Powder Coating)

• Color: RAL 7035 (Gris claro) o similar que minimice absorción térmica solar

• Grado de Protección: Mínimo IP65 (Hermético al polvo y chorros de agua) 
  según IEC 60529 o equivalente NEMA 4X

• Resistencia a la Corrosión: Ambiente tropical húmedo
  - Prueba de cámara salina (Salt Spray): Mínimo 400 horas según ASTM B117
  - Cumplimiento: RETIE para ambientes exteriores

• Protección Mecánica: Grado IK10 contra impactos mecánicos externos 
  (Antivandálico)

2. ESPECIFICACIONES MECÁNICAS Y DE MONTAJE

• Tipo de Montaje: Fijación segura a estructura metálica mediante 
  abrazaderas de acero inoxidable o pernos pasantes, sin comprometer 
  estanqueidad (IP65)

• Capacidad de Carga: Dimensionado para soportar peso de baterías 
  (si van alojadas dentro), controlador y equipos de comunicaciones, 
  con factor de seguridad de 1.5

• Gestión Térmica: Ventilación forzada con filtros y termostato, o 
  intercambio de calor aire-aire, garantizando que temperatura interna 
  no supere límites operativos de equipos bajo sol directo

3. ESPECIFICACIONES ELÉCTRICAS (CUMPLIMIENTO RETIE)

• Seguridad: Todas las partes metálicas expuestas y puertas equipotencializadas 
  a barra de tierra del gabinete

• Protección contra Contacto: Contratapa o mandil interno (dead-front) que 
  impida acceso directo a partes energizadas al abrir puerta principal

• Certificación: Tablero ensamblado o gabinete vacío con Certificado de 
  Conformidad de Producto (RETIE) expedido por organismo acreditado por ONAC 
  bajo norma aplicable (IEC 61439 o NTC 2050)

4. EQUIPAMIENTO INTERNO

• Riel DIN para montaje de equipos
• Iluminación LED interna activada por puerta
• Toma de servicio (GFCI) para mantenimiento (laptop)
• Espacio de reserva (20%) para futuros equipos
• Prensestopas (glándulas) IP68 en base para entrada de fibra y energía

5. SISTEMA DE GESTIÓN AMBIENTAL

Para garantizar vida útil de electrónica en condiciones climáticas de la zona 
(Alta temperatura y humedad relativa >90%):

A. Gestión Térmica Activa:
   • Ventilación forzada controlada por termostato
   • Dimensionada para disipar carga térmica de LEDs + radiación solar
   • Mantiene temperatura interna en rango seguro

B. Control de Condensación:
   • Sistema anti-condensación (resistencia calefactora)
   • Controlado por higrostato o termostato diferencial
   • Evita formación de humedad sobre tarjetas electrónicas

C. Facilidades de Mantenimiento (RETIE):
   • Iluminación interna LED tipo regleta
   • Interruptor de puerta o manual
   • Toma eléctrica de servicio (GFCI) para equipos de diagnóstico

6. CONDICIONES AMBIENTALES DE OPERACIÓN

Clase T1 según UNE-EN 12966:

• Temperatura Ambiente: -10°C a +60°C
• Humedad Relativa: 10% a 95% (sin condensación)

Justificación:
- Magdalena Medio: Humedad nocturna llega a saturación (95%)
- Reducir especificación causaría fallas por condensación
- NO afecta diseño estructural del pórtico (solo calidad de empaques)
```

#### Justificación:

- ✅ Elimina normas UNE no exigibles en Colombia
- ✅ Especifica materiales adecuados para clima tropical húmedo
- ✅ Cumple RETIE 2024 (Resolución 40117)
- ✅ Define gestión térmica y anti-condensación (protege inversión en LEDs)
- ✅ Validación: 95% humedad es obligatoria para zona del proyecto

---

## 15. SISTEMA DE PUESTA A TIERRA (SPT)

### **Observación:**

El TDR especifica "tierra eléctrica acorde con RETIE" sin definir alcance base, generando riesgo de ofertas infladas o reclamaciones futuras por "condiciones imprevistas del terreno".

### **Problema Identificado:**

1. **Alcance indefinido:** No especifica configuración mínima del SPT
2. **Riesgo financiero:** Contratista cobra "peor escenario" o genera reclamaciones posteriores
3. **Falta de precios unitarios:** No hay mecanismo para pagar mejoramiento de suelo
4. **Certificación no clara:** No especifica tipo de certificación RETIE requerida

### **Corrección Técnica:**

```markdown
SISTEMA DE PUESTA A TIERRA (SPT) Y PROTECCIÓN ATMOSFÉRICA

1. ALCANCE BASE (Incluir en valor global de oferta)

El Proponente deberá incluir en su oferta básica el suministro e instalación 
de un Sistema de Puesta a Tierra (SPT) estándar para cada PMV, compuesto 
como mínimo por:

• Configuración: Malla tipo "Delta" o "Contrapeso" de tres (3) electrodos

• Materiales:
  - Tres (3) varillas de Copperweld certificadas (mínimo 2.4m x 5/8")
  - Cable de cobre desnudo 2/0 AWG para interconexión
  - Soldadura exotérmica para todas las uniones enterradas
    (NO se aceptan conectores mecánicos bajo suelo según RETIE 3.12.2.1)

• Caja de Inspección: Suministro de caja de inspección (30x30cm) con tapa 
  removible para medición y mantenimiento

2. OBJETIVO DE DESEMPEÑO (Criterio de Aceptación)

El sistema deberá garantizar una resistencia de puesta a tierra menor o igual 
a 10 Ohmios (R≤10Ω):

• Requisito obligatorio para protección de equipos electrónicos sensibles
• Protección contra descargas atmosféricas
• Cumplimiento: RETIE Art. 3.12.3

3. MANEJO DE SUELOS DE ALTA RESISTIVIDAD (Riesgo Compartido)

El Oferente deberá realizar medición de resistividad del terreno antes de 
instalación.

Si con el "Alcance Base" (3 varillas + tratamiento estándar) NO se logra 
resistencia de 10Ω debido a condiciones geológicas adversas (roca, arena seca):

• Contratista presentará diseño de mejoramiento a Interventoría
• Mecanismo de Pago Adicional: Materiales y obra extra necesarios se pagarán 
  a Precios Unitarios definidos en lista de "Ítems de Mejoramiento de SPT", 
  previa aprobación de Interventoría

Ítems de Mejoramiento (Precios Unitarios):

| Ítem | Descripción | Unidad | Cant. Ref. |
|:-----|:------------|:-------|:-----------|
| Op1 | Varilla Copperweld 2.4m adicional con soldadura | UND | 10 |
| Op2 | Dosis de Gel/Cemento Conductivo (25kg) | Bulto | 10 |
| Op3 | Cable 2/0 AWG para extensión de contra-antena | ML | 50 |

4. CERTIFICACIÓN

El sistema deberá contar con Dictamen de Inspección RETIE (Anexo 5) expedido 
por organismo acreditado por ONAC, como parte de la instalación de uso final.
```

#### Justificación:

- ✅ Define alcance base claro (3 varillas) para comparar ofertas
- ✅ Mecanismo contractual para pagar refuerzos solo donde suelo lo exija
- ✅ Soldadura exotérmica obligatoria (garantiza continuidad en el tiempo)
- ✅ Caja de inspección obligatoria (permite mediciones en auditorías)
- ✅ Cumple RETIE 2024 (R≤10Ω para equipos electrónicos sensibles)
- ✅ Ahorro estimado: Evita inflación de ofertas por incertidumbre (~15-20%)

---

## 16. IDENTIFICACIÓN Y ROTULADO

### **Observación:**

El TDR especifica norma EIA/TIA-606 (estándar para edificios comerciales) que no aplica para equipamiento industrial en carretera.

### **Problema Identificado:**

1. **Norma inadecuada:** EIA/TIA-606 es para infraestructura de telecomunicaciones en edificios
2. **Burocracia innecesaria:** Exige registros de "cuartos de telecomunicaciones" inexistentes en poste
3. **Falta enfoque en seguridad:** No prioriza identificación eléctrica según RETIE

### **Corrección Técnica:**

```markdown
IDENTIFICACIÓN Y ROTULADO DE COMPONENTES

Todos los componentes del sistema deberán estar claramente identificados 
para facilitar operación y mantenimiento, cumpliendo con los siguientes 
estándares:

1. IDENTIFICACIÓN ELÉCTRICA (Potencia)

• Todo cableado eléctrico, tableros, borneras y protecciones deberán 
  marcarse según:
  - Reglamento Técnico de Instalaciones Eléctricas (RETIE)
  - NTC 2050

• Código de Colores: Respetar estrictamente para conductores (fases, 
  neutro y tierra) según nivel de tensión (24VDC / 120VAC / 220VAC)

• Cuadro de Cargas: Tablero de control con Cuadro de Cargas actualizado 
  y plastificado en interior de puerta

2. IDENTIFICACIÓN DE COMUNICACIONES

• Cables de red (Patch cords) y fibra óptica marquillados en ambos extremos 
  indicando equipo de origen y destino
  - Ejemplo: "Switch Pto 1 -> Controlador PMV"

• Esquema lógico de identificación alfanumérica
  - NO se requiere aplicación estricta de norma EIA/TIA-606 (edificios)

3. IDENTIFICACIÓN DEL ACTIVO (Inventario)

• Gabinete y Estructura (Pórtico/Poste) con placa externa o rotulado

• Contenido:
  - Código de Inventario (ID) asignado por Proyecto
  - Ejemplo: "PMV-RN4510-K54+000"
  - Resistente a intemperie y vandalismo

• Etiquetas: Autoadhesivas plásticas específicas para sistemas de cableado
```

#### Justificación:

- ✅ Elimina burocracia de EIA/TIA-606 (no aplica para postes)
- ✅ Enfoca en seguridad eléctrica (RETIE) - previene electrocuciones
- ✅ Asegura control de activos (ANI y Concesionario)
- ✅ Identificación práctica para mantenimiento en campo

---

## 17. FORMULARIO DE OFERTA PMV - ESTRUCTURA DE COSTOS

### **Observación:**

El TDR no proporciona una estructura clara de desglose de costos, lo que genera incertidumbre en las cotizaciones y dificulta la comparación entre ofertas.

### **Problema Identificado:**

1. **TDR genérico:** Sin desglose de costos por componente
2. **Inflación de precios:** Proveedores inflan precios por incertidumbre
3. **Imposible comparar:** Ofertas mezclan solar + AC + radar sin segregación
4. **Falta de alternativas:** No hay mecanismo para cotizar opciones (AC vs Solar)

### **Corrección Técnica:**

```markdown
FORMULARIO DE PRECIOS UNITARIOS DESGLOSADOS - PMV

TABLA DE PRECIOS - PMV

Ítem | Descripción | Unidad | Cantidad | Valor Unitario | Valor Total
-----|-------------|--------|----------|----------------|-------------
1.0  | SUMINISTRO SISTEMA PMV ESTÁNDAR (SOLAR) | | | |
1.1  | Panel LED (Gráfico RGB 64x64 + Texto Ámbar 3 líneas 450mm, P20-P25) | UND | 29 | $ | $
1.2  | Estructura de Soporte (Pórtico o Banderola según diseño eficiente) con cimentación y defensas metálicas | UND | 29 | $ | $
1.3  | Kit Solar TIPO A (Estándar): Paneles, Baterías 48h, Gabinete IP65, Controlador MPPT para PMV + Switch 15W | UND | 17 | $ | $
     | | | | |
2.0  | ADICIONALES PARA SITIOS CON RADAR | | | |
2.1  | Kit Solar TIPO B (Reforzado): Sobredimensionamiento de paneles y baterías para soportar carga adicional de 100W (Radar) × 48h autonomía | UND | 12 | $ | $
2.2  | Bornera auxiliar 24 VDC protegida (100W disponibles) para conexión de equipos de terceros | UND | 12 | Incluido | -
     | | | | |
3.0  | OFERTA ALTERNATIVA: ENERGÍA DE RED (AC) | | | |
3.1  | Kit de Alimentación AC: Fuentes de poder universales (100-240VAC), DPS AC, UPS Online (10 min respaldo) EN REEMPLAZO del Kit Solar | UND | 1 | $ | $
3.2  | Acometida Eléctrica y Trámites ante operador de red (valor estimado por punto) | GLB | 1 | $ | $
     | | | | |
4.0  | SOFTWARE E INTEGRACIÓN | | | |
4.1  | Software de gestión propietario (licencia perpetua, instalable Windows/Linux) | GLB | 1 | Incluido | -
4.2  | MIBs NTCIP 1203 v03 + documentación de integración API/SDK | GLB | 1 | Incluido | -
```

### **Especificaciones Técnicas del Formulario:**

#### **1. ESTRUCTURA DE SOPORTE**

```markdown
TIPOLOGÍA DE LA ESTRUCTURA DE SOPORTE

El Proponente podrá ofertar diseño estructural tipo:
- Pórtico (Dos apoyos), o
- Banderola/Semipórtico (Un apoyo en voladizo)

Seleccionando la opción más eficiente en costo-beneficio.

REQUISITOS OBLIGATORIOS:

1. Cargas de Diseño:
   • Peso y área de exposición al viento del Panel LED (PMV)
   • Carga adicional y efecto de vela del Sistema Fotovoltaico
   • Gabinetes y equipos auxiliares

2. Normativa:
   • AASHTO LRFD (Structural Supports for Highway Signs)
   • NSR-10 (Norma Sismo Resistente Colombiana)

3. Gálibo:
   • Altura libre mínima: 5.50m sobre parte más alta de calzada

4. Protección:
   • Barreras de Contención (Defensas Metálicas) certificadas
   • Protección de todos los elementos verticales en zona despejada
   • Cumplimiento Manual de Señalización Vial 2024
```

#### **2. ACCESIBILIDAD Y MANTENIMIENTO**

```markdown
ACCESIBILIDAD Y MANTENIMIENTO

ELIMINAR: Término "visitable" sin especificación

ESPECIFICAR: Método de mantenimiento seguro según Res. 4272/2021

OPCIONES ACEPTADAS:

A. Acceso Frontal/Trasero con Manlift:
   • Puertas de acceso retenidas
   • Puntos de anclaje certificados para línea de vida
   • Operables desde camión canasta (Manlift)
   • NO requiere escalar la estructura

B. Acceso con Pasarela (Catwalk) - OPCIONAL:
   • Pasarela trasera metálica con barandas de seguridad
   • Línea de vida rígida o flexible
   • Escalera de acceso con jaula guarda-hombre
   • Permite mantenimiento sin vehículos de elevación

NOTA: NO se requiere estructura visitable interiormente (Walk-in)
```

#### **3. SISTEMA DE ALIMENTACIÓN ELÉCTRICA**

```markdown
ESPECIFICACIONES DEL SISTEMA DE ALIMENTACIÓN

A. VERSIÓN SOLAR (Base):
   • Operación nativa: 24 VDC
   • Autonomía: 48 horas (Manual 2024 Numeral 2.7.6)
   • Borneras de distribución protegidas para equipos auxiliares

B. VERSIÓN RED COMERCIAL (Alternativa AC):
   • Fuentes de poder industriales conmutadas (Switching Power Supply)
   • Rango de Entrada: 100 VAC a 240 VAC (±10%)
   • Universales o "Wide Range" sin selectores manuales
   • Justificación: Soporta fluctuaciones de tensión en zonas rurales
   • Protección: DPS Clase II en entrada AC
   • UPS Online: 10 minutos respaldo mínimo

C. INTERFAZ PARA RADAR (12 sitios):
   • Salida: 24 VDC estabilizados
   • Potencia disponible: Mínimo 100W reservados
   • Responsabilidad convertidor: Si radar opera a voltaje diferente
     (48V, PoE), proveedor radar suministra elevador DC-DC
```

#### **4. CONDICIONES AMBIENTALES**

```markdown
RANGO DE HUMEDAD Y TEMPERATURA

✅ VALIDADO - NO MODIFICAR:

• Humedad: 10% ~ 95% (sin condensación)
• Temperatura: -10°C ~ 60°C

Justificación:
- Corresponde a Clase T1 según UNE-EN 12966
- Magdalena Medio: Humedad nocturna llega a saturación (95%)
- Reducir especificación causaría fallas por condensación

Cumplimiento:
- Manual de Señalización Vial 2024
- Norma UNE-EN 12966 (Clase Ambiental T1)

NOTA: Este requisito NO afecta diseño estructural del pórtico
(solo calidad de empaques y ventiladores del gabinete)
```

#### **5. SISTEMA DE SERVICIOS AUXILIARES**

```markdown
SISTEMA DE GESTIÓN AMBIENTAL Y MANTENIMIENTO (Gabinete)

MANTENER - NO ELIMINAR (Protección de inversión)

1. Gestión Térmica Activa:
   • Ventilación forzada controlada por termostato
   • Dimensionada para disipar carga térmica de LEDs + radiación solar
   • Mantiene temperatura interna en rango seguro

2. Control de Condensación:
   • Sistema anti-condensación (resistencia calefactora)
   • Controlado por higrostato o termostato diferencial
   • Evita formación de humedad sobre tarjetas electrónicas

3. Facilidades de Mantenimiento (RETIE):
   • Iluminación interna LED tipo regleta
   • Interruptor de puerta o manual
   • Toma eléctrica de servicio (GFCI) para equipos de diagnóstico

Justificación:
- Clima Magdalena Medio: Calor + Alta Humedad (>90%)
- Sin control ambiental: Fallas por condensación o sobrecalentamiento
- Costo marginal que protege inversión en módulos LED
```

#### **6. INTEGRACIÓN SCADA Y SOFTWARE**

```markdown
ARQUITECTURA DE GESTIÓN Y PROTOCOLOS DE CONTROL

El controlador PMV deberá disponer de arquitectura dual:

1. GESTIÓN LOCAL (Mantenimiento e Ingeniería):
   • Configuración local vía puerto de servicio (Ethernet/USB)
   • Software Propietario del fabricante
   • Funciones: Diagnóstico profundo, actualización firmware,
     carga de librerías gráficas, ajuste de parámetros eléctricos

2. GESTIÓN REMOTA (Operación e Integración SCADA):
   • Interfaz abierta: API documentada o NTCIP 1203 v03
   • Permite que SCADA o software de terceros envíe comandos
     (cambio de mensaje, brillo) y lea estados
   • SIN requerir software propietario intermedio

3. PROTOCOLO DE FALLO (Fail-Safe):
   • Lógica de seguridad pre-programada
   • En caso de pérdida de comunicación con SCADA
   • Acciones: Desplegar mensaje de precaución por defecto,
     apagar panel, o mostrar última trama válida
   • Sin intervención externa

ENTREGABLES OBLIGATORIOS:
• Archivos MIB (Management Information Base) completos
• Diccionario de objetos NTCIP
• API/SDK documentada (si disponible)
• Ejemplos de comandos básicos
```

### **Beneficios de esta Estructura:**

#### **1. Elimina Incertidumbre:**
- Proveedor sabe exactamente qué cotizar
- No infla precios por "riesgos desconocidos"

#### **2. Permite Comparación:**
- Ofertas comparables "manzanas con manzanas"
- Fácil identificar sobrecostos o faltantes

#### **3. Flexibilidad Presupuestal:**
- Si presupuesto ajustado: Eliminar ítem 3.0 (AC)
- Si zona con red cercana: Evaluar AC vs Solar
- Decisión basada en datos reales, no estimaciones

#### **4. Optimización Técnica:**
- Permite al proveedor elegir pórtico vs banderola
- Competencia en diseño estructural eficiente
- Ahorro en acero sin comprometer seguridad

### **Validaciones Críticas:**

#### **✅ Estructura:**
- Permitir pórtico O banderola (más económico)
- Eliminar "visitable" sin especificación
- Especificar acceso seguro (manlift o pasarela)

#### **✅ Energía:**
- Segregar TIPO A (17 un.) vs TIPO B (12 un. con radar)
- Fuentes AC universales 100-240VAC
- Interfaz 24 VDC para radar (convertidor a cargo de proveedor radar)

#### **✅ Ambiental:**
- Mantener 95% humedad (obligatorio para zona)
- Mantener -10°C ~ 60°C (estándar industrial)
- NO afecta diseño estructural

#### **✅ Software:**
- NTCIP 1203 v03 + MIBs obligatorios
- Software propietario para mantenimiento
- API/SCADA para operación diaria

#### Justificación:

- ✅ Elimina incertidumbre en cotizaciones
- ✅ Permite comparación clara entre ofertas
- ✅ Flexibilidad presupuestal (AC vs Solar)
- ✅ Optimización técnica (pórtico vs banderola)
- ✅ Segregación clara de componentes y responsabilidades

---

## �📎 ANEXOS

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

**OBSERVACIONES TOTALES:** 17 (11 originales + 6 nuevas secciones técnicas)  
**AHORRO ESTIMADO:** $756,000 - $876,000 USD

---

**CONCLUSIÓN:** El TDR debe dejar de parecer una lista de deseos de tecnología y convertirse en una **especificación de cumplimiento normativo**. Use el documento **T04_SPEC_PMV_VMS_v1.0.md** como la "Biblia" para copiar y pegar especificaciones correctas.

**NOTA IMPORTANTE:** Este documento consolida todas las observaciones identificadas durante la revisión técnica y contractual del TDR de PMV, incluyendo especificaciones detalladas de estructura, energía, gabinetes, puesta a tierra, identificación y formulario de oferta según normativa colombiana (RETIE 2024, NSR-10, AASHTO LRFD). Se requiere respuesta del asesor externo y aclaraciones de la concesión antes de proceder a licitación.
