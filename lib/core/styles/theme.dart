import 'package:exemplo_basico_mvc/shared/utils/util_colors.dart';
import 'package:flutter/material.dart';

class ThemeDefault {
  ThemeDefault._();

  static AppBarTheme appBarTheme = AppBarTheme(
    backgroundColor: UtilColors.colorPaleta3,
    titleTextStyle: const TextStyle(
      color: Colors.white,
      fontSize: 20,
      fontWeight: FontWeight.w700,
    ),
  );

  static ThemeData themeData = ThemeData(
    appBarTheme: appBarTheme,
  );
}
