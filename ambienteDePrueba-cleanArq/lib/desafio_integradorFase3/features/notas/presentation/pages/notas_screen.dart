import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ambienteDePrueba_cleanArq/desafio_integradorFase3/features/notas/application/cubit/notas_cubit.dart';
import 'package:ambienteDePrueba_cleanArq/desafio_integradorFase3/features/notas/domain/entities/nota.dart';
import 'package:ambienteDePrueba_cleanArq/desafio_integradorFase3/features/notas/presentation/widgets/nota_card.dart';


class NotasScreen extends StatelessWidget {
  const NotasScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = TextEditingController();

    return Scaffold(
      appBar: AppBar(title: const Text('Notas Rápidas')),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: controller,
                    decoration: const InputDecoration(hintText: 'Escribí una nota...'),
                  ),
                ),
                const SizedBox(width: 8),
                ElevatedButton(
                  onPressed: () {
                    final texto = controller.text.trim();
                    if (texto.isNotEmpty) {
                      context.read<NotasCubit>().agregarNota(texto);
                      controller.clear();
                    }
                  },
                  child: const Text('Agregar'),
                ),
              ],
            ),
          ),
          Expanded(
            child: BlocBuilder<NotasCubit, List<Nota>>(
              builder: (context, notas) {
                return ListView.builder(
                  itemCount: notas.length,
                  itemBuilder: (_, i) => NotaCard(nota: notas[i]),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
