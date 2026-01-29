# DICTAMEN JURÍDICO-TÉCNICO: SISTEMA WIM (PESAJE)
## Proyecto TM01 Troncal Magdalena

**Versión:** 1.0 (FORENSIC AUDIT)  
**Fecha:** 29 de Enero 2026  
**Tipo de Análisis:** Jurídico-Técnico Integrado  
**Destinatario:** Gerencia de Proyecto + Abogado Contractual  
**Metodología:** Contract-First Architecture (Punto 42 v3.0)

---

<!-- SECCIÓN: full -->
## 📋 RESUMEN EJECUTIVO

**Alcance Validado:**  
El sistema WIM (Control de Sobrecarga) consiste en **1 Estación de Pesaje Bidireccional** ubicada en el PR4+0100 de la RN 4513 (Acceso a Aguas Negras). No se deben confundir con los sensores WIM de Peaje (Clasificación). Esta es una estación de **Fiscalización** pura.

**Componentes Críticos (Hard Deck):**
- **Ubicación:** PR4+0100 RN 4513 (Estratégico cerca a CCO).
- **Configuración:** 2 Pistas WIM Dinámicas (HS-WIM) + 2 Básculas Estáticas (Sanción).
- **Tecnología:** Sensores Piezoeléctricos (Cuarzo) para WIM + Celdas de Carga para Estática.
- **Normativa:** Resolución 100/2024 (HS-WIM Obligatorio).
- **CAPEX Validado:** **$551,425 USD**.

---

<!-- SECCIÓN: contractual -->
## 1. FUNDAMENTO CONTRACTUAL

### 1.1 Obligación de Control de Sobrecarga (AT1)
**Referencia:** Adenda 4, Pág 46-47 / AT1 Numeral 3.3.9.
- **Obligación:** "Diseñar, construir, operar y mantener las estaciones de pesaje...".
- **Cantidad:** 1 Estación Bidireccional.
- **Ubicación:** Definida contractualmente en el acceso al CCO (RN 4513).
- **Propósito:** Protección de la infraestructura vial (Pavimentos) mediante control de Peso Bruto Vehicular máximo.

### 1.2 Diferenciación WIM Peaje vs WIM Pesaje
Es vital para el presupuesto NO duplicar ítems:

| Característica | WIM Peaje (Recaudo) | WIM Pesaje (Fiscalización) |
|:---------------|:--------------------|:---------------------------|
| **Propósito** | Clasificación Vehicular (Tarifa) | Control de Sobrecarga (Multa) |
| **Ubicación** | En carril de cobro (14 und) | En estación dedicada (2 pistas) |
| **Precisión** | Baja (Categoría) | Alta (Metrológica OIML R134) |
| **Sanción** | No aplica | Sí (Báscula Estática requerida) |
| **WBS** | 5.01 (Peajes) | 8.01 (WIM) |

---

<!-- SECCIÓN: technical_notes -->
## 2. NOTAS DE PRECISIÓN TÉCNICA (GAPS DETECTADOS)

### A. Obra Civil Crítica (Riesgo de Pavimento)
**Requisito:** Sensores WIM (Cuarzo/Piezo) requieren "Cero Deformación" para mantener calibración.
**Garantía:** Se EXIGE construir **Losa de Pavimento Rígido (Concreto)** de 50 metros antes y después del sensor.
**Alerta:** Si se instala en asfalto (flexible), la calibración se pierde en <3 meses (Ahuellamiento). Se debe entregar el "Plano de Requisitos Civiles" al Director de Obra.

### B. Integración CCO (Fibra Óptica)
**Fuente:** AT2 Integración.
**Requisito:** La estación en PR4+0100 (RN 4513) debe tener acometida de **Fibra Óptica Monomodo**. Sin conectividad, no hay transmisión de datos ni operación legal.

### C. Cumplimiento RETIE 2024
La estación de pesaje es una **Instalación de Uso Final**. Requiere:
- Dictamen de Inspección (Anexo 5).
- Certificados de producto para tableros, iluminación y acometidas.

### D. Señalización de Selección
**Requisito:** Semáforos o PMV sobre la pista para indicar "Siga" o "Entre a Báscula".
**Acción:** Verificar inclusión de pórticos/badera con semáforos de aspa-flecha en el presupuesto.

---

<!-- SECCIÓN: technical -->
## 3. ESPECIFICACIONES TÉCNICAS (HARD DECK)

### 2.1 Configuración Estación (PR4+0100)
- **Sentidos:** 2 (Norte y Sur).
- **Equipamiento por Sentido:**
    1.  **Pre-selección (HS-WIM):** Sensores piezoeléctricos clase 5-10. Velocidad >80km/h.
    2.  **Desvío:** Señalización variable (Semáforo/PMV Mensaje "ENTRE") para selección.
    3.  **Pesaje Estático:** Báscula camionera 100 ton (24m) certificada NTC 5371.
    4.  **Sanción:** Área de parqueo y oficina con servicios (RETIE 2024).

### 2.2 Tecnologías Clave
- **Sensores WIM:** Tecnología de Cuarzo (Kistler o similar) para estabilidad térmica.
- **Integración:** Software de gestión que consolida WIM + Estática + Foto (LPR).
- **CCTV:** Cámaras de evidencia (Placa + Ejes) integradas al tiquete de pesaje.

---

<!-- SECCIÓN: financial -->
## 4. ANÁLISIS FINANCIERO

### Presupuesto Reconciliado (USD)

| Ítem | Componente | Valor |
|:-----|:-----------|:------|
| **1. Sistema Dinámico (WIM)** | 2 Pistas PAT DAW100 | $256,353 |
| **2. Sistema Estático** | 2 Básculas Fairbanks 100t | $261,890 |
| **3. Puesta a Tierra** | SPT Especializado | $33,182 |
| **TOTAL CAPEX WIM** | **1 Estación Bidireccional** | **$551,425** |

**Nota:** Este valor es **Suministro e Instalación Tecnológica**. La Obra Civil mayor (Bahías, Pavimentos Rígidos, Caseta) debe estar en el presupuesto de **Infraestructura (EPC Civil)**, no en ITS.

---

<!-- SECCIÓN: risks -->
## 5. MATRIZ DE RIESGOS

1.  **Desgaste de Sensores WIM:**
    *   *Riesgo:* Vida útil corta en pavimentos flexibles.
    *   *Mitigación:* Exigir losa de concreto (Pavimento Rígido) de 50m antes y después del sensor.
2.  **Normativa HS-WIM (Res 100/2024):**
    *   *Riesgo:* Que la ANI exija sanción directa con WIM (sin báscula estática).
    *   *Estado:* La norma colombiana aún exige re-pesaje estático para multa. El sistema está diseñado para ambas modalidades.
3.  **Obra Civil ITS:**
    *   *Riesgo:* Que el EPC Civil no construya las acometidas o la losa plana (Planicidad <3mm).
    *   *Mitigación:* Entregar plano de requisitos civiles (T04 Anexo A) al Director de Obra.

---

**Estado:** ✅ VALIDADO (1 ESTACIÓN BIDIRECCIONAL)  
**Documento Fuente:** T05 WIM v2.0
