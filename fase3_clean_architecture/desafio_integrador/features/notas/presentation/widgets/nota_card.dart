import 'package:flutter/material.dart';
import '../../../domain/entities/nota.dart';

class NotaCard extends StatelessWidget {
  final Nota nota;

  const NotaCard({super.key, required this.nota});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      child: ListTile(title: Text(nota.contenido)),
    );
  }
}
