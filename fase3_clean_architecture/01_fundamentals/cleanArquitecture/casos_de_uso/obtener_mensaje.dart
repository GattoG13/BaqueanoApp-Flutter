// obtener_mensaje.dart
import '../repositorios/bienvenida_repositorio.dart';
import '../entidades/mensaje_bienvenida.dart';

class ObtenerMensaje {
  final _repositorio = BienvenidaRepositorio();

  MensajeBienvenida call() {
    return _repositorio.obtenerMensaje();
  }
}