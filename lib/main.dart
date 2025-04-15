import 'package:flutter/material.dart';
import 'package:solid_task/color_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Random Color',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const ColorPage(),
    );
  }
}
