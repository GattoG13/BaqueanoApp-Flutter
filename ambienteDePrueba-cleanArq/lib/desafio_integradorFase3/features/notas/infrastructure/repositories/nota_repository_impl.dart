import 'package:injectable/injectable.dart';
import '../../domain/entities/nota.dart';
import '../../domain/repositories/nota_repository.dart';

@Injectable(as: NotaRepository)
class NotaRepositoryImpl implements NotaRepository {
  final List<Nota> _notas = [];

  @override
  void agregarNota(String contenido) {
    final nota = Nota(contenido: contenido);
    print('Nota agregada: $contenido');
    _notas.add(nota);
  }

  @override
  List<Nota> obtenerNotas() {
    print('Notas actuales: $_notas');
    return List.from(_notas);
  }
}