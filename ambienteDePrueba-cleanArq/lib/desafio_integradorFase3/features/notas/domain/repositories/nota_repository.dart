import '../entities/nota.dart';

abstract class NotaRepository {
  void agregarNota(String contenido);
  List<Nota> obtenerNotas();
}