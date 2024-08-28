import 'package:flutter/material.dart';

class UtilColors {
  static Color? colorContainer() {
    return Colors.grey[200];
  }

  static dynamic colorPrimary({int? shade}) {
    if (shade != null) {
      return Colors.green[shade];
    }

    return const Color(0xff015958);
  }

  static Color colorPaleta1 = Colors.deepOrange.shade100;
  static Color colorPaleta2 = Colors.deepOrange.shade200;
  static Color colorPaleta3 = Colors.deepOrange.shade300;
  static Color colorPaleta4 = Colors.deepOrange.shade400;
  static Color colorPaleta5 = Colors.deepOrange.shade400;

  static Color textColorDefault = Colors.grey.shade800;
}
