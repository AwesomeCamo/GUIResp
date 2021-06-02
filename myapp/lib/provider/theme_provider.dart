import 'package:flutter/material.dart';

class MyThemes {
  static final darkMode = ThemeData(
    scaffoldBackgroundColor: Colors.grey[850],
    primaryColor: Colors.black45,
    primaryColorLight: Colors.cyan[900],
    primaryColorDark: Colors.grey[700],
    cardColor: Colors.grey[700],
  );

  static final lightMode = ThemeData(
    scaffoldBackgroundColor: Colors.grey[50],
    primaryColor: Colors.grey[300],
    primaryColorLight: Colors.cyan[200],
    primaryColorDark: Colors.black,
    cardColor: Colors.white,
  );
}
