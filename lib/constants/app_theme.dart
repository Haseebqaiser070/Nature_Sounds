import 'package:flutter/material.dart';
import '../screens/navigationbar/more/MyThemePreferences.dart';

////////////////////// light colors scheme 1 , scheme 2 , scheme 3
ColorScheme firstLightScheme = const ColorScheme(
  brightness: Brightness.light,
  primary: Color(0xffFA9384),
  onPrimary: Color(0xffE36A79),
  secondary: Color(0xff8398F3),
  onSecondary: Color(0xff324472),
  error: Colors.transparent,
  onError: Colors.transparent,
  background: Color(0xffFAEDE0),
  onBackground: Color(0xffFFFCFA),
  surface: Colors.transparent,
  onSurface: Colors.transparent,
);
ColorScheme secondlightScheme = const ColorScheme(
  brightness: Brightness.light,
  primary: Color(0xffFAAC6A),
  onPrimary: Color(0xffFB683F),
  secondary: Color(0xff45988E),
  onSecondary: Color(0xff274D5A),
  error: Colors.transparent,
  onError: Colors.transparent,
  background: Color(0xffFAEDE0),
  onBackground: Color(0xffFFFCFA),
  surface: Colors.transparent,
  onSurface: Colors.transparent,
);

ColorScheme thirdlightscheme = const ColorScheme(
  brightness: Brightness.light,
  primary: Color(0xff8DA6FF),
  onPrimary: Color(0xffC84ACB),
  secondary: Color(0xffA190E1),
  onSecondary: Color(0xff4D4471),
  error: Colors.transparent,
  onError: Colors.transparent,
  background: Color(0xffFAEDE0),
  onBackground: Color(0xffFFFCFA),
  surface: Colors.transparent,
  onSurface: Colors.transparent,
);

///////////////////   dark  scheme 1, scheme 2 ,scheme 3

ColorScheme firstDarkScheme = const ColorScheme(
  brightness: Brightness.light,
  primary: Color(0xffFA9384),
  onPrimary: Color(0xffE36A79),
  secondary: Color(0xff8398F3),
  onSecondary: Color(0xff324472),
  error: Colors.transparent,
  onError: Colors.transparent,
  background: Color(0xff10141D),
  onBackground: Color(0xff171B27),
  surface: Colors.transparent,
  onSurface: Colors.transparent,
);
ColorScheme secondDarkScheme = const ColorScheme(
  brightness: Brightness.light,
  primary: Color(0xffFAAC6A),
  onPrimary: Color(0xffFB683F),
  secondary: Color(0xff45988E),
  onSecondary: Color(0xff274D5A),
  error: Colors.transparent,
  onError: Colors.transparent,
  background: Color(0xff142328),
  onBackground: Color(0xff1D3239),
  surface: Colors.transparent,
  onSurface: Colors.transparent,
);

ColorScheme thirdDrkscheme = const ColorScheme(
  brightness: Brightness.light,
  primary: Color(0xff8DA6FF),
  onPrimary: Color(0xffC84ACB),
  secondary: Color(0xffA190E1),
  onSecondary: Color(0xff4D4471),
  error: Colors.transparent,
  onError: Colors.transparent,
  background: Color(0xff27213E),
  onBackground: Color(0xff3D3460),
  surface: Colors.transparent,
  onSurface: Colors.transparent,
);

class ModelTheme extends ChangeNotifier {
  var _selectedScheme = 1;
  var _selectedarkScheme = 1;
  int get selecteLightScheme => _selectedScheme;
  int get selecteDarkScheme => _selectedarkScheme;
  late bool _isDark;
  late MyThemePreferences _preferences;
  bool get isDark => _isDark;

  ModelTheme() {
    _isDark = false;
    _preferences = MyThemePreferences();
    getPreferences();
  }
//Switching the themes
  set isDark(bool value) {
    _isDark = value;
    _preferences.setTheme(value);
    notifyListeners();
  }

  void setColorScheme(int value) {
    _selectedScheme = value;
    notifyListeners();
  }

  void setDarkColorScheme(int value) {
    _selectedarkScheme = value;
    notifyListeners();
  }

  getPreferences() async {
    _isDark = await _preferences.getTheme();
    notifyListeners();
  }
}
