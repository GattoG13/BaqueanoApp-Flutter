import 'package:flutter/material.dart';
import 'desafio_integradorFase3/core/injection/injection.dart';
import 'desafio_integradorFase3/features/notas/presentation/pages/notas_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureInjection();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: NotasScreen(),
    );
  }
}