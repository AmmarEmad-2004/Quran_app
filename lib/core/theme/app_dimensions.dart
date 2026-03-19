import 'package:flutter/material.dart';

class AppDimensions {
  static double scale(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;

    if (width < 600) {
      return width / 400;
    } else if (width < 1024) {
      return width / 800;
    } else {
      return width / 1000;
    }
  }

  static double responsive(BuildContext context, double value) {
    return value * scale(context);
  }
}