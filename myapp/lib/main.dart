import 'package:flutter/material.dart';
import 'package:myapp/contact_page.dart';
import 'package:provider/provider.dart';

import 'home_page.dart';
import 'profil_page.dart';
import 'provider/theme_provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
        create: (context) => ThemeProvider(),
        builder: (context, _) {
          final themeProvider = Provider.of<ThemeProvider>(context);
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Smartbuy',
            themeMode: themeProvider.themeMode,
            theme: MyThemes.lightMode,
            darkTheme: MyThemes.darkMode,
            home: ProfilPage(),
            routes: <String, WidgetBuilder>{
              '/profil': (BuildContext context) => ProfilPage(),
              '/contact': (BuildContext context) => ContactPage(),
            }
          );
        },
      );
}
