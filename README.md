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
El bootcamp se divide en **3 fases principales**, cada una enfocada en un área fundamental del desarrollo con Flutter:

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

### 3. 🧼 Clean Architecture
> Organización del código siguiendo principios de arquitectura limpia: separación de responsabilidades, escalabilidad y mantenibilidad.

En esta etapa vas a:
- Dividir el proyecto en capas: Presentación, Aplicación, Dominio y Datos
- Aplicar principios de SOLID
- Crear módulos testeables y reutilizables

---

## 📁 Cómo está organizado este repositorio

Cada fase contiene su propio directorio con:
- Guías de lectura (`README.md`)
- Ejercicios guiados con código base y `TODOs`
- Challenges libres para evaluar el dominio práctico

---

## 🧠 Recomendaciones generales y evaluación

Para cualquier tipo de ejercicio, se puede buscar información adicional. La documentación oficial de
Flutter y Dart es una excelente fuente de referencia. También se permite el uso de inteligencia artificial para resolver dudas, pero **no se recomienda abusar** de esta herramienta: el objetivo es que aprendas a resolver problemas por tu cuenta. Además, la IA puede sugerir soluciones obsoletas, incorrectas o innecesariamente complejas para problemas sencillos.

Se evaluará tanto tu capacidad de resolver problemas técnicos como tu **autonomía para buscar soluciones**. Esto incluye el uso efectivo de buscadores, documentación oficial, y la consulta al referente del bootcamp cuando sea necesario. Lo importante es que demuestres iniciativa y estrategia para superar bloqueos.

Los ejercicios libres serán el principal criterio de evaluación. Se analizará:
- Cómo aplicás los nuevos conceptos
- Tu capacidad para resolver problemas
- Tu claridad en la implementación

Se recomienda, una vez se comience a trabajar con Flutter (a partir de la Fase 1, Etapa 2), **crear un solo proyecto** donde se irán agregando todos los ejercicios y challenges de cada etapa.

Por ejemplo, si tu nombre es `Juan Perez`, podés iniciar así:
```bash
flutter create --platforms=web,android juan_perez_flutter_bootcamp
```

> 💡 Recomendamos desarrollar en plataforma web por simplicidad de configuración. Si preferís Android, podés usar un emulador o tu dispositivo móvil conectado.


Luego reemplazá el contenido de `lib/main.dart` con el código base de los ejercicios, y organizá cada uno dentro del directorio `lib/ejercicios/`, por ejemplo:
```
lib/
├── main.dart  ← archivo principal que importa e inicializa las soluciones implementadas
├── ejercicios/  ← aquí se agrupan todos los ejercicios del bootcamp
│   ├── fase1_flutter_basics/
│   │   ├── etapa1_dart_fundamentals/
│   │   ├── etapa2_widget_tree/
│   │   ├── etapa3_layouts/
│   │   └── etapa4_navegacion/
```

---

¡Mucho éxito!
Este bootcamp está pensado para acompañarte en tus primeros pasos dentro de BaqueanoApp y ayudarte a crecer como desarrollador/a Flutter 🚜✨
