import 'package:flutter/material.dart';
import 'mascota.dart';

class RegistroMascotaScreen extends StatefulWidget {
  const RegistroMascotaScreen({super.key});

  @override
  State<RegistroMascotaScreen> createState() => _RegistroMascotaScreenState();
}

class _RegistroMascotaScreenState extends State<RegistroMascotaScreen> {
  final _nombreController = TextEditingController();
  final _edadController = TextEditingController();
  TipoMascota? _tipoSeleccionado;

  void _registrarMascota() {
    final nombre = _nombreController.text.trim();
    final edad = int.tryParse(_edadController.text);

    if (nombre.isEmpty || edad == null || edad <= 0 || _tipoSeleccionado == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Por favor completá todos los campos correctamente')),
      );
      return;
    }

    final mascota = Mascota(nombre: nombre, tipo: _tipoSeleccionado!, edad: edad);

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => BienvenidaScreen(mascota: mascota),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Registro de Mascota')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: _nombreController,
              decoration: const InputDecoration(labelText: 'Nombre'),
            ),
            const SizedBox(height: 12),
            DropdownButtonFormField<TipoMascota>(
              value: _tipoSeleccionado,
              items: TipoMascota.values.map((tipo) {
                return DropdownMenuItem(
                  value: tipo,
                  child: Text(tipo.name),
                );
              }).toList(),
              onChanged: (value) {
                setState(() {
                  _tipoSeleccionado = value!;
                });
              },
              decoration: InputDecoration(labelText: 'Tipo de mascota'),
),
            const SizedBox(height: 12),
            TextField(
              controller: _edadController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(labelText: 'Edad'),
            ),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: _registrarMascota,
              child: const Text('Registrar'),
            ),
          ],
        ),
      ),
    );
  }
}

class BienvenidaScreen extends StatelessWidget {
  final Mascota mascota;

  const BienvenidaScreen({super.key, required this.mascota});

  IconData _obtenerIcono() {
    switch (mascota.tipo) {
      case TipoMascota.perro:
        return Icons.pets;
      case TipoMascota.gato:
        return Icons.pets_outlined;
      case TipoMascota.otro:
        return Icons.question_mark;
    }
  }

  String _obtenerEdadTexto() {
    return mascota.edad < 2 ? 'Joven 🐣' : 'Adulto 🐾';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Bienvenida')),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '¡Bienvenido ${mascota.nombre} el ${mascota.tipo.name}!',
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 24),
            Icon(_obtenerIcono(), size: 80),
            const SizedBox(height: 24),
            Text(
              _obtenerEdadTexto(),
              style: TextStyle(
                fontSize: 18,
                color: mascota.edad < 2 ? Colors.blue : Colors.brown,
              ),
            ),
            const SizedBox(height: 40),
            ElevatedButton(
              onPressed: () => Navigator.pop(context, true),
              child: const Text('Registrar otra mascota'),
            ),
          ],
        ),
      ),
    );
  }
}

