import 'package:injectable/injectable.dart';
import '../../domain/entities/cultivo.dart';
import '../../domain/repositories/cultivo_repository.dart';

@LazySingleton(as: CultivoRepository)
class CultivoRepositoryImpl implements CultivoRepository {
  final List<Cultivo> _cultivos = [];

  @override
  void agregarCultivo(Cultivo cultivo) {
    _cultivos.add(cultivo);
  }

  @override
  void marcarComoCosechado(Cultivo cultivo) {
    final index = _cultivos.indexOf(cultivo);
    if (index != -1) {
      _cultivos[index].cosechado = true;
    }
  }

  @override
  List<Cultivo> obtenerCultivos() => List.unmodifiable(_cultivos);
}
