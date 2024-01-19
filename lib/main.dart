import 'package:flutter/material.dart';

import 'home.dart';

void main() {
  runApp(const CalculatorApp());
}

class CalculatorApp extends StatefulWidget {
  const CalculatorApp({super.key});

  @override
  State<CalculatorApp> createState() => _CalculatorAppState();
}

class _CalculatorAppState extends State<CalculatorApp> {
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: MaterialApp(
        home: Scaffold(
          body: Home(),
        ),
      ),
    );
  }
}
