import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../domain/entities/cultivo.dart';
import '../domain/services/gestor_cultivos.dart';

@injectable
class HuertaCubit extends Cubit<List<Cultivo>> {
  final GestorCultivos _gestor;

  HuertaCubit(this._gestor) : super([]);

  void agregarCultivo(String nombre, DateTime fecha) {
    _gestor.agregarCultivo(nombre, fecha);
    emit(_gestor.obtenerCultivos());
  }

  void cosecharCultivo(Cultivo cultivo) {
    _gestor.cosecharCultivo(cultivo);
    emit(_gestor.obtenerCultivos());
  }

  void cargarCultivos() {
    emit(_gestor.obtenerCultivos());
  }
}
