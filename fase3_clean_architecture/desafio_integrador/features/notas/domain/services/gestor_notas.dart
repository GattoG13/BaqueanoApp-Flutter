import '../entities/nota.dart';
import '../repositories/nota_repository.dart';

class GestorNotas {
  final NotaRepository _repo;

  GestorNotas(this._repo);

  void agregar(String contenido) => _repo.agregarNota(contenido);

  List<Nota> obtenerTodas() => _repo.obtenerNotas();
}
