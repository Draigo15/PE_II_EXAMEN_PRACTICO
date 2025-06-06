# Examen Práctica Unidad II - PETI

**Nombres y Apellidos del Alumno:** Rodrigo Lira Alvarez  
**Fecha:** 28/05/2025  

## Repositorio

URL del repositorio GitHub:  
[https://github.com/Draigo15/PE_II_EXAMEN_PRACTICO.git](https://github.com/Draigo15/PE_II_EXAMEN_PRACTICO.git)

## Mejoras realizadas

- Se implementó la vista **Identificación de Estrategias**, incluyendo la matriz FO, FA, DO y DA, con suma automática de columnas y cálculo de puntuaciones.
- Se añadió la vista **Matriz CAME**, con campos para acciones tipo CAME (Corregir, Afrontar, Mantener y Explotar) vinculados al plan estratégico.
- Se conectó toda la lógica a base de datos con persistencia de datos por usuario (`PlanId`).
- Se aplicó un diseño visual similar al formato Excel entregado, para mayor claridad y alineación con las plantillas académicas.
- Se incorporó navegación entre vistas (análisis Porter, estrategias, matriz CAME y resumen estratégico).

## Capturas de pantalla



**Identificación de Estrategias:**

![Identificación de Estrategias 1](../Capturas/sistema/IdentificacionEstrategias1.PNGCapturas/sistema/IdentificacionEstrategias1.PNG)  
![Identificación de Estrategias 2](../Capturas/sistema/IdentificacionEstrategias2.PNG)

**Matriz CAME:**

![Matriz CAME](../Capturas/sistema/matrizcame1.PNG)

**Controladores y Vistas:**
- Controlador Identificación Estrategias  
![Controlador IE](../Capturas/Codigo/controladorIE.PNG)  
- Controlador Matriz CAME  
![Controlador CAME](../Capturas/Codigo/controladorMCAME.PNG)  
- Vista Estrategias  
![Vista IE](../Capturas/Codigo/vistaIE.PNG)  
- Modelo Identificación Estrategias 
![Modelo IE](../Capturas/Codigo/modeloIE.PNG)

**Base de Datos:**
- Tabla IdentificaciónEstrategias 
![BD IE](../Capturas/BD/identificacionEstrategias.PNG)  
- Tabla MatrizCAME
![BD CAME](../Capturas/BD/matrizcame.PNG)

## Descripción

Este sistema forma parte del Plan Estratégico de Tecnologías de Información (PETI) y permite al usuario gestionar de forma visual y estructurada el análisis estratégico mediante herramientas como la **Matriz FODA**, **Identificación de Estrategias** (FO, FA, DO, DA) y **Matriz CAME**. Cada sección guarda sus resultados asociados al plan estratégico vigente. El objetivo es apoyar la toma de decisiones estratégicas a partir del diagnóstico empresarial.

---
