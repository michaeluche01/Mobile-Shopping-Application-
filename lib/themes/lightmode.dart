import 'package:flutter/material.dart';

ThemeData lightmode = ThemeData(
  colorScheme: ColorScheme.light(
    surface: Colors.grey.shade300,
    primary: Colors.grey.shade500,
    secondary: Colors.grey.shade200,
    tertiary: Colors.white,
    inversePrimary: Colors.grey.shade900,
  ),
  fontFamily: 'Montserrat',
  textTheme: const TextTheme(
    bodyLarge: TextStyle(fontFamily: 'Montserrat'),
    bodyMedium: TextStyle(fontFamily: 'Montserrat'),
    displayLarge: TextStyle(fontFamily: 'Montserrat'),
    displayMedium: TextStyle(fontFamily: 'Montserrat'),
    displaySmall: TextStyle(fontFamily: 'Montserrat'),
    headlineMedium: TextStyle(fontFamily: 'Montserrat'),
    headlineSmall: TextStyle(fontFamily: 'Montserrat'),
    titleLarge: TextStyle(fontFamily: 'Montserrat'),
    titleMedium: TextStyle(fontFamily: 'Montserrat'),
    titleSmall: TextStyle(fontFamily: 'Montserrat'),
    bodySmall: TextStyle(fontFamily: 'Montserrat'),
    labelLarge: TextStyle(fontFamily: 'Montserrat'),
    labelSmall: TextStyle(fontFamily: 'Montserrat'),
  ),
);
