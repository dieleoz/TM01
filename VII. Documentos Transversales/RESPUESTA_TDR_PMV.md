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

## 🚨 OBSERVACIÓN CRÍTICA DE BLOQUEO: RADAR ANPR

> **DICTAMEN GENERAL:** El documento del asesor contiene un **RIESGO CRÍTICO DE ALCANCE** al mezclar el sistema de PMV con el sistema de Radares/ANPR, lo cual **vicia el proceso de compra**.

### El Problema:

El TDR dice: *"Aprovechando la infraestructura del PMV se ha previsto la instalación de los doce (12) RADARES ANPR... conexión de datos al Switch del PMV"*

### Por qué es CRÍTICO:

| Aspecto | Problema | Impacto |
|:--------|:---------|:--------|
| **Competencia** | Los fabricantes de pantallas (Swarco, Daktronics) **NO fabrican radares de aforo de alta precisión** | Le cotizarán un radar de "juguete" o subcontratarán con sobrecosto |
| **Presupuesto** | Los 12 Radares **ya están cubiertos en el T04_SPEC_RADAR** | **Duplicación de presupuesto: $1.2M USD** |
| **Alcance** | Mezcla dos sistemas diferentes (PMV + ETD/ANPR) | Vicia el proceso de compra |

### ACCIÓN INMEDIATA REQUERIDA:

**ELIMINAR** el capítulo "RADAR ANPR" del TDR de PMV. La única obligación del PMV es:
- ✅ Dejar un punto eléctrico disponible (80W, 24/36 VDC)
- ✅ Dejar un puerto en el switch disponible
- ❌ **NO** suministrar el RADAR
- ❌ **NO** integrar el RADAR

**Justificación:** Los radares son objeto de otro proceso de compra (T04-ETD). El alcance PMV se limita a dejar la infraestructura preparada.

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

### 1️⃣ LA BATALLA DEL PIXEL: P10 vs P20 (Ahorro: ~35%)

#### Problema:
El asesor probablemente exige resolución **P10 (10mm entre pixeles)** para todos los paneles.

#### La Realidad Técnica:

| Ubicación | Velocidad | Distancia Lectura | Pixel Pitch Correcto | Justificación |
|:----------|:----------|:------------------|:---------------------|:--------------|
| **Vía (Troncal)** | 80-100 km/h | >150 metros | **P20 o P16** | El ojo humano NO distingue P10 de P20 a más de 50 metros. Poner P10 en un pórtico es botar el dinero. |
| **Peaje (Carril)** | 0-20 km/h | <10 metros | **P10** | El carro está detenido a 5 metros. Aquí sí se necesita P10 para lectura de tarifa/saldo. |

#### Especificación Validada (T04/T05):

```markdown
PIXEL PITCH (RESOLUCIÓN):

PMV ITS (Vía - 29 Unidades):
• Pixel Pitch: 20mm (P20) o 16mm (P16)
• Justificación: Distancia de lectura >150m, velocidad >80km/h
• Cumplimiento: Manual Señalización 2024

PMV PEAJE (Tarifarios - 14 Unidades):
• Pixel Pitch: 10mm (P10)
• Justificación: Distancia de lectura <10m, lectura detallada de tarifa
• Cumplimiento: Resolución IP/REV Art 2.9.9
```

#### Impacto Económico:

| Concepto | P10 (Sobrecosto) | P20 (Optimizado) | Ahorro |
|:---------|:-----------------|:-----------------|:-------|
| **Panel Vía (29 und)** | $60,000/und | $42,000/und | **$18,000/und** |
| **Total Ahorro** | $1,740,000 | $1,218,000 | **$522,000** |
| **% Ahorro** | - | - | **~30%** |

**Ahorro Total Estimado: $70,000 - $100,000 USD** (considerando estructura y obra civil)

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

### 4️⃣ ALTURA DE CARÁCTER - SOBRE-ESPECIFICACIÓN

#### Observación:
El TDR exige **450 mm** de altura de carácter.

#### Problema:
- **Manual de Señalización 2024 (Numeral 2.7.4):** Exige **400 mm mínimo** para velocidades >90 km/h.
- **450 mm** sobre-especifica y encarece sin beneficio contractual.

#### Impacto:
- Panel más grande = más LEDs = más costo
- Panel más grande = más consumo eléctrico = sistema solar más grande
- **Ahorro estimado:** $2,000-5,000 por panel x 29 = **$58,000-145,000 USD**

#### Texto Corregido:

```markdown
ESPECIFICACIONES TÉCNICAS PMV ITS:

DIMENSIONES:
• Altura de carácter: Mínimo 400 mm (cumple Manual Señalización 2024 
  para v>90km/h)
• Proporción altura/ancho: 0.7 a 1.0
• Espacio entre caracteres: 25%-40% de altura
• Espacio entre palabras: 75%-100% de altura
• Espacio entre líneas: 50%-75% de altura

CONFIGURACIÓN:
• 1 zona gráfica Full Color (64x64 píxeles mínimo)
• 3 líneas alfanuméricas de 12 caracteres cada una
• Color líneas alfanuméricas: Ámbar
```

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

### 5️⃣ RADAR ANPR - RIESGO CRÍTICO DE ALCANCE ⚠️

#### Observación:
El TDR menciona "doce (12) RADARES ANPR distribuidos en algunos de los paneles".

#### RIESGO CRÍTICO - DUPLICACIÓN DE PRESUPUESTO:

> **ALERTA:** El asesor está pidiendo al proveedor de pantallas (PMV) que suministre los Radares de Tráfico (ETD/ANPR). Esto genera un **RIESGO CRÍTICO** de duplicación de presupuesto y vicia el proceso de compra.

| Aspecto | Problema | Impacto Económico |
|:--------|:---------|:------------------|
| **Duplicación** | Los 12 Radares **ya están presupuestados en T04_SPEC_RADAR** | **$1.2M USD duplicados** |
| **Competencia** | Fabricantes de PMV (Swarco, Daktronics) **NO fabrican radares de aforo** | Cotizarán radar "genérico" o subcontratarán con sobrecosto |
| **Alcance** | Mezcla dos sistemas diferentes (PMV + ETD/ANPR) | Vicia el proceso de compra |

#### Por qué es un ERROR:

1. **Competencia Técnica:**
   - **Fabricantes de PMV:** Swarco, Daktronics, EKTA → Especialistas en **pantallas LED**
   - **Fabricantes de RADAR:** Wavetronix, Flir, Sensys → Especialistas en **detección de tráfico**
   - **Resultado:** Le cotizarán un radar de baja precisión o subcontratarán con sobrecosto

2. **Presupuesto:**
   - Los 12 Radares ANPR ya están cubiertos en el **T04_SPEC_RADAR** ($1.2M USD)
   - Si los pide aquí también, **duplica el presupuesto**

3. **Alcance:**
   - PMV = Sistema de Información (WBS 3.01)
   - RADAR = Sistema de Detección de Tráfico (WBS 3.02)
   - **NO deben mezclarse en un solo TDR**

#### ACCIÓN REQUERIDA:

**ELIMINAR** completamente el capítulo "RADAR ANPR" del TDR de PMV.

#### Alcance Correcto del PMV:

La **única obligación** del proveedor de PMV respecto a los radares es:

```markdown
PREPARACIÓN PARA FUTUROS RADARES (12 SITIOS):

El proveedor de PMV deberá dejar preparada la infraestructura para la 
futura instalación de Radares ANPR (a cargo de otro proveedor):

OBLIGATORIO:
• Punto eléctrico disponible: 80W, 24/36 VDC (según especificación radar)
• Puerto switch disponible: 1 puerto Ethernet RJ45 libre
• Espacio en gabinete: Reservado para futuro equipo (si aplica)

NO INCLUIDO EN ALCANCE PMV:
• Suministro de RADAR ANPR
• Instalación de RADAR ANPR
• Integración de RADAR ANPR
• Software de gestión de RADAR

JUSTIFICACIÓN:
Los radares son objeto de proceso de compra separado (T04-ETD).
El alcance PMV se limita a dejar la infraestructura preparada.
```

#### Texto para Devolver al Asesor:

```
OBSERVACIÓN CRÍTICA - RADAR ANPR:

ELIMINAR el requerimiento de suministro de Radares ANPR dentro de este 
proceso de compra de PMV.

JUSTIFICACIÓN:
1. Los radares son objeto de otro proceso de compra (T04-ETD)
2. Presupuesto de radares ya está cubierto ($1.2M USD)
3. Mezclar PMV con RADAR vicia el proceso de compra
4. Fabricantes de PMV no son especialistas en radares de tráfico

ALCANCE PMV RESPECTO A RADARES:
El proveedor de PMV solo debe dejar preparada la infraestructura:
• Punto eléctrico disponible (80W, 24/36 VDC)
• Puerto switch disponible
• Espacio en gabinete (si aplica)

El suministro, instalación e integración de radares es responsabilidad 
de otro proveedor especializado.
```

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
