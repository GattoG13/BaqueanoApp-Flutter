import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:huerta_inteligente_app/core/injection/injection.dart';
import 'package:huerta_inteligente_app/features/huerta_inteligente/application/huerta_cubit.dart';
import 'package:huerta_inteligente_app/features/huerta_inteligente/presentation/pages/huerta_screen.dart';

void main() async {
  // Nos aseguramos de inicializar el binding antes de cualquier otra cosa async
  WidgetsFlutterBinding.ensureInitialized();

  // Configuramos todas las dependencias registradas con Injectable
  await configureDependencies();

  // Ejecutamos la aplicación
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      // Inyectamos el HuertaCubit desde getIt para que esté disponible en toda la app
      create: (_) => getIt<HuertaCubit>(),
      child: MaterialApp(
        title: 'Mi Huerta Inteligente',

        // Pantalla principal de la app
        home: const HuertaScreen(),

        // Quitamos la banderita de debug
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
