// 🧭 Ejercicio guiado – Selector de frutas
// Instrucciones:
// Completá los TODOs para permitir seleccionar una fruta de una lista
// y retornar el valor a la pantalla anterior.

import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: FruitSelectorScreen()));
}

class FruitSelectorScreen extends StatefulWidget {
  const FruitSelectorScreen({super.key});

  @override
  State<FruitSelectorScreen> createState() => _FruitSelectorScreenState();
}

class _FruitSelectorScreenState extends State<FruitSelectorScreen> {
  String? _selectedFruit;

  void _openSelectionScreen() async {
    final result = await Navigator.push<String>(
      context,
      MaterialPageRoute(builder: (context) => const FruitSelectionScreen()),
    );

    if (result != null) {
      setState(() {
        _selectedFruit = result;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Seleccionador de Frutas')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (_selectedFruit != null)
              Text('Fruta seleccionada: $_selectedFruit')
            else
              const Text('Ninguna fruta seleccionada'),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _openSelectionScreen,
              child: const Text('Elegir fruta'),
            )
          ],
        ),
      ),
    );
  }
}

class FruitSelectionScreen extends StatelessWidget {
  const FruitSelectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final fruits = ['Manzana', 'Banana', 'Naranja', 'Frutilla'];

    return Scaffold(
      appBar: AppBar(title: const Text('Elige una fruta')),
      body: ListView.builder(
        itemCount: fruits.length,
        itemBuilder: (context, index) {
          final fruit = fruits[index];

          return ListTile(
            title: Text(fruit),
            onTap: () {
              Navigator.pop(context, fruit);
            },
          );
        },
      ),
    );
  }
}
