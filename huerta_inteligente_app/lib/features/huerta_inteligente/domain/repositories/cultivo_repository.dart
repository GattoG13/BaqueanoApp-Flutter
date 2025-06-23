import '../entities/cultivo.dart';
// Interfaz que define el contrato del repositorio para manejar cultivos.
// Esta interfaz será implementada en la capa de infraestructura.
abstract class CultivoRepository {
  // Método para agregar un nuevo cultivo al repositorio.
  void agregarCultivo(Cultivo cultivo);

  // Método para marcar un cultivo como cosechado.
  void marcarComoCosechado(Cultivo cultivo);

  // Método para obtener la lista completa de cultivos (cosechados o activos).
  List<Cultivo> obtenerCultivos();
}
