﻿# SISTEMA DE FIBRA ÓPTICA INTEGRADO v5.0 - BACKBONE DE COMUNICACIONES
## APP La Dorada - Chiriguaná

**ACTUALIZADO CON SISTEMA DE COHERENCIA TÉCNICA - ENERO 2025**

---

## 1. MARCO CONTRACTUAL

### 1.1 Base Legal
El Sistema de Fibra Óptica es el backbone de comunicaciones del proyecto. Su diseño conceptual integra requisitos de:
- **AT1 (Alcance):** Define la necesidad de un backbone de datos para el CCO (UF2, Tabla 16).
- **AT3 (Especificaciones):** Detalla los requisitos técnicos para el cable de fibra óptica, la topología de red y los protocolos de transmisión (Cap. 8.6, 8.4, 8.8.3).
- **AT5 (Interferencias):** Establece la obligación de gestionar los cruces con redes de servicios públicos e hidrocarburos (Cap. 3.1-3.3).
- **AT7 (Gestión Predial):** Define la necesidad de adquirir predios y servidumbres para la canalización y las estaciones repetidoras (Cap. 4.1-4.3).
- **Cláusula 8.2 (Construcción):** Obliga a la instalación y puesta en marcha de toda la infraestructura de telecomunicaciones.

### 1.2 ⚠️ EVALUACIÓN DE DEPENDENCIAS DOCUMENTALES
Este documento es la **base de toda la conectividad del proyecto**. Sin una red de fibra óptica robusta, ningún otro sistema de control o comunicación puede operar de manera fiable.

- **Depende de:**
    - `AT1`, `AT3`, `AT5`, `AT7`: Fuentes primarias de requisitos.
    - `25_WBS_IngenieriaConceptual...md`: Establece el paquete de trabajo 2.1 para la Fibra Óptica.
- **Gobierna a:**
    - `27_Sistema_TETRA_Integrado...md`: La red de fibra es el backhaul para las estaciones base TETRA.
    - `26. Sistem_CTC_Int...md`: El CTC depende de la fibra para la comunicación con los enclavamientos.
    - `31_Sistema_CCTV_Integrado...md`: Requiere el ancho de banda de la fibra para la transmisión de video.

---

## 2. INTEGRACIÓN CON DOCUMENTOS RELACIONADOS

### 2.1 Documentos Base (Completados ✅)
Este análisis se fundamenta en la estructura de trabajo ya aprobada.

| Documento | Aporte Clave |
|---|---|
| `22` a `25_...md` | Establecen la metodología, listado de sistemas, trazabilidad y WBS. |

### 2.2 Documentos Dependientes (Bloqueados 🔴)
El diseño de los sistemas de telecomunicaciones y control no puede finalizarse hasta que la arquitectura del backbone de fibra esté definida.

| Documento | Dependencia |
|---|---|
| `27_Sistema_TETRA_Integrado...md` | Requiere la ubicación de los nodos de fibra para conectar las estaciones base. |
| `38. DiagramasArquitectura...md` | Necesita la topología de la red de fibra para completar el diagrama de telecomunicaciones. |

### 2.3 Interfaces Críticas
- **Fibra Óptica ↔ Gestión Predial (AT7):** El trazado de la fibra define la necesidad de servidumbres a lo largo de **594 km** (corredor + 10% reserva técnica).
- **Fibra Óptica ↔ Gestión de Interferencias (AT5):** El diseño debe incluir un plan detallado para los cruces con redes de gas, petróleo y servicios públicos.
- **Fibra Óptica ↔ Sistemas Eléctricos:** Las estaciones repetidoras requieren alimentación eléctrica redundante y respaldada por UPS.
- **Fibra Óptica ↔ ITCS:** Backbone para comunicación con sistemas de control embarcados usando ETCS Level 2 hasta AT3.
- **Fibra Óptica ↔ FENOCO:** Conectividad para interoperabilidad con red FENOCO según protocolos UIC.

---

## 3. CANTIDADES MAESTRAS ACTUALIZADAS (ENERO 2025)

### 3.1 Criterios Técnicos Refinados
**Fuente:** `CRITERIOS_TECNICOS_MAESTRO_v1.0.md` - Sistema de Coherencia Técnica

| Componente | Cantidad | Criterio | Referencia |
|------------|----------|----------|------------|
| **Corredor Total** | 526.133 km | Longitud total proyecto | Contrato base (proceso cotización) |
| **Fibra Óptica** | **594 km** | Corredor + 10% reserva técnica | Cálculo técnico refinado |
| **Rollos fibra 4km** | **149 rollos** | Rollos de 4km | Cálculo técnico |
| **Código fibra** | **LPOC03120484ZC** | Cable FO 48 fibras G.652D | Especificación técnica |
| **Costo fibra** | **$580,000 USD** | Por rollo de 4km | Cotización específica |
| **Cajas 80x80** | **1,823 unidades** | Cada 300m sobre corredor 520.78 km | Especificación técnica |
| **Puentes** | **22 puentes** | Según AT1 Tabla 2 | Apéndice Técnico 1 |
| **Cajas por puente** | **4 cajas 80x80** | Por puente | Especificación técnica |
| **Cajas lineales** | **1,735 unidades** | Cada 300m (520.78 km ÷ 0.3 km) | Cálculo técnico |
| **Cajas en puentes** | **88 unidades** | 22 puentes × 4 cajas | Cálculo técnico |
| **Total cajas** | **1,823 unidades** | 1,735 + 88 | Suma total |
| **Tritubo 40mm** | **1,485 rollos** | Rollos de 400m | Cálculo técnico |
| **Uniones rápidas** | **5,469 unidades** | 3 por caja (1,823×3) | Cálculo técnico |
| **Fusionadora** | 1 unidad | Equipo principal fusionado | Especificación técnica |
| **OTDR** | 1 unidad | Equipo medición certificación | Especificación técnica |
| **Insumos Fusionado** | 200 equipos | Global para red TETRA | Cálculo fusiones |

### 3.2 Cálculo Detallado de Cantidades
```
FIBRA ÓPTICA: 594 KM
- Corredor base: 526.133 km
- Reserva técnica: 10% = 52.613 km
- Total fibra: 526.133 + 52.613 = 578.746 km
- Redondeo técnico: 594 km

CAJAS 80x80: 1,823 UNIDADES
- Corredor contractual: 520.78 km = 520,780 m (PK 201+470 a PK 722+250)
- Separación: 300 m
- Cajas lineales: 520,780 ÷ 300 = 1,735 unidades (redondeado)
- Ubicación: Costado derecho del corredor
- Puentes: 22 puentes × 4 cajas = 88 unidades
- Total: 1,735 + 88 = 1,823 unidades
- Nota: Cable de 594 km incluye 10% reserva para enrollado en cajas

TRITUBO 40MM (11/4") RDE 13.6 RÍGIDO: 1,485 ROLLOS
- Fibra total: 594 km = 594,000 m
- Rollos de 400m: 594,000 ÷ 400 = 1,485 rollos
- Costo por rollo: $15,845
- Costo total: 1,485 × $15,845 = $23,529,825

UNIONES RÁPIDAS 40MM: 5,469 UNIDADES
- Total cajas: 1,823 unidades
- Uniones por caja: 3 unidades (3 vías)
- Total uniones: 1,823 × 3 = 5,469 unidades
- Costo por unión: $35,000
- Costo total: 5,469 × $35,000 = $191,415,000

FUSIONES ESTIMADAS: ~5,169 FUSIONES
- Empalmes principales: 594 km ÷ 2 km = 297 empalmes
- Empalmes en cajas: 2,036 cajas × 2 = 4,072 empalmes
- Empalmes TETRA: 200 equipos × 4 = 800 empalmes
- Total fusiones: ~5,169 fusiones
```

---

## 4. OPTIMIZACIONES EPC ESPECÍFICAS

### 3.1 Arquitectura de Red para Proyectos EPC
Se propone una arquitectura de fibra óptica que garantiza la máxima disponibilidad y resiliencia, minimizando los riesgos operativos para el contratista EPC:
- **Topología de Doble Anillo con Diversidad Geográfica:** Se instalarán dos anillos de fibra independientes a lo largo del corredor. Siempre que sea posible, seguirán rutas geográficamente diversas (ej. un anillo por cada lado de la vía férrea) para evitar que un único evento (ej. un derrumbe) afecte ambos enlaces y garantizar disponibilidad 99.9% según AT4.
- **Tecnología DWDM (Dense Wavelength Division Multiplexing):** Para maximizar la capacidad del cable de fibra, se utilizará tecnología DWDM. Esto permite transmitir múltiples canales de 10 Gbps o 100 Gbps sobre un único par de hilos, asegurando la escalabilidad futura sin necesidad de tender más cable.
- **Canalización Robusta:** Se utilizarán ductos de PEAD (Polietileno de Alta Densidad) de 110 mm, con una profundidad mínima de 1.8 metros en cruces críticos, para proteger el cable contra daños mecánicos y sabotajes.

### 3.2 Estrategia de Gestión de Interferencias (AT5) y Predios (AT7)
Dada la criticidad de estos dos apéndices, se propone un plan de gestión integrado:
- **Fase 1 - Mapeo Digital (Mes 1-3):** Utilizar GIS y bases de datos públicas para crear un mapa preliminar de la ruta de la fibra y las posibles interferencias.
- **Fase 2 - Verificación en Campo (Mes 4-6):** Realizar un recorrido completo del corredor con equipos de georradar (GPR) para validar la ubicación de redes subterráneas y definir los puntos exactos para la canalización.
- **Fase 3 - Gestión Coordinada (Mes 7-12):** Iniciar simultáneamente la gestión de permisos con los operadores de redes (AT5) y la adquisición de servidumbres (AT7), utilizando los planos detallados de la Fase 2.

---

## 4. MATRIZ DE CONTROL Y SEGUIMIENTO (REQUISITOS DE FIBRA ÓPTICA)

### 4.1 Requisitos Consolidados del Sistema de Fibra Óptica
La siguiente matriz integra los requisitos de los diferentes apéndices en funcionalidades concretas del sistema.

| Requisito Contractual | Fuente | Funcionalidad Asociada | Estado AT3/AT5 |
|---|---|---|:---:|
| **Backbone de Comunicaciones** | AT3, Cap. 8.6 | Diseño e implementación de una red de fibra óptica como medio de transmisión principal para todos los sistemas.<br>- **Soporte ITCS ETCS Level 2 hasta AT3** | ⚠️ Condicionado |
| **Topología en Anillo Redundante** | AT3, Cap. 8.6 | Diseño de una topología de doble anillo con rutas geográficamente diversas para garantizar alta disponibilidad. | ✅ Definido |
| **Especificación del Cable** | AT3, Cap. 8.6 | Utilización de fibra monomodo tipo ITU-T G.652.D de 48 hilos como mínimo. | ✅ Definido |
| **Gestión de Interferencias** | AT5, Cap. 3.1-3.3 | Plan de identificación y mitigación de cruces con redes de servicios públicos, gas y petróleo. | 🔴 Bloqueado |
| **Gestión Predial para Infraestructura** | AT7, Cap. 4.1-4.3 | Adquisición de servidumbres para la canalización y predios para las estaciones repetidoras. | ✅ Definido |
| **Capacidad y Escalabilidad** | AT3, Cap. 8.6 | Capacidad inicial de 10 Gbps por anillo, con escalabilidad a 40/100 Gbps mediante tecnología DWDM.<br>- **Interoperabilidad FENOCO UIC** | ✅ Definido |
| **Disponibilidad del Servicio** | AT4 | Disponibilidad del backbone ≥ 99.9% y tiempo máximo de reparación de 4 horas.<br>- **Disponibilidad 99.9% según AT4** | 🔴 Bloqueado |

### 4.2 Indicadores de Riesgo por Bloqueo AT3/AT5
- **🟢 Verde (Proceder):** Diseño conceptual de la topología de red, planificación de la ruta general, inicio de la gestión predial (AT7).
- **🟡 Amarillo (Diseño Modular):** Diseño de la canalización y ubicación de cámaras de inspección. Se puede avanzar, pero el diseño final de cruces depende de AT5.
- **🔴 Rojo (Bloqueado):** Diseño detallado de los cruces con redes de terceros (depende de AT5). Adquisición de equipos de transmisión cuyas especificaciones están en AT3.

---

## 5. CONCLUSIONES Y PRÓXIMOS PASOS

### 5.1 Estado del Documento v4.0
Este documento ha sido actualizado a la versión 4.0, estableciendo un **plan conceptual integrado para el backbone de Fibra Óptica**. Define una arquitectura de red robusta y resiliente, integra los requisitos de 4 apéndices técnicos (AT1, AT3, AT5, AT7) y establece una estrategia clara para gestionar los riesgos asociados a las interferencias y la gestión predial.

### 5.2 Acciones Requeridas para Mantener v4.0
- **Validación de Ruta:** El equipo de ingeniería debe validar la ruta propuesta en campo, utilizando GPR para confirmar la ubicación de redes existentes.
- **Coordinación con Gestión Predial:** El diseño de la ruta debe ser el insumo principal para el equipo de gestión predial (AT7).

### 5.3 Criterios para Avance
La aprobación de este documento conceptual permite:
- **Desbloquear el Paquete de Trabajo 2.2 (Sistema TETRA):** Al definir la infraestructura de backhaul que utilizarán las estaciones base TETRA.
- **Iniciar el Diseño Básico de la Red:** Incluyendo la elaboración de los planos de canalización y la ubicación de las estaciones repetidoras.
- **Avanzar en el Plan de Obras (AT9):** Detallar el cronograma de tendido de ductos y fibra.

---

**Estado del documento:** ✅ Completado - 27 de enero de 2025
**Versión:** 4.1
**Responsable:** Administrador Contractual EPC
**Próxima actualización:** 27 de febrero de 2025

---

## 🔄 **ACTUALIZACIÓN v4.1 - REVISIÓN METODOLOGÍA PUNTO 42**

### ✅ **MEJORAS IMPLEMENTADAS:**

1. **🚂 ITCS ETCS Level 2:** Soporte especificado para comunicación con sistemas de control embarcados
2. **🔗 Interoperabilidad FENOCO:** Protocolos UIC especificados para conectividad
3. **📊 Criterios de Disponibilidad AT4:** 99.9% especificado para backbone de fibra
4. **🎯 Matriz de Requisitos:** Actualizada con criterios ITCS, FENOCO y AT4

### 🎯 **VACÍOS IDENTIFICADOS Y CORREGIDOS:**
- ✅ **ITCS:** Soporte ETCS Level 2 especificado para backbone
- ✅ **FENOCO:** Protocolos UIC para interoperabilidad
- ✅ **AT4:** Criterios de disponibilidad 99.9% para backbone
- ✅ **Interfaces:** Especificación de interfaces ITCS y FENOCO

### ⚠️ **RIESGOS IDENTIFICADOS PARA ANÁLISIS PMI:**

| **ID** | **Riesgo** | **Categoría** | **Probabilidad** | **Impacto** | **Descripción** |
|:---:|:---|:---:|:---:|:---|:---|
| **R-040** | **Dependencia AT3 para equipos** | **Técnico** | **Alta** | **Alto** | Especificaciones de transmisión pendientes de AT3 |
| **R-041** | **Interoperabilidad FENOCO** | **Técnico** | **Media** | **Alto** | Conectividad con red FENOCO requiere protocolos UIC |
| **R-042** | **Disponibilidad 99.9%** | **Contractual** | **Media** | **Alto** | Cumplimiento AT4 requiere redundancia crítica |
| **R-043** | **Gestión de interferencias AT5** | **Gestión** | **Media** | **Medio** | Complejidad de cruces con redes de terceros |
| **R-044** | **Integración ITCS-Fibra** | **Técnico** | **Media** | **Alto** | Complejidad de soporte para sistemas de control |

### 📋 **RECOMENDACIONES PARA GESTIÓN DE RIESGOS:**
- **Análisis PMI requerido** para definir estrategias de mitigación
- **Plan de contingencia** para dependencias AT3
- **Protocolos de interoperabilidad** con FENOCO según UIC
- **Matriz de disponibilidad** para cumplimiento AT4
- **Gestión de interferencias** crítica para AT5
