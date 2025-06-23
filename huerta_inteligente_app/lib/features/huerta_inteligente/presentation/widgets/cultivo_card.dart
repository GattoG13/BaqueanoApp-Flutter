import 'package:flutter/material.dart';
import '../../domain/entities/cultivo.dart';

// Widget que representa visualmente un Cultivo en una tarjeta.
// Si el cultivo está activo, muestra un botón para marcarlo como cosechado.
// Si ya está cosechado, muestra un ícono de check verde.
class CultivoCard extends StatelessWidget {
  final Cultivo cultivo;

  // onCosechar se pasa desde la pantalla para manejar la acción del botón.
  // Si es null, no se renderiza el botón (caso de cultivo ya cosechado).
  final VoidCallback? onCosechar;

  const CultivoCard({super.key, required this.cultivo, this.onCosechar});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
      child: ListTile(
        // Ícono de agricultura a la izquierda
        leading: const Icon(Icons.agriculture),

        // Nombre del cultivo como título principal
        title: Text(cultivo.nombre),

        // Fecha de siembra en formato día/mes como subtítulo
        subtitle: Text('Sembrado el ${cultivo.fechaSiembra.day}/${cultivo.fechaSiembra.month}'),

        // Acción a la derecha de la tarjeta
        // Si el cultivo está cosechado o no se pasó una acción, muestra el ícono verde.
        // Si no, muestra un botón para marcar como cosechado.
        trailing: cultivo.cosechado || onCosechar == null
            ? const Icon(Icons.check, color: Colors.green)
            : IconButton(
                icon: const Icon(Icons.done),
                onPressed: onCosechar,
              ),
      ),
    );
  }
}
