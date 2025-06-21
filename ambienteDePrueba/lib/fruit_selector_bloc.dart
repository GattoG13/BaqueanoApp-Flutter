import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// ======== EVENTO ========
abstract class FruitEvent {}

class SelectedFruitEvent extends FruitEvent {
  final String fruit;
  SelectedFruitEvent(this.fruit);
}

// ======== ESTADO ========
class FruitState {
  final String? selectedFruit;
  FruitState({this.selectedFruit});
}


// ========== BLOC ==========
class FruitBloc extends Bloc<FruitEvent, FruitState> {
  FruitBloc() : super(FruitState()) {
    on<SelectedFruitEvent>((event, emit) {
      emit(FruitState(selectedFruit: event.fruit));
    });
  }
}


// ========== UI ==========
class FruitApp extends StatelessWidget {
  const FruitApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fruit Selector',
        home: BlocProvider(
          create: (_) => FruitBloc(),
          child: const FruitSelectorScreen(),
        ),
    );
  }
}

class FruitSelectorScreen extends StatelessWidget {
  const FruitSelectorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Seleccioná tu fruta')),
      body: BlocListener<FruitBloc, FruitState>(
        listener: (context, state) {
          if (state.selectedFruit != null) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text('Seleccionaste: ${state.selectedFruit}')),
            );
          }
        },
      child: Center(  
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BlocBuilder<FruitBloc, FruitState>(
              builder: (context, state) {
                final fruit = state.selectedFruit;
                return Text(
                  fruit != null ? 'Fruta seleccionada: $fruit' : 'Ninguna fruta seleccionada',
                  style: const TextStyle(fontSize: 20),
                );
              },
            ),
            const SizedBox(height: 24),
            for (final fruit in ['Manzana', 'Banana', 'Naranja']) ...[
              ElevatedButton(
                onPressed: () {
                  context.read<FruitBloc>().add(SelectedFruitEvent(fruit));
                },
                child: Text(fruit),
              ),
              const SizedBox(height: 8),
            ]
          ],
        ),
        ),
      ),
    );
  }
}
