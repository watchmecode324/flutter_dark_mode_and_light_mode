import 'package:flutter/material.dart';

ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.light(
      surface: Colors.blue.shade200,
      primary: Colors.blue.shade100,
      secondary: Colors.white,
    ));

ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.dark(
      surface: Colors.grey.shade800,
      primary: Colors.grey.shade600,
      secondary: Colors.white,
    ));
