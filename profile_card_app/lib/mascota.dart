enum TipoMascota { perro, gato, otro }

class Mascota {
  final String nombre;
  final TipoMascota tipo;
  final int edad;

  Mascota({required this.nombre, required this.tipo, required this.edad});
}
