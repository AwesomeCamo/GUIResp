import 'package:flutter/material.dart';

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
      width: MediaQuery.of(context).size.width * 0.75,
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
                  menuButtonIcon: Icons.account_circle_rounded,
                  menuButtonText: 'Profil',
                ),
                CreateMenuButton(
                  menuButtonIcon: Icons.trending_up_rounded,
                  menuButtonText: 'Beliebt',
                ),
                CreateMenuButton(
                  menuButtonIcon: Icons.bookmark_border_rounded,
                  menuButtonText: 'Bookmarked',
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
