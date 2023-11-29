import 'package:flutter/material.dart';
import 'package:d_latihan_navigation/main_screen.dart';
import 'package:d_latihan_navigation/second_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: MainScreen());
  }
}
