class Cultivo {
  final String nombre;
  final DateTime fechaSiembra;
  bool cosechado;

  Cultivo({
    required this.nombre,
    required this.fechaSiembra,
    this.cosechado = false,
  });
}
