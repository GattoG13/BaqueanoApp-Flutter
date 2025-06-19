import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: Scaffold(
      body: Center(
        child: MoodChangerWidget(username: 'Juan'),
      ),
    ),
  ));
}

class MoodChangerWidget extends StatefulWidget {
  final String username;

  const MoodChangerWidget({super.key, required this.username});

  @override
  State<MoodChangerWidget> createState() => _MoodChangerWidgetState();
}

class _MoodChangerWidgetState extends State<MoodChangerWidget> {
  String? _selectedMood;

  @override
  void initState() {
    super.initState();
    print('initState ejecutado');
  }

  @override
  void dispose() {
    print('dispose ejecutado');
    super.dispose();
  }

  void _handleMoodChange(String? newMood) {
    setState(() {
      _selectedMood = newMood;
    });

    final scaffold = ScaffoldMessenger.of(context);
    final theme = Theme.of(context);

    if (newMood == 'feliz') {
      print('¡Abrazos para ${widget.username}!');
      scaffold.showSnackBar(
        SnackBar(content: Text('Abrazos enviados a ${widget.username}')),
      );
    } else if (newMood == 'triste') {
      print('🥲 ${widget.username} necesita un abrazo');
      scaffold.showSnackBar(
        SnackBar(content: Text('💔 ${widget.username} está triste')),
      );
    } else if (newMood == 'enojado') {
      print('😡 ${widget.username} está enojado');
      scaffold.showSnackBar(
        SnackBar(content: Text('¡Cuidado! ${widget.username} está enojado')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Bienvenido ${widget.username}', style: Theme.of(context).textTheme.headlineSmall),
        const SizedBox(height: 16),
        DropdownButton<String>(
          hint: const Text('Selecciona tu estado de ánimo'),
          value: _selectedMood,
          items: ['feliz', 'triste', 'enojado']
              .map((mood) => DropdownMenuItem(value: mood, child: Text(mood)))
              .toList(),
          onChanged: _handleMoodChange,
        ),
      ],
    );
  }
}
