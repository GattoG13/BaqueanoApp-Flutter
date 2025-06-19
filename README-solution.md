# 🧭 Soluciones – Bootcamp BaqueanoApp

Desarrollado por **Gian Franco**  
Repositorio personal con la resolución completa de cada fase del proceso de selección de BaqueanoApp.

---

## 📁 Índice de Fases

- [Fase 1 – Fundamentos de Flutter y Dart](#fase-1--fundamentos-de-flutter-y-dart)
- [Fase 2 – Bloc & State Management](#fase-2--bloc--state-management)
- [Fase 3 – Clean Architecture](#fase-3--clean-architecture)
- [Fase 4 – Evaluación Final](#fase-4--evaluación-final)

---

## 🧩 Fase 1 – Fundamentos de Flutter y Dart

### ✅ Ejercicio 1 

> Implementación de un sistema básico de perfiles de usuario con Dart, aplicando programación orientada a objetos, asincronía, validación y cálculo.

📌 **Ruta del ejercicio:** `fase1_fundamentos_flutter_y_dart/01_dart_basics/ejercicios/challenge.dart`

### ✅ Funcionalidades implementadas:
- Excepción personalizada `InvalidUsernameException`
- Clase `Usuario` con `name`, `age`, `hobbies`, `role`
- Enum `UserRole` con valores `admin` y `normal`
- Función `getUserProfile` con `Future`, validación y delay simulado
- Función `calculateSalary` con control de flujo por `switch`
- Tests automáticos embebidos (todos superados)

### 🧪 Resultado
✅ Test 1 de getUserProfile aprobado
✅ Test 2 de getUserProfile aprobado (excepción capturada)
✅ Test 3 de salario (admin) aprobado
✅ Test 4 de salario (normal) aprobado


---

### ✅ Ejercicio 2  – Widget Tree y Ciclo de Vida

> En esta etapa trabajé con widgets con estado (`StatefulWidget`) para entender el ciclo de vida, el árbol de widgets y la reactividad en Flutter.

---



**Objetivo:**  
Corregir un error común al usar `BuildContext` luego de un `await`.

**Solución aplicada:**
- Detecté el mal uso de `ScaffoldMessenger.of(context)` fuera del `build()` y luego de un `Future.delayed`.
- Agregué `if (!mounted) return;` para evitar errores si el widget fue desmontado.
- Mostré el `SnackBar` únicamente si el widget seguía en pantalla.

**Aprendizaje clave:**  
> Cómo evitar errores de contexto con `mounted` y buenas prácticas con `setState` asincrónico.


**Objetivo:**  
Crear un widget con estado que reciba un nombre, permita seleccionar un estado de ánimo y muestre una reacción visual y textual.

**Funcionalidades:**
- Recibe el parámetro `username`.
- Usa `initState()` y `dispose()` para imprimir logs de ciclo de vida.
- Renderiza un `DropdownButton` con emociones (`feliz`, `triste`, `enojado`).
- Muestra un `SnackBar` y `print()` diferente para cada emoción.
- Usa `setState()` para actualizar la UI.
- Aplica estilos con `Theme.of(context)`.

**Snippet destacado:**
```dart
DropdownButton<String>(
  value: _selectedMood,
  items: ['feliz', 'triste', 'enojado']
    .map((mood) => DropdownMenuItem(value: mood, child: Text(mood)))
    .toList(),
  onChanged: _handleMoodChange,
).

## 🧪 Ejercicio 3 – Tarjeta de perfil visual

### 🎯 Objetivo

Construir una tarjeta de perfil centrada visualmente utilizando una imagen precompuesta con avatar, nombre, descripción y un ícono decorativo. El foco de este desafío es la presentación visual, sin lógica funcional.

---

### ✅ Requisitos

- Mostrar correctamente una **imagen completa** (`assets/avatar.png`) sin deformación ni bordes cortados.
- Usar un **contenedor con bordes redondeados, fondo blanco y sombra sutil**.
- Centrar visualmente la card en la pantalla, con un **ancho máximo** definido para mantener la proporción.
- Eliminar cualquier **borde negro** o sombra sobresaliente con `clipBehavior: Clip.antiAlias`.
- No renderizar textos ni íconos manualmente, ya que **todo está embebido en la imagen**.
- El ícono del mensaje no es funcional (forma parte del diseño).

---

### 📷 Resultado esperado

```dart
return Container(
  clipBehavior: Clip.antiAlias,
  decoration: BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(16),
    boxShadow: [
      BoxShadow(
        color: Colors.black.withOpacity(0.08),
        blurRadius: 12,
        offset: Offset(0, 4),
      ),
    ],
  ),
  child: Image.asset(
    'assets/avatar.png',
    fit: BoxFit.cover,
    width: double.infinity,
    height: 100,
  ),
);

## 🚀 Ejercicio 4 – Selector de frutas con navegación

Este ejercicio pone en práctica los conceptos de navegación en Flutter, permitiendo cambiar de pantalla y pasar datos entre ellas.

---

### 🎯 Objetivo

Construir una aplicación que permita seleccionar una fruta desde una segunda pantalla y devolver el valor a la pantalla principal.

---

### ✅ Requisitos funcionales

- La pantalla principal debe mostrar:
  - Un `AppBar` con el título "Seleccionador de Frutas".
  - Un mensaje con la fruta seleccionada o un texto por defecto si no hay selección.
  - Un botón que navega a otra pantalla para elegir la fruta.

- La pantalla secundaria debe:
  - Mostrar un `AppBar` con el título "Elige una fruta".
  - Contener una `ListView` con una lista de frutas.
  - Al seleccionar una fruta, debe volver a la pantalla anterior y mostrarla.

---

### 🧠 Conceptos aplicados

- `Navigator.push` para navegar a otra pantalla.
- `Navigator.pop` para devolver un resultado.
- Gestión de estado con `setState` para actualizar la UI.
- Uso de `ListView.builder`, `ElevatedButton`, `Text`, `ListTile` y estructuras condicionales.

---

# 🐾 Challenge Libre – Registro de Mascota y Pantalla de Bienvenida

Este proyecto es una mini app Flutter creada como parte del cierre de la **Fase 1** del bootcamp, integrando conceptos de Dart, widgets con estado, navegación, validaciones y layouts.

---

## 🎯 Objetivo

Construir una app con **dos pantallas**:

### 1️⃣ Registro de Mascota (`RegistroMascotaScreen`)
Formulario que permite registrar:

- 📛 **Nombre** (campo de texto)
- 🐶 **Tipo** (Dropdown con opciones: Perro, Gato, Otro usando un `enum`)
- 🎂 **Edad** (campo numérico)

✔️ Al presionar el botón "Registrar":
- Se validan los datos (nombre no vacío, edad > 0)
- Si todo es válido, se crea una instancia de `Mascota` y se navega a la segunda pantalla

---

### 2️⃣ Pantalla de Bienvenida
Muestra:

- ✅ Un mensaje:  
  `¡Bienvenido <nombre> el <tipo>!`
- 🎨 Un ícono según tipo:
  - `Icons.pets` para Perro
  - `Icons.pets_outlined` para Gato
  - `Icons.question_mark` para Otro
- 🧸 Edad formateada:
  - `< 2 años`: muestra “Joven 🐣”
  - `>= 2 años`: muestra “Adulto 🐾”
- 🔁 Botón para "Registrar otra mascota", que hace `Navigator.pop(context, true)`

---

## 🧱 Estructura de clases

```dart
enum TipoMascota { perro, gato, otro }

class Mascota {
  final String nombre;
  final TipoMascota tipo;
  final int edad;

  Mascota({
    required this.nombre,
    required this.tipo,
    required this.edad,
  });
}
