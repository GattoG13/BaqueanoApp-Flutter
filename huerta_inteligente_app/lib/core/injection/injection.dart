import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'injection.config.dart';

// Creamos una instancia global de GetIt que vamos a usar en todo el proyecto.
final getIt = GetIt.instance;

// Esta función inicializa todas las dependencias registradas con @injectable o @LazySingleton.
// La anotación @InjectableInit le indica a Injectable que genere el código necesario en injection.config.dart.
@InjectableInit()
Future<void> configureDependencies() async {
  await getIt.init(); // Ejecuta el método generado automáticamente para registrar todo.
}