import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import '../domain/entities/cultivo.dart';
import '../domain/services/gestor_cultivos.dart';

// Anotamos con @injectable para que esta clase pueda ser registrada automáticamente en la inyección de dependencias.
@injectable
class HuertaCubit extends Cubit<List<Cultivo>> {
  // Inyectamos el servicio que contiene la lógica de agregar, cosechar y listar cultivos.
  final GestorCultivos _gestor;

  // Constructor: inicia el estado del Cubit como una lista vacía.
  HuertaCubit(this._gestor) : super([]);

  // Agrega un nuevo cultivo a través del servicio y actualiza el estado con la lista nueva.
  void agregarCultivo(String nombre, DateTime fecha) {
    _gestor.agregarCultivo(nombre, fecha);
    emit(_gestor.obtenerCultivos()); // Dispara un nuevo estado con la lista actualizada.
  }

  // Marca un cultivo como cosechado y emite la lista actualizada.
  void cosecharCultivo(Cultivo cultivo) {
    _gestor.cosecharCultivo(cultivo);
    emit(_gestor.obtenerCultivos());
  }

  // Carga los cultivos existentes desde el servicio al iniciar la app o recargar la vista.
  void cargarCultivos() {
    emit(_gestor.obtenerCultivos());
  }
}
