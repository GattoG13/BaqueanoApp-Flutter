import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../application/huerta_cubit.dart';
import '../../domain/entities/cultivo.dart';
import '../widgets/cultivo_card.dart';

// Pantalla principal de la app: muestra el formulario y la lista de cultivos.
class HuertaScreen extends StatelessWidget {
  const HuertaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Controlador para el campo de texto donde se ingresa el nombre del cultivo.
    final TextEditingController _nombreController = TextEditingController();

    return Scaffold(
      appBar: AppBar(title: const Text('Mi Huerta Inteligente')),
      body: Column(
        children: [
          // Sección superior: input + botón "Agregar"
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                // Input para escribir el nombre del cultivo
                Expanded(
                  child: TextField(
                    controller: _nombreController,
                    decoration: const InputDecoration(hintText: 'Nombre del cultivo'),
                  ),
                ),
                const SizedBox(width: 8),
                // Botón que agrega el cultivo al estado si no está vacío
                ElevatedButton(
                  onPressed: () {
                    final nombre = _nombreController.text.trim();
                    if (nombre.isNotEmpty) {
                      // Agregamos el cultivo con la fecha actual
                      context.read<HuertaCubit>().agregarCultivo(
                            nombre,
                            DateTime.now(),
                          );
                      _nombreController.clear(); // Limpiamos el campo
                    } else {
                      // Si el campo está vacío, mostramos un mensaje de error
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('No se puede agregar un cultivo sin nombre'),
                          backgroundColor: Colors.redAccent,
                        ),
                      );
                    }
                  },
                  child: const Text('Agregar'),
                ),
              ],
            ),
          ),
          // Sección inferior: lista de cultivos renderizada por estado del Cubit
          Expanded(
            child: BlocBuilder<HuertaCubit, List<Cultivo>>(
              builder: (context, cultivos) {
                // Si no hay cultivos todavía, mostramos un mensaje
                if (cultivos.isEmpty) {
                  return const Center(child: Text('Aún no hay cultivos.'));
                }

                // Filtramos cultivos activos y cosechados por separado
                final activos = cultivos.where((c) => !c.cosechado).toList();
                final cosechados = cultivos.where((c) => c.cosechado).toList();

                return ListView(
                  children: [
                    // Título para cultivos activos
                    if (activos.isNotEmpty)
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('🌱 Activos', style: TextStyle(fontWeight: FontWeight.bold)),
                      ),
                    // Renderizamos cada cultivo activo con su botón para marcar como cosechado
                    ...activos.map((cultivo) => CultivoCard(
                          cultivo: cultivo,
                          onCosechar: () => context.read<HuertaCubit>().cosecharCultivo(cultivo),
                        )),
                    // Título para cultivos ya cosechados
                    if (cosechados.isNotEmpty)
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('✅ Cosechados', style: TextStyle(fontWeight: FontWeight.bold)),
                      ),
                    // Renderizamos cultivos cosechados (sin acción)
                    ...cosechados.map((cultivo) => CultivoCard(cultivo: cultivo)),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
