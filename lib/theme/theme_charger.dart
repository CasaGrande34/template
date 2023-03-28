import 'package:flutter/material.dart';

class ThemeCharger extends ChangeNotifier {
  ThemeCharger(int theme) {
    switch (theme) {
      case 1: // light
        _isDark = false;
        _currentTheme = themeLight;
        break;
      case 2: // dark
        _isDark = true;
        _currentTheme = themeDark;
        break;
      default:
        _isDark = false;
        _currentTheme = themeLight;
    }
  }

  ThemeData _currentTheme = ThemeData.light();
  get currentTheme => _currentTheme;

  bool _isDark = false;
  bool get isDark => _isDark;
  set isDark(bool value) {
    _isDark = value;
    if (value) {
      _currentTheme = themeDark;
    } else {
      _currentTheme = themeLight;
    }
    notifyListeners();
  }
}

final themeDark = ThemeData.dark().copyWith();
final themeLight = ThemeData.light().copyWith();

// //LIGHT
// const ColorScheme colorSchemeLight = ColorScheme(
//   background: ColorsApp.background,
//   onBackground: ColorsApp.onBackground,
//   brightness: Brightness.light,
//   primary: ColorsApp.onPrimary,
//   onPrimary: ColorsApp.primary,
//   secondary: Colors.amber,
//   onSecondary: Colors.amberAccent,
//   error: Colors.red,
//   onError: Colors.redAccent,
//   surface: Colors.yellow,
//   onSurface: Colors.yellowAccent,
// );

// //DARK
// const ColorScheme colorSchemeDark = ColorScheme(
//   background: ColorsApp.background,
//   onBackground: ColorsApp.onBackground,
//   brightness: Brightness.light,
//   primary: ColorsApp.primary,
//   onPrimary: ColorsApp.onPrimary,
//   secondary: Colors.amber,
//   onSecondary: Colors.amberAccent,
//   error: Colors.red,
//   onError: Colors.redAccent,
//   surface: Colors.yellow,
//   onSurface: Colors.yellowAccent,
// );
