import 'package:d_latihan_navigation/second_screen.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  final String message = 'Hello from the Outside';
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Main Screen'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Pindah Screen'),
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => SecondScreen(message: message)));
          },
        ),
      ),
    );
  }
}
