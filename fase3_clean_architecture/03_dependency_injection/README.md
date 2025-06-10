# 🧩 Guía de inyección de dependencias con `injectable` y `GetIt`

En BaqueanoApp utilizamos `GetIt` junto al paquete `injectable` para resolver la inyección de dependencias de forma escalable, declarativa y mantenible.

Esta guía explica:
- Qué rol cumple cada anotación de `injectable`
- Cómo se transforma el código con y sin esta herramienta
- Cómo se aplica en nuestra arquitectura adaptada de Clean Architecture

---

## 🚀 ¿Qué es GetIt?

`GetIt` es un **Service Locator**, que permite acceder a instancias registradas desde cualquier parte del proyecto sin necesidad de pasar dependencias manualmente.

```dart
final getIt = GetIt.instance;

getIt.registerSingleton<ApiClient>(ApiClient());

final api = getIt<ApiClient>();
```

Aunque `GetIt` se puede usar de forma manual, cuando el proyecto crece es mejor gestionarlo con `injectable`, que genera el registro automáticamente en base a anotaciones.

---

## 🔧 ¿Qué es `injectable`?

Es un paquete que trabaja sobre `GetIt` y genera todo el wiring de dependencias automáticamente usando anotaciones y build_runner.

Instalación:
```bash
flutter pub add get_it
flutter pub add injectable
flutter pub add build_runner --dev
flutter pub add injectable_generator --dev
```

Comando para generar:
```bash
flutter pub run build_runner build --delete-conflicting-outputs
```
Que es el mismo commando utilizado para generar los freezed files.

---

## 🏷️ Anotaciones principales

### ✅ `@injectable`
Clases normales, pueden tener constructores con parámetros.

```dart
@injectable
class AnimalService {
  AnimalService(this.repo);
  final AnimalRepository repo;
}
```

👉 **Uso:** instancias únicas por defecto (pero no singleton). Se crean cada vez que se piden.

---

### ✅ `@singleton`
Instancia única, siempre la misma durante toda la app.

```dart
@singleton
class LocalStorageService {
  void save(String key, String value) { /*...*/ }
}
```

👉 **Uso:** ideal para clases que deben mantener un estado global (ej. cache, navegación).
Se crea una instancia inmediatamente al iniciar la aplicacion y siempre es devuelta la misma instancia cada vez que se pide.

---

### ✅ `@lazySingleton`
Instancia única, pero se crea **la primera vez** que se usa (no en el arranque).

```dart
@lazySingleton
class Logger {
  void log(String message) => print(message);
}
```

👉 **Uso:** evita inicializar todo al arranque. Útil para repositorios o servicios que quizás no se usen siempre.

---

## 🔄 Antes vs Después

### 🎯 Sin `injectable`
```dart
final getIt = GetIt.instance;
getIt.registerLazySingleton(() => AnimalRepositoryImpl());
getIt.registerFactory(() => AnimalCubit(getIt()));
```

### ✅ Con `injectable`
```dart
@injectable
class AnimalCubit {
  AnimalCubit(this.repo);
  final AnimalRepository repo;
}
```
Y se registra automáticamente generando `configureDependencies()`:
```dart
final getIt = GetIt.instance;
Future<void> main() async {
  await configureDependencies();
  runApp(MyApp());
}
```

---

## 🧱 Aplicación en BaqueanoApp

En nuestra arquitectura adaptada:

- Las **implementaciones de repositorio** (en `infrastructure/`) son anotadas con `@LazySingleton` o `@Injectable`
- Los **Cubits/Blocs** (en `application/`) usan `@Injectable` para recibir dependencias como servicios o repositorios sin crearlos manualmente

### 💡 Ejemplo práctico
```dart
// domain/repositories/animal_repository.dart
abstract class AnimalRepository {
  List<String> getAnimales();
}

// infrastructure/repositories/animal_repository_impl.dart
@LazySingleton(as: AnimalRepository)
class AnimalRepositoryImpl implements AnimalRepository {
  @override
  List<String> getAnimales() => ['Perro', 'Gato'];
}

// application/cubit/animal_cubit.dart
@injectable
class AnimalCubit extends Cubit<List<String>> {
  AnimalCubit(this._repo) : super([]);

  final AnimalRepository _repo;

  void cargarAnimales() {
    emit(_repo.getAnimales());
  }
}
```

---

Esto permite que la UI solamente escriba:
```dart
final cubit = getIt<AnimalCubit>();
```
y todas las dependencias ya están resueltas automáticamente.

✅ Resultado: código limpio, fácil de testear y con bajo acoplamiento.

---

## 🔗 Fuentes
Para saber más acerca de los dos paquetes:

- [`get_it` (pub.dev)](https://pub.dev/packages/get_it)
- [`injectable` (pub.dev)](https://pub.dev/packages/injectable)
