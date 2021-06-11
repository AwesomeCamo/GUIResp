import 'package:flutter/material.dart';

import '../home_page.dart';
import 'widgets.dart';

/* Drawermenü welches in Mobil- und Tabletfassung durch Drücken des 
Hamburger-Icons aufgerufen werden kann */

class MenuDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).scaffoldBackgroundColor,
      ),
      width: 220 + MediaQuery.of(context).size.width * 0.035,
      child: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              width: double.infinity,
              child: DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.cyan[200],
                ),
                child: Column(
                  children: [
                    Container(
                      child: Text('Menü'),
                      width: double.infinity,
                    ),
                    Expanded(child: SizedBox()),
                    Row(
                      children: [
                        Container(
                          height: 50,
                          width: 120,
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: Row(
                            children: [
                              Icon(
                                Icons.lightbulb_outline,
                                size: 40,
                              ),
                              ChangeThemeSwitch(),
                            ],
                          ),
                        ),
                        Expanded(child: SizedBox()),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Column(
              children: [
                CreateMenuButton(
                  menuButtonIcon: Icons.home,
                  menuButtonText: 'Home',
                  onPressed: () =>
                      Navigator.of(context).popUntil((route) => route.isFirst),
                ),
                CreateMenuButton(
                  menuButtonIcon: Icons.account_circle_rounded,
                  menuButtonText: 'Profil',
                  onPressed: () => print('button pressed'),
                ),
                CreateMenuButton(
                  menuButtonIcon: Icons.trending_up_rounded,
                  menuButtonText: 'Beliebt',
                  onPressed: () => print('button pressed'),
                ),
                CreateMenuButton(
                  menuButtonIcon: Icons.bookmark_border_rounded,
                  menuButtonText: 'Bookmarked',
                  onPressed: () => print('button pressed'),
                ),
                Expanded(
                  // Spacer um LoginButton an den Boden der Menüleiste zu rücken
                  child: Container(
                    color: Colors.grey[0],
                  ),
                ),
                CreateMenuButton(
                  menuButtonIcon: Icons.login_rounded,
                  menuButtonText: 'Login',
                  onPressed: () => print('button pressed'),
                ),
                MenuSpaceHelper(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
