import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeMode themeMode = ThemeMode.light;

  bool get isDarkMode => themeMode == ThemeMode.dark;

  void toggleTheme(bool isActive) {
    themeMode = isActive ? ThemeMode.dark : ThemeMode.light;
    notifyListeners();
  }
}

class MyThemes {
  static final darkMode = ThemeData(
    scaffoldBackgroundColor: Colors.grey[850],
    primaryColor: Colors.black45,
    primaryColorLight: Colors.cyan[900],
    primaryColorDark: Colors.grey[700],
    cardColor: Colors.grey[800],
    highlightColor: Colors.white,
    textTheme: TextTheme(
      bodyText1: TextStyle(
        color: Colors.white,
      ),
    ),
  );

  static final lightMode = ThemeData(
    scaffoldBackgroundColor: Colors.grey[50],
    primaryColor: Colors.grey[300],
    primaryColorLight: Colors.cyan[200],
    primaryColorDark: Colors.black,
    cardColor: Colors.white,
    highlightColor: Colors.black,
  );
}
