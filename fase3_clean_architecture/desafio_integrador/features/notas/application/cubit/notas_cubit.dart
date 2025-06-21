import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../domain/services/gestor_notas.dart';
import '../../domain/entities/nota.dart';

@injectable
class NotasCubit extends Cubit<List<Nota>> {
  final GestorNotas _gestor;

  NotasCubit(this._gestor) : super([]);

  void agregarNota(String contenido) {
    _gestor.agregar(contenido);
    emit(_gestor.obtenerTodas());
  }
}
