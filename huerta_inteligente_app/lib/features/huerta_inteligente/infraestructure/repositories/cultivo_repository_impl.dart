import 'package:injectable/injectable.dart';
import '../../domain/entities/cultivo.dart';
import '../../domain/repositories/cultivo_repository.dart';

// Esta clase representa la implementación concreta del repositorio de cultivos.
// Se guarda todo en memoria (sin persistencia).
@LazySingleton(as: CultivoRepository)
class CultivoRepositoryImpl implements CultivoRepository {
  // Lista interna donde almacenamos los cultivos agregados.
  final List<Cultivo> _cultivos = [];

  // Agrega un nuevo cultivo a la lista.
  @override
  void agregarCultivo(Cultivo cultivo) {
    _cultivos.add(cultivo);
  }

  // Marca un cultivo existente como cosechado (usamos index para evitar duplicación).
  @override
  void marcarComoCosechado(Cultivo cultivo) {
    final index = _cultivos.indexOf(cultivo);
    if (index != -1) {
      _cultivos[index].cosechado = true;
    }
  }

  // Devuelve una copia inmodificable de la lista de cultivos.
  @override
  List<Cultivo> obtenerCultivos() => List.unmodifiable(_cultivos);
}
