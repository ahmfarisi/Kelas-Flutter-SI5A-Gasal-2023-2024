// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: BiggerText(
            text: 'Ahmad Farisi'
          ),
        ),
      ),
    );
  }
}

class BiggerText extends StatefulWidget {
  final String text;

  const BiggerText({super.key, required this.text});

  @override
  _BiggerTextState createState() => _BiggerTextState();
}

class _BiggerTextState extends State<BiggerText> {
  double _textSize = 16.0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          widget.text,
          style: TextStyle(fontSize: _textSize),
        ),
        ElevatedButton(
          child: const Text('Perbesar'),
          onPressed: () {
            setState(() {
              _textSize = _textSize + 6;
            });
          },
        ),
        Container(
          height: 10.0,
        ),
        ElevatedButton(
          child: const Text('Perkecil'),
          onPressed: () {
            setState(() {
              _textSize = _textSize - 6;
            });
          },
        ),
      ],
    );
  }
}
