import 'package:flutter/material.dart';
import '../../domain/entities/nota.dart';

class NotaCard extends StatelessWidget {
  final Nota nota;
  const NotaCard({Key? key, required this.nota}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      shape: RoundedRectangleBorder(
        side: const BorderSide(color: Colors.blueAccent),
        borderRadius: BorderRadius.circular(8),
      ),
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: ListTile(
        title: Text('📝 ${nota.contenido}'),
      ),
    );
  }
}
