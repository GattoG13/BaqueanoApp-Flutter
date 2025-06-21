import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:huerta_inteligente_app/core/injection/injection.dart';
import 'package:huerta_inteligente_app/features/huerta_inteligente/application/huerta_cubit.dart';
import 'package:huerta_inteligente_app/features/huerta_inteligente/presentation/pages/huerta_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<HuertaCubit>(),
      child: MaterialApp(
        title: 'Mi Huerta Inteligente',
        home: const HuertaScreen(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
