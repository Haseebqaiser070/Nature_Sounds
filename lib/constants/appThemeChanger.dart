import 'package:flutter/material.dart';

class ThemeChanger with ChangeNotifier {
  var _themeMode = ThemeMode.light;
  var _themedarkMode = ThemeMode.dark;

  var _selectedScheme = 1;
  int get selecteScheme => _selectedScheme;
  /////////
  var _selecteddarkScheme = 1;
  int get selecteDarkScheme => _selecteddarkScheme;

  ThemeMode get themeMode => _themeMode;
  ThemeMode get ThemedarkMode => _themedarkMode;
  void SetTheme(themeMode) {
    _themeMode = themeMode;
    _themedarkMode = themeMode;
    notifyListeners();
  }
}
