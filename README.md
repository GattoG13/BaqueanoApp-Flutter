# 🐮 Bootcamp Baqueano – Introducción al Desarrollo con Flutter

Bienvenido/a al Bootcamp de ingreso para el equipo de desarrollo de **BaqueanoApp**. Este repositorio tiene como objetivo nivelar y evaluar conocimientos clave para trabajar con Flutter y el stack tecnológico utilizado en el proyecto.

---

## 🚀 Requisitos previos

### 🔧 Instalación de Flutter
Para comenzar, necesitás tener Flutter instalado en tu máquina local. Seguí la guía oficial para tu sistema operativo:
👉 [flutter.dev/docs/get-started/install](https://flutter.dev/docs/get-started/install)

Una vez instalado, asegurate de ejecutar:
```bash
flutter doctor
```
para verificar que todo esté correctamente configurado.

---

## 🧭 Estructura del Bootcamp

El bootcamp se divide en **3 fases principales** más una evaluación final integradora:

### 1. 🧱 Flutter & Dart Basics
> Introducción al lenguaje Dart, ciclo de vida de widgets, diseño de interfaces visuales y navegación entre pantallas.

En esta etapa vas a:
- Aprender los fundamentos de Dart
- Entender cómo funcionan los `StatefulWidget` y `StatelessWidget`
- Componer layouts y manejar constraints
- Navegar entre pantallas y pasar/recibir datos

### 2. 🔄 Bloc & State Management
> Exploración del patrón Bloc como solución para gestionar el estado de forma escalable y desacoplada.

En esta etapa vas a:
- Comprender eventos, estados y transiciones
- Integrar Bloc en una app real
- Conectar lógica de negocios con la UI de forma reactiva
- Utilizar freezed para modelado de estados/eventos

### 3. 🧼 Clean Architecture
> Organización del código siguiendo principios de arquitectura limpia: separación de responsabilidades, escalabilidad y mantenibilidad.

En esta etapa vas a:

- Comprender la arquitectura adaptada utilizada en BaqueanoApp
- Aplicar separación de capas: Presentación, Aplicación, Dominio e Infraestructura
- Implementar inyección de dependencias con `injectable`
- Consolidar tu conocimiento en un desafío de arquitectura modularizada

### 4. ✅ Evaluación final integradora

> En esta última parte aplicarás todos los conceptos aprendidos en un proyecto completo con una
> funcionalidad propuesta realista.

---

## 📁 Organización del repositorio

Cada fase contiene su propio directorio con:
- Guías de lectura (`README.md`)
- Ejercicios guiados con código base y comentarios `TODO`
- Challenges integradores para evaluar el dominio de la etapa

Una vez se comience a trabajar con Flutter (a partir de la Fase 1, Etapa 2), deberás **crear un solo
proyecto** en el que agregarás los ejercicios integradores de cada etapa y el desafío final. Los
ejercicios intermedios pueden ser realizados en archivos sueltos o descartables.

Este proyecto será el **único entregable** y debe estar organizado según los desafíos integradores
evaluados.

### 📦 Estructura sugerida del proyecto

```bash
lib/
├── main.dart                  ← archivo principal que importa e inicializa las soluciones implementadas
├── features/
│   ├── integrador_fase1/      ← solución del challenge integrador de Fase 1
│   ├── integrador_fase2/      ← solución del challenge integrador de Fase 2
│   ├── integrador_fase3/      ← solución del challenge integrador de Fase 3
│   └── evaluacion_final/      ← solución del proyecto final integrador
```

> 💡 Recomendamos desarrollar en plataforma web por simplicidad de configuración. Si preferís
> Android, podés usar un emulador o tu dispositivo móvil conectado.

---

## 📐 Buenas prácticas de legibilidad

Durante todo el Bootcamp, se evaluará de forma transversal la **legibilidad y calidad del código**.
Esto incluye:

- Nombres claros y significativos para clases, variables y métodos
- Comentarios cuando sea necesario para entender la intención
- Separación de responsabilidades
- Código limpio, evitando duplicación o lógica innecesaria

📌 Escribí tu código como si otra persona tuviera que mantenerlo en 3 meses. Esto es tan importante
como que el código funcione.

---

## 🧠 Evaluación y criterios

Lo que se evaluará al finalizar el Bootcamp será:

- Los **challenges integradores** de cada fase (uno por fase, tres en total)
- El **proyecto final integrador**
- El **progreso general** durante el Bootcamp

La corrección no se enfocará solamente en el resultado final, sino en el proceso, la autonomía para
investigar, la aplicación correcta de los conceptos aprendidos y la claridad del código.

---

¡Mucho éxito! 
Este bootcamp está pensado para acompañarte en tus primeros pasos dentro de Flutter aplicado a proyectos reales como lo es BaqueanoApp 🚜✨
