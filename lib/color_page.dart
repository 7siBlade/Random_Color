import 'package:flutter/material.dart';
import 'random_color.dart';

class ColorPage extends StatefulWidget {
  const ColorPage({super.key});

  @override
  State<ColorPage> createState() => _ColorPageState();
}

class _ColorPageState extends State<ColorPage> {
  late Color color;
  ColorRGB rgb = ColorRGB();

  @override
  void initState() {
    color = rgb.generatColor();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color,
      body: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () => setState(() {
          color = rgb.generatColor();
        }),
        child: SafeArea(
            child: Center(
          child: Text(
            'Hey there',
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: rgb.generatColorText(color)),
          ),
        )),
      ),
    );
  }
}
