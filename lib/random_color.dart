import 'dart:math';
import 'package:flutter/material.dart';

class ColorRGB {
  final Random random = Random();

  late int alpha;
  late int red;
  late int green;
  late int blue;

  int value() => random.nextInt(255);

  Color generatColor() {
    Color randomColor;
    alpha = value();
    red = value();
    green = value();
    blue = value();
    randomColor = Color.fromARGB(alpha, red, green, blue);
    return randomColor;
  }

  Color generatColorText(Color color) {
    Color invertColor;
    int invertAlpha = 255;
    int invertRed = 255 - color.red;
    int invertGreen = 255 - color.green;
    int invertBlue = 255 - color.blue;
    invertColor =
        Color.fromARGB(invertAlpha, invertRed, invertGreen, invertBlue);
    return invertColor;
  }
}
