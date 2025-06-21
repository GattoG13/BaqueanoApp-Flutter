import 'package:injectable/injectable.dart';
import '../../domain/entities/nota.dart';
import '../../domain/repositories/nota_repository.dart';

@LazySingleton(as: NotaRepository)
class NotaRepositoryImpl implements NotaRepository {
  final List<Nota> _notas = [];

  @override
  void agregarNota(String contenido) {
    _notas.add(Nota(contenido));
  }

  @override
  List<Nota> obtenerNotas() {
    return List.unmodifiable(_notas);
  }
}
