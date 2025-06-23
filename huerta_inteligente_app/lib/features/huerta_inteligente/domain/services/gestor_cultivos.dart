import '../entities/cultivo.dart';
import '../repositories/cultivo_repository.dart';
import 'package:injectable/injectable.dart';

// Esta clase representa el "gestor" de cultivos.
// Actúa como intermediario entre la UI/Cubit y el repositorio.
@injectable
class GestorCultivos {
  // Dependencia del repositorio que será inyectada.
  final CultivoRepository _repo;

  // Constructor que recibe el repositorio.
  GestorCultivos(this._repo);

  // Método para crear un nuevo cultivo y agregarlo al repositorio.
  void agregarCultivo(String nombre, DateTime fecha) {
    final cultivo = Cultivo(nombre: nombre, fechaSiembra: fecha);
    _repo.agregarCultivo(cultivo);
  }

  // Método para marcar un cultivo como cosechado.
  void cosecharCultivo(Cultivo cultivo) {
    _repo.marcarComoCosechado(cultivo);
  }

  // Devuelve la lista de todos los cultivos (activos y cosechados).
  List<Cultivo> obtenerCultivos() => _repo.obtenerCultivos();
}
