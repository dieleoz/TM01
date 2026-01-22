# T04: ESPECIFICACIÓN TÉCNICA - AMBULANCIAS TAM (TRANSPORTE ASISTENCIAL MEDICALIZADO)
## Proyecto APP Puerto Salgar - Barrancabermeja

**Fecha:** 18/10/2025  
**Equipo:** Ambulancias TAM Tipo B (Asistencial Medicalizado)  
**Responsable:** Gerente de Operaciones y Emergencias / Médico Coordinador  
**Versión:** 1.0  

---

## 1. INFORMACIÓN GENERAL

| Campo | Valor |
|:------|:------|
| **Equipo** | Ambulancia TAM (Transporte Asistencial Medicalizado) Tipo B |
| **Cantidad estimada** | 2-3 unidades (1 por base de operaciones) |
| **Ubicación** | Bases de emergencia en PK 80 y PK 180 (aproximadamente) |
| **Sistema asociado** | Sistema de Atención de Emergencias |
| **Criticidad** | 🔴 Crítica |
| **Documentos de Referencia** | `62_T03_Arquitectura_Conceptual_Emergencias_v1.0.md` |

---

## 2. ESPECIFICACIONES FUNCIONALES

### 2.1 Función Principal

Proporcionar atención médica pre-hospitalaria avanzada y transporte asistido a pacientes en emergencias médicas ocurridas en el corredor vial.

### 2.2 Tripulación

- **Conductor:** Certificado en conducción de vehículos de emergencia
- **Médico:** Médico general con curso de ACLS/BLS
- **Auxiliar de Enfermería/Paramédico:** Con certificación en atención prehospitalaria

---

## 3. ESPECIFICACIONES DEL VEHÍCULO BASE

| Parámetro | Especificación Mínima |
|:----------|:----------------------|
| **Tipo de Vehículo** | Furgón (Van) 4x2, configuración high-roof |
| **Marca/Modelo Sugerido** | Mercedes-Benz Sprinter 515, Ford Transit, Renault Master, RAM ProMaster |
| **Motor** | Diésel o gasolina, 2.2L - 3.0L, 140-170 HP |
| **Transmisión** | Manual o automática |
| **Suspensión** | Neumática o reforzada (para confort del paciente) |
| **Capacidad de Carga** | 1,000 - 1,500 kg |
| **Dimensiones Interiores** | Mínimo 2.8m longitud x 1.7m ancho x 1.9m altura (compartimento de paciente) |
| **Aire Acondicionado** | Dual (cabina + compartimento paciente), independiente |
| **Combustible** | Tanque ≥ 70 litros |

---

## 4. COMPARTIMENTO DE PACIENTE

### 4.1 Distribución Interna

```
┌──────────────────────────────────────┐
│  COMPARTIMENTO DE PACIENTE           │
│                                      │
│  [Camilla Principal] (centro)        │
│  [Silla de Ruedas] (lateral)         │
│  [Asiento Médico/Auxiliar] (lateral) │
│  [Gabinetes de Equipos] (laterales)  │
│  [Estante de Medicamentos] (superior)│
│  [Toma de Oxígeno] (pared)           │
│                                      │
│  Acceso: Puertas posteriores dobles  │
└──────────────────────────────────────┘
```

### 4.2 Camilla Principal

| Parámetro | Especificación |
|:----------|:---------------|
| **Tipo** | Camilla con sistema de carga/descarga automático (auto-carga) |
| **Material** | Aluminio, plegable, con ruedas retrátiles |
| **Capacidad de Carga** | 250 kg |
| **Ajustes** | Respaldo ajustable (0° - 80°), altura ajustable |
| **Fijación** | Sistema de anclaje rápido al piso de la ambulancia |
| **Colchón** | Colchón de espuma de alta densidad, lavable, impermeable |

---

## 5. EQUIPAMIENTO MÉDICO

### 5.1 Equipos de Soporte Vital Avanzado

| Equipo | Especificación |
|:-------|:---------------|
| **Monitor de Signos Vitales** | ECG 12 derivaciones, SpO2, NIBP, temperatura, capnografía (ETCO2) |
| **Desfibrilador/DEA** | Bifásico, 200 J máximo, modo manual y automático, palas adulto/pediátrico |
| **Ventilador Mecánico Portátil** | Modos: VCV, PCV, PSV, portátil con batería ≥ 4 horas |
| **Aspirador de Secreciones** | Eléctrico y manual de respaldo, 300 mmHg |
| **Oxímetro de Pulso Portátil** | SpO2 + frecuencia cardíaca |
| **Glucómetro** | Con tiras reactivas |

### 5.2 Sistema de Oxígeno

| Componente | Especificación |
|:-----------|:---------------|
| **Tanque de Oxígeno Fijo** | 2x cilindros tipo M (1,700 litros c/u) |
| **Tanque Portátil** | 1x cilindro tipo D (400 litros) |
| **Regulador de Oxígeno** | Con manómetro y flujómetro 0-15 L/min |
| **Máscaras de Oxígeno** | Adulto, pediátrico, neonatal (alta concentración y Venturi) |

### 5.3 Vía Aérea y Respiración

| Equipo | Cantidad |
|:-------|:---------|
| **Cánulas orofaríngeas (Guedel)** | Set completo (adulto, pediátrico) |
| **Cánulas nasofaríngeas** | Set completo |
| **Bolsa-válvula-mascarilla (BVM)** | Adulto y pediátrico |
| **Laringoscopio** | Con hojas curvas y rectas (adulto, pediátrico) |
| **Tubos endotraqueales** | Varias tallas (5.5 - 9.0 mm) |
| **Mascarilla laríngea (LMA)** | Tallas 3, 4, 5 |

### 5.4 Acceso Vascular

| Equipo | Descripción |
|:-------|:------------|
| **Set de venoclisis** | Catéteres IV (14G - 24G), agujas, ligaduras |
| **Soluciones Intravenosas** | Suero fisiológico 0.9%, Lactato de Ringer, Dextrosa 5% (500-1000 ml) |
| **Jeringas** | 3, 5, 10, 20, 50 ml |
| **Equipo de infusión** | Macrogotero, microgotero |

### 5.5 Inmovilización y Transporte

| Equipo | Descripción |
|:-------|:------------|
| **Tabla espinal larga** | Con correas de fijación, acolchonada |
| **Collarín cervical** | Set adulto, pediátrico (ajustable) |
| **Férulas** | Neumáticas (brazo, pierna), rígidas |
| **Silla de ruedas plegable** | Capacidad 120 kg |

### 5.6 Medicamentos (Botiquín)

| Categoría | Medicamentos Esenciales |
|:----------|:------------------------|
| **Cardiovasculares** | Epinefrina, Atropina, Adenosina, Amiodarona, Nitroglicerina |
| **Analgésicos** | Morfina, Tramadol, Dipirona |
| **Anticonvulsivantes** | Diazepam, Midazolam |
| **Otros** | Dexametasona, Hidrocortisona, Antihistamínicos |

---

## 6. COMUNICACIONES Y CONECTIVIDAD

| Sistema | Especificación |
|:--------|:---------------|
| **Radio VHF/UHF** | Comunicación con CCO y bases de emergencia |
| **Teléfono Celular** | Para comunicación con hospitales de referencia |
| **GPS/AVL** | Rastreo satelital en tiempo real, integrado con CCO |
| **Internet Móvil** | Router 4G LTE para transmisión de datos (ECG, signos vitales) |

---

## 7. IDENTIFICACIÓN Y SEÑALIZACIÓN

| Componente | Especificación |
|:-----------|:---------------|
| **Pintura** | Blanco con franjas reflectivas naranjas/rojas según normativa |
| **Rotulación** | "AMBULANCIA" en español e inglés (letras invertidas al frente) |
| **Luces de Emergencia** | LED, barra superior + laterales, color rojo/azul según normativa |
| **Sirena Electrónica** | Múltiples tonos, 120 dB @ 1 metro |
| **Balizas** | Triángulos reflectivos, conos |

---

## 8. CUMPLIMIENTO NORMATIVO

| Norma | Descripción |
|:------|:------------|
| **NTC 3729** | Ambulancias terrestres tipo TAM (Colombia) |
| **ISO 1865** | Patient handling equipment used in road ambulances |
| **Resolución 2003 de 2014** | Dotación de ambulancias en Colombia |
| **Normativa ANI** | Requisitos específicos del contrato |

---

## 9. PROVEEDORES SUGERIDOS

### 9.1 Vehículos Base + Adaptación
- **Ambulancias Panamericana** (Colombia)
- **CIMA Ambulancias** (Colombia)
- **Braun Industries** (USA/Internacional)
- **EMS World** (Colombia)

### 9.2 Equipos Médicos
- **Philips Healthcare** (Monitores, desfibriladores)
- **Zoll Medical** (Desfibriladores, ventiladores)
- **Mindray** (Monitores de signos vitales)
- **Medtronic Physio-Control** (Desfibriladores LIFEPAK)

---

## 10. COSTOS ESTIMADOS

| Componente | Costo Unitario (USD) |
|:-----------|:---------------------|
| Vehículo base (Mercedes Sprinter/similar) | $55,000 |
| Adaptación y compartimento médico | $45,000 |
| Equipamiento médico completo | $65,000 |
| Comunicaciones y GPS | $8,000 |
| **TOTAL por ambulancia** | **$173,000** |

**Total 3 ambulancias:** $519,000 USD

---

## 11. MANTENIMIENTO

| Tipo | Frecuencia |
|:-----|:-----------|
| **Vehículo** | Cada 10,000 km o 6 meses |
| **Equipos médicos** | Calibración anual, mantenimiento preventivo trimestral |
| **Limpieza y desinfección** | Después de cada servicio |
| **Revisión de medicamentos** | Mensual (vencimientos, reposición) |

---

## 12. PRÓXIMOS PASOS

- [ ] Solicitar cotizaciones a Ambulancias Panamericana, CIMA, EMS World
- [ ] Definir protocolos médicos (Manual de Atención Prehospitalaria)
- [ ] Contratar personal médico y paramédico certificado
- [ ] Establecer convenios con hospitales de referencia

---

## 13. CONTROL DE VERSIONES

| Versión | Fecha | Responsable | Descripción |
|:---:|:---:|:---|:---|
| **v1.0** | 18/10/2025 | Administrador Contractual EPC | Especificación técnica inicial de ambulancias TAM |

---

**Fin del documento - T04 Especificación Técnica Ambulancias TAM**  
*Metodología Punto 42 v1.0*

