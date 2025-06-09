# 🔄 Fase 2 – Bloc & State Management

En esta fase aprenderás cómo gestionar el estado de tu aplicación Flutter de forma escalable, clara
y mantenible utilizando el patrón Bloc. A través de tres etapas progresivas vas a desarrollar una
comprensión profunda de cómo conectar lógica con interfaz de usuario en una arquitectura reactiva y
profesional.

---

## 🎯 Objetivo de la fase

- Comprender qué es el patrón Bloc y por qué es útil
- Aprender la diferencia entre `Cubit` y `Bloc`
- Conectar estado y UI con `BlocBuilder` y `BlocListener`
- Modelar eventos y estados usando `freezed`
- Separar responsabilidades entre lógica de negocio y presentación visual

---

## 🧭 Etapas de esta fase

### 1️⃣ Bloc en Dart puro (sin Flutter)

> Aprenderás la base de cómo funciona Bloc y Cubit como patrones reactivos. Verás cómo emiten
> valores a través de streams, y cuál es la diferencia entre Cubit (sin eventos) y Bloc (con eventos).

- Ejemplos simples con lógica con Dart puro
- Uso de `emit`, `on<Event>` y `stream.listen`

### 2️⃣ Bloc en Flutter (UI reactiva)

> Conectarás tus bloques de lógica con la UI utilizando widgets especiales como `BlocBuilder`,
`BlocListener` y `BlocConsumer`.

- Inyección de dependencias con `BlocProvider`
- Mostrar datos reactivos en la UI
- Efectos secundarios (snackbars, navegación)

### 3️⃣ Bloc avanzado con Freezed

> Llevarás tus Blocs a un nivel profesional utilizando `freezed` para modelar eventos y estados de
> forma robusta y declarativa.

- Uso de `sealed classes` con `switch`
- Eliminación de lógica booleana débil (`isLoading`, etc.) para verificar estados
- Uso de `copyWith` para estados inmutables

---

## 💪 Habilidades adquiridas

Al completar esta fase estarás preparado/a para:

- Construir lógica compleja en Bloc sin acoplarla a la UI
- Modelar correctamente los flujos de interacción del usuario
- Usar Flutter con un enfoque declarativo y escalable
- Seguir buenas prácticas en proyectos de mediana a gran escala

---

## 🧪 Desafío integrador – Formulario reactivo con Bloc y Freezed

Construirás una pantalla con un formulario de contacto compuesto por campos validados (nombre, email
y mensaje). El Bloc será responsable de validar, manejar el estado de carga, y emitir estados como
`success` o `error`. Utilizarás `freezed` para modelar toda la lógica de forma robusta.

Este challenge pondrá a prueba tu dominio de Bloc, Cubit, Flutter UI reactiva y modelado con
Freezed.

> 📄 El detalle completo de este desafío se encuentra en el archivo correspondiente dentro de esta
> etapa.
