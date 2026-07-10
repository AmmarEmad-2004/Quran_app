import 'package:flutter/material.dart';

class AzkarColors {
  AzkarColors._();

  static const List<List<Color>> gradients = [
    [Color(0xFFFF8803), Color(0xFFFD9900)],
    [Color(0xFF615EFF), Color(0xFF980FFA)],
    [Color(0xFF2B7FFF), Color(0xFF00B8DA)],
    [Color(0xFF00BC7C), Color(0xFF009689)],
    [Color(0xFFFF1F56), Color(0xFFE50076)],
    [Color(0xFFFD9900), Color(0xFFD08700)],
  ];

  static List<Color> getGradient(int index) {
    return gradients[index % gradients.length];
  }
}