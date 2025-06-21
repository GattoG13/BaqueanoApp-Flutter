import 'package:flutter_bloc/flutter_bloc.dart';
import '../../domain/entities/nota.dart';
import '../../domain/services/gestor_notas.dart';
import 'package:injectable/injectable.dart';

@injectable
class NotasCubit extends Cubit<List<Nota>> {
  final GestorNotas _gestor;

  NotasCubit(this._gestor) : super([]);

  void agregarNota(String contenido) {
    _gestor.agregarNota(contenido);
    final notasActualizadas = _gestor.obtenerNotas();
    print('Notas actualizadas: $notasActualizadas');
    emit(notasActualizadas);
  }
}