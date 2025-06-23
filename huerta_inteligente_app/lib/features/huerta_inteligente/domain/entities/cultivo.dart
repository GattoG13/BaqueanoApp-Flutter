// Clase que representa un cultivo dentro de la huerta.
class Cultivo {
  final String nombre;
  final DateTime fechaSiembra;
  bool cosechado;

  // Constructor de la clase. `nombre` y `fechaSiembra` son obligatorios.
  // `cosechado` es opcional y por defecto está en `false` porque todo cultivo nuevo se considera activo.
  Cultivo({
    required this.nombre,
    required this.fechaSiembra,
    this.cosechado = false,
  });
}
