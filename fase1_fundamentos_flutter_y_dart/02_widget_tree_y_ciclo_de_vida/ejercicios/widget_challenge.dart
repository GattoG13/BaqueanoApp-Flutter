import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// ✔️ Punto de entrada de la app.
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Widget Lifecycle Challenge',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
      ),
      home: const MyHomePage(
        title: 'Ciclo de vida en Flutter',
      ),
    );
  }
}

// ✔️ Página principal, StatefulWidget.
class MyHomePage extends StatefulWidget {
  final String title;

  // TODO: Agregar propiedad que será usada para mostrar u ocultar el contador.

  const MyHomePage({super.key, required this.title});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

// 🧠 Acá ocurre la magia del ciclo de vida.
class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  // TODO(1): Imprimir en consola "initState ejecutado" dentro de este método

  // TODO(2): Detectar si cambió `showCounter` usando didUpdateWidget.

  // TODO(3): Imprimir en consola "dispose ejecutado" al destruir el widget.

  // TODO(4): Mostrar un SnackBar si el contador alcanza 5. Con ScaffoldMessenger.of(context).showSnackBar(...)
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('Has presionado el botón esta cantidad de veces:'),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Incrementar',
        child: const Icon(Icons.add),
      ),
    );
  }
}
