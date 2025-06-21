import 'package:flutter/material.dart';
import '../../domain/entities/cultivo.dart';

class CultivoCard extends StatelessWidget {
  final Cultivo cultivo;
  final VoidCallback? onCosechar;

  const CultivoCard({super.key, required this.cultivo, this.onCosechar});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
      child: ListTile(
        leading: const Icon(Icons.agriculture),
        title: Text(cultivo.nombre),
        subtitle: Text('Sembrado el ${cultivo.fechaSiembra.day}/${cultivo.fechaSiembra.month}'),
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
