import '../entidades/mensaje_bienvenida.dart';

class BienvenidaRepositorio {
  MensajeBienvenida obtenerMensaje() {
    return MensajeBienvenida("Bienvenido, Juan");
  }
}