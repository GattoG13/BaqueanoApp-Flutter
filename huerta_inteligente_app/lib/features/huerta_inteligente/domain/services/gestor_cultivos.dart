import '../entities/cultivo.dart';
import '../repositories/cultivo_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class GestorCultivos {
  final CultivoRepository _repo;

  GestorCultivos(this._repo);

  void agregarCultivo(String nombre, DateTime fecha) {
    final cultivo = Cultivo(nombre: nombre, fechaSiembra: fecha);
    _repo.agregarCultivo(cultivo);
  }

  void cosecharCultivo(Cultivo cultivo) {
    _repo.marcarComoCosechado(cultivo);
  }

  List<Cultivo> obtenerCultivos() => _repo.obtenerCultivos();
}
