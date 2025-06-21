import '../entities/nota.dart';
import '../repositories/nota_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class GestorNotas {
  final NotaRepository _repo;
  GestorNotas(this._repo);

  void agregarNota(String texto) => _repo.agregarNota(texto);
  List<Nota> obtenerNotas() => _repo.obtenerNotas();
}
