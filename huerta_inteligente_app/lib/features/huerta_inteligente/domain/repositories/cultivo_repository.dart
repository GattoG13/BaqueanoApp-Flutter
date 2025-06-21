import '../entities/cultivo.dart';

abstract class CultivoRepository {
  void agregarCultivo(Cultivo cultivo);
  void marcarComoCosechado(Cultivo cultivo);
  List<Cultivo> obtenerCultivos();
}
