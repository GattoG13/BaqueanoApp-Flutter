# 🧭 Soluciones – Bootcamp BaqueanoApp

Desarrollado por **Gian Franco**  
Repositorio personal con la resolución completa de cada fase del proceso de selección de BaqueanoApp.

review app: ![CodeRabbit Pull Request Reviews](https://img.shields.io/coderabbit/reviews?style=flat)

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

## 🧩 Fase 2 – Bloc & Stage Management

## 🌡️ Ejercicio 1 – Simulador de Temperatura con Cubit y Bloc

Este ejercicio tuvo como objetivo comparar el funcionamiento de Cubit y Bloc en Dart puro.

---

### ✅ Implementación realizada

- Se implementó una clase `TemperatureCubit` que maneja un estado `double` y provee dos métodos:
  - `increase()` ➕ incrementa la temperatura
  - `decrease()` ➖ decrementa la temperatura

- También se creó una clase `TemperatureBloc` con eventos:
  - `IncreaseTemp`
  - `DecreaseTemp`
  
  Se manejan dentro del `Bloc` con `on<Event>()`.

---

### 📤 Resultados en consola

```bash
== Cubit ==
[Cubit] Temperatura actual: 21.0°C
[Cubit] Temperatura actual: 22.0°C
[Cubit] Temperatura actual: 21.0°C

== Bloc ==
[Bloc] Temperatura actual: 21.0°C
[Bloc] Temperatura actual: 22.0°C
[Bloc] Temperatura actual: 21.0°C



# 🍌 Ejercicio 2 – Bloc integrado con Flutter

Este ejercicio consistió en construir una app Flutter que conecta un `Bloc` con la interfaz de usuario para seleccionar una fruta.

---

## 🎯 Objetivo

- Conectar Bloc a Flutter.
- Mostrar una fruta seleccionada en pantalla.
- Lanzar un `SnackBar` con el nombre de la fruta.

---

## ⚙️ Funcionalidad implementada

- **Bloc** (`FruitBloc`) con:
  - Evento: `SelectedFruitEvent`
  - Estado: `FruitState`, que contiene `selectedFruit` (nullable)
- UI con:
  - `BlocBuilder` para reconstruir el widget con la fruta seleccionada.
  - `BlocListener` para lanzar el `SnackBar` con un mensaje.

---

## 🧩 Componentes del código

### 📦 Evento

```dart
class SelectedFruitEvent extends FruitEvent {
  final String fruit;
  SelectedFruitEvent(this.fruit);
}
🧠 Estado
dart
Copiar
Editar
class FruitState {
  final String? selectedFruit;
  FruitState({this.selectedFruit});
}
🔁 Bloc
dart
Copiar
Editar
class FruitBloc extends Bloc<FruitEvent, FruitState> {
  FruitBloc() : super(FruitState()) {
    on<SelectedFruitEvent>((event, emit) {
      emit(FruitState(selectedFruit: event.fruit));
    });
  }
}
🖼️ UI con Flutter + Bloc
dart
Copiar
Editar
BlocProvider(
  create: (_) => FruitBloc(),
  child: Scaffold(
    appBar: AppBar(title: const Text('Seleccioná tu fruta')),
    body: BlocListener<FruitBloc, FruitState>(
      listener: (context, state) {
        if (state.selectedFruit != null) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('Seleccionaste: ${state.selectedFruit}')),
          );
        }
      },
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BlocBuilder<FruitBloc, FruitState>(
              builder: (context, state) {
                final fruit = state.selectedFruit;
                return Text(
                  fruit != null
                    ? 'Fruta seleccionada: $fruit'
                    : 'Ninguna fruta seleccionada',
                  style: const TextStyle(fontSize: 20),
                );
              },
            ),
            const SizedBox(height: 24),
            for (final fruit in ['Manzana', 'Banana', 'Naranja']) ...[
              ElevatedButton(
                onPressed: () {
                  context.read<FruitBloc>().add(SelectedFruitEvent(fruit));
                },
                child: Text(fruit),
              ),
              const SizedBox(height: 8),
            ]
          ],
        ),
      ),
    ),
  ),
);


### ✅ Ejercicio 3 – Freezed y buenas prácticas

Este ejercicio consistió en implementar un `Bloc` que gestiona un contador, utilizando **Freezed** para definir eventos y estados de forma más clara, segura y escalable.

---

#### 🧠 Conceptos aplicados

- Uso de `freezed_annotation` y generación automática de código (`.freezed.dart`)
- Implementación de eventos con subclases (`IncrementPressed`, `DecrementPressed`)
- Uso de `copyWith` para mantener la inmutabilidad del estado
- Separación clara entre lógica de negocio (`counter_bloc.dart`) y la UI (`main.dart`)

---

#### 🧩 Estructura de archivos

📁 lib/
├── blocs/
│ ├── counter_bloc.dart
│ └── counter_bloc.freezed.dart
└── main.dart

yaml
Copiar
Editar

---

#### ▶️ Cómo correrlo

Desde el proyecto `profile_card_app`:

1. Copiar `counter_bloc.dart` a `lib/`
2. Ejecutar el generador:

```bash
dart run build_runner build --delete-conflicting-outputs

## 🧪 Challenge Integrador – Formulario reactivo con Bloc y Freezed

Este challenge implementa un formulario con tres campos: **nombre**, **email** y **mensaje**, gestionado mediante Bloc y Freezed para un control total del estado y la validación.

### ✅ Características implementadas

- `Bloc` + `Freezed` para modelar eventos y estados
- Validación en el Bloc (sin lógica en la UI):
  - Nombre mínimo 3 caracteres
  - Email debe contener `@` y `.`
  - Mensaje no puede estar vacío
- Estados:
  - `initial`, `validating`, `submitting`, `success`, `error(String)`
- Feedback visual con:
  - Loader (`CircularProgressIndicator`)
  - `SnackBar` con mensajes de error o éxito
- Reactividad completa entre formulario y estado Bloc

### 📂 Archivos creados

- `contact_form_bloc.dart` → eventos, estados y lógica del formulario
- `contact_form_bloc.freezed.dart` → generado automáticamente por `build_runner`
- `contact_form_screen.dart` → UI reactiva con `BlocBuilder` y `BlocListener`

### 📸 UI Final

Formulario centrado, limpio y funcional con un botón "Enviar" que se desactiva mientras valida o envía, y feedback inmediato.

---

```dart
void main() {
  runApp(const MaterialApp(
    home: ContactFormScreen(),
  ));
}


# 🧱 Fase 3 – Ejercicio 1: Fundamentos de Clean Architecture

Este ejercicio consistió en reorganizar una funcionalidad simple dentro de un proyecto Flutter, siguiendo los principios de **Clean Architecture**. Se trabajó sobre una app que muestra el mensaje:

Bienvenido, Juan

yaml
Copiar
Editar

---

## 📂 Estructura aplicada

Se crearon las siguientes carpetas siguiendo las capas de Clean Architecture:

lib/
└── cleanArquitectura/
├── presentacion/
│ └── mensaje_widget.dart
├── dominio/
│ ├── entidades/
│ │ └── mensaje_bienvenida.dart
│ ├── repositorios/
│ │ └── bienvenida_repositorio.dart
│ └── casos_de_uso/
│ └── obtener_mensaje.dart

yaml
Copiar
Editar

---

## 🔧 Archivos reubicados

- `mensaje_widget.dart` → `presentacion/`
- `mensaje_bienvenida.dart` → `dominio/entidades/`
- `bienvenida_repositorio.dart` → `dominio/repositorios/`
- `obtener_mensaje.dart` → `dominio/casos_de_uso/`

---

## ✅ Correcciones realizadas

- Se corrigieron los **imports relativos** para mantener la comunicación entre capas:
  - Ejemplo:  
    ```dart
    import '../entidades/mensaje_bienvenida.dart';
    ```
- Se respetó la **regla de dependencia**:
  - `presentacion` → depende de `casos_de_uso`
  - `casos_de_uso` → depende de `repositorios`
  - `repositorios` → depende de `entidades`

---

## 🧪 Resultado

La aplicación sigue funcionando correctamente y muestra en pantalla:

Bienvenido, Juan

yaml
Copiar
Editar

Esto confirma que la **separación de responsabilidades** se aplicó correctamente y el flujo de dependencias sigue siendo funcional.

---

## 📚 Conocimientos aplicados

- Organización del proyecto por capas (`presentacion`, `dominio`)
- Principio de inversión de dependencias
- Separación de lógica entre UI, entidades y casos de uso
- Modularidad y escalabilidad de código

---


# ✅ Ejercicio 3 – Inyección de Dependencias con GetIt + Injectable

Este ejercicio consistió en configurar e implementar correctamente un sistema de inyección de dependencias en BaqueanoApp utilizando `get_it` y `injectable`.

---

## 🧱 Estructura creada

```bash
lib/
├── core/
│   ├── injection/
│   │   ├── injection.dart
│   │   ├── injection.config.dart
│   ├── pruebas/
│   │   └── prueba_inyeccion_screen.dart
│   └── logger.dart
⚙️ Dependencias usadas
yaml
Copiar
Editar
dependencies:
  get_it: ^7.6.0
  injectable: ^2.1.2

dev_dependencies:
  build_runner: ^2.4.6
  injectable_generator: ^2.1.6
📁 Archivos clave
injection.dart
dart
Copiar
Editar
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'injection.config.dart';

final getIt = GetIt.instance;

@InjectableInit()
Future<void> configureInjection() async {
  await getIt.init();
}
logger.dart
dart
Copiar
Editar
abstract class Logger {
  void log(String message);
}

@LazySingleton(as: Logger)
class LoggerImpl implements Logger {
  @override
  void log(String message) {
    print('[LOG] $message');
  }
}
prueba_inyeccion_screen.dart
dart
Copiar
Editar
import 'package:flutter/material.dart';
import '../injection/injection.dart';
import '../logger.dart';

class PruebaInyeccionScreen extends StatelessWidget {
  const PruebaInyeccionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Prueba Inyección')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            final logger = getIt<Logger>();
            logger.log('Inyección funcionando');
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('¡Inyección OK!')),
            );
          },
          child: const Text('Probar Logger'),
        ),
      ),
    );
  }
}

🧠💡 Desafío Integrador – Fase 3: Aplicación de Notas con Clean Architecture + Bloc
📍 Ruta del ejercicio: fase3_clean_architecture/desafio_integradorFase3/

✅ Funcionalidades implementadas:
Arquitectura limpia basada en capas (domain, application, infrastructure, presentation)

Inyección de dependencias con get_it e injectable

Gestión de estado con Bloc + Cubit

Repositorio in-memory para las notas

Componente UI NotasScreen que permite:

Ingresar texto

Agregarlo como una nota

Visualizar la lista de notas renderizadas

Validación para evitar entradas vacías

Estilado visual con íconos, bordes y diseño responsivo

Logs por consola para trazabilidad de estado

🧪 Resultado
🟢 Notas agregadas correctamente
🟢 Estado actualizado correctamente en Bloc
🟢 Lista renderizada correctamente tras resolver problemas de importación
🟢 Bug corregido: Nota no se mostraba por error en el import desde nota_card.dart
🟢 Verificación por consola: Nota agregada, Notas actuales, Notas actualizadas

⚠️ Problemas detectados y solucionados:
❌ Error en el pubspec.yaml por uso de guion (-) en el nombre del package (solución: usar _)

❌ Imports fallidos por nombres incorrectos de carpeta

❌ Error ProviderNotFoundException por mal uso del BlocProvider

❌ El Bloc sí actualizaba el estado, pero las notas no se renderizaban (por error en el NotaCard)

✅ Todo solucionado tras corregir el import de la clase Nota y validar el constructor.


🌾 Proyecto Final – Mi Huerta Inteligente
Este proyecto representa la evaluación integradora del Bootcamp de Flutter, aplicando Clean Architecture adaptada, manejo de estado con Bloc/Cubit, inyección de dependencias con Injectable, y validaciones básicas de UI.

🧩 Descripción general
La aplicación "Mi Huerta Inteligente" permite:

Agregar cultivos con nombre y fecha de siembra automática.

Ver un listado de cultivos activos y cosechados.

Marcar cultivos como cosechados.

Mostrar un mensaje de error si el usuario intenta agregar un cultivo sin nombre.

🏗️ Estructura del proyecto
css
Copiar
Editar
lib/
├── core/
│   └── injection/
│       └── injection.dart
├── features/
│   └── huerta_inteligente/
│       ├── application/
│       │   └── huerta_cubit.dart
│       ├── domain/
│       │   ├── entities/
│       │   │   └── cultivo.dart
│       │   ├── repositories/
│       │   │   └── cultivo_repository.dart
│       │   └── services/
│       │       └── gestor_cultivos.dart
│       ├── infraestructure/
│       │   └── repositories/
│       │       └── cultivo_repository_impl.dart
│       └── presentation/
│           ├── pages/
│           │   └── huerta_screen.dart
│           └── widgets/
│               └── cultivo_card.dart
└── main.dart
🛠️ Detalles técnicos
Entidad principal: Cultivo, que contiene:

String nombre

DateTime fechaSiembra

bool cosechado

Domain:

cultivo_repository.dart: interfaz con métodos CRUD básicos.

gestor_cultivos.dart: lógica intermedia para agregar y cosechar.

Infrastructure:

cultivo_repository_impl.dart: implementación en memoria del repositorio.

Application:

huerta_cubit.dart: maneja el estado reactivo con Bloc.

Presentation:

huerta_screen.dart: UI con TextField, botón de acción y lista.

cultivo_card.dart: widget reutilizable para mostrar cada cultivo.

Validaciones:

Se previene agregar cultivos vacíos mostrando un SnackBar.

🧪 Funcionamiento
El usuario ingresa el nombre del cultivo y presiona "Agregar".

Se muestra la lista de cultivos activos.

Puede marcar un cultivo como cosechado y se moverá de sección.

El estado se mantiene dinámicamente con Cubit.

✅ Buenas prácticas aplicadas
Clean Architecture con separación clara de capas.

Manejo de estado con Bloc/Cubit.

Inyección de dependencias con injectable y configuración desde injection.dart.

Validaciones mínimas de formulario.

Código modular, legible y bien estructurado.

