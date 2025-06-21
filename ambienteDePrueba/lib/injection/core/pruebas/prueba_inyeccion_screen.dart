import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '/core/injection/injection.dart';
import '/core/logger.dart';

class PruebaInyeccionScreen extends StatelessWidget {
  const PruebaInyeccionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Obtener instancia de Logger inyectado desde getIt
    final logger = getIt<Logger>();

    return Scaffold(
      appBar: AppBar(title: const Text('Prueba Inyección')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            logger.log('Funciona la inyección 🎉');
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('¡Inyección OK!')),
            );
          },
          child: const Text('Probar Logger'),
        ),
      ),
    );
  }
}
