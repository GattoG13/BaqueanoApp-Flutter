import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'desafio_integradorFase3/core/injection/injection.dart';
import 'desafio_integradorFase3/features/notas/application/cubit/notas_cubit.dart';
import 'desafio_integradorFase3/features/notas/presentation/pages/notas_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureInjection();

  runApp(
    BlocProvider<NotasCubit>(
      create: (_) => getIt<NotasCubit>(),
      child: const MaterialApp(
        home: NotasScreen(),
      ),
    ),
  );
}
