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

## 🧩 Fase 2 – Widget Tree y Ciclo de Vida

> En esta etapa trabajé con widgets con estado (`StatefulWidget`) para entender el ciclo de vida, el árbol de widgets y la reactividad en Flutter.

---

### ✅ Ejercicio 1 – Diagnóstico de ciclo de vida (`diagnostico_widget_tree.dart`)

**Objetivo:**  
Corregir un error común al usar `BuildContext` luego de un `await`.

**Solución aplicada:**
- Detecté el mal uso de `ScaffoldMessenger.of(context)` fuera del `build()` y luego de un `Future.delayed`.
- Agregué `if (!mounted) return;` para evitar errores si el widget fue desmontado.
- Mostré el `SnackBar` únicamente si el widget seguía en pantalla.

**Aprendizaje clave:**  
> Cómo evitar errores de contexto con `mounted` y buenas prácticas con `setState` asincrónico.

---

### ✅ Ejercicio 2 – Componente `MoodChangerWidget` (`widget_challenge.dart`)

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
)
