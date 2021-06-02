import 'package:flutter/material.dart';

import 'home_page.dart';
import 'provider/theme_provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'FlutterDemo',
      themeMode: ThemeMode.dark,
      theme: MyThemes.lightMode,
      darkTheme: MyThemes.darkMode,
      home: HomePage(),
    );
  }
}
