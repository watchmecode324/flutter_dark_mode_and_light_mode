import 'package:flutter/material.dart';

class SwitchThemeProvider extends ChangeNotifier {
  ThemeMode _appThemeMode = ThemeMode.light;

  ThemeMode get appThemeMode => _appThemeMode;

  void switchAppTheme() {
    if (_appThemeMode == ThemeMode.light) {
      _appThemeMode = ThemeMode.dark;
    } else {
      _appThemeMode = ThemeMode.light;
    }
    notifyListeners();
  }
}
