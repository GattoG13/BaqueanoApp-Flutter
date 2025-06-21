import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../application/huerta_cubit.dart';
import '../../domain/entities/cultivo.dart';
import '../widgets/cultivo_card.dart';

class HuertaScreen extends StatelessWidget {
  const HuertaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController _nombreController = TextEditingController();

    return Scaffold(
      appBar: AppBar(title: const Text('Mi Huerta Inteligente')),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _nombreController,
                    decoration: const InputDecoration(hintText: 'Nombre del cultivo'),
                  ),
                ),
                const SizedBox(width: 8),
                ElevatedButton(
                  onPressed: () {
                    final nombre = _nombreController.text.trim();
                    if (nombre.isNotEmpty) {
                      context.read<HuertaCubit>().agregarCultivo(nombre, DateTime.now());
                      _nombreController.clear();
                    }
                  },
                  child: const Text('Agregar'),
                ),
              ],
            ),
          ),
          Expanded(
            child: BlocBuilder<HuertaCubit, List<Cultivo>>(
              builder: (context, cultivos) {
                if (cultivos.isEmpty) {
                  return const Center(child: Text('Aún no hay cultivos.'));
                }

                final activos = cultivos.where((c) => !c.cosechado).toList();
                final cosechados = cultivos.where((c) => c.cosechado).toList();

                return ListView(
                  children: [
                    if (activos.isNotEmpty)
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('🌱 Activos', style: TextStyle(fontWeight: FontWeight.bold)),
                      ),
                    ...activos.map((cultivo) => CultivoCard(
                          cultivo: cultivo,
                          onCosechar: () => context.read<HuertaCubit>().cosecharCultivo(cultivo),
                        )),
                    if (cosechados.isNotEmpty)
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('✅ Cosechados', style: TextStyle(fontWeight: FontWeight.bold)),
                      ),
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
