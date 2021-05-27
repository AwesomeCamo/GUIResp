import 'package:flutter/material.dart';
import 'package:myapp/menu_space_helper.dart';

import 'menu_drawer.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            if (constraints.maxWidth < 480) {
              // Anzeige für Mobilgeräte
              return Scaffold(
                drawer: MenuDrawer(),
                appBar: AppBar(
                  title: Text('Meine Mobilansicht'),
                ),
                body: Column(
                  children: [
                    Expanded(
                      child: buildTopBanner(),
                    ),
                    buildContentBox(Colors.grey[300]),
                    buildContentBox(Colors.grey[400]),
                    buildContentBox(Colors.grey[500]),
                  ],
                ),
              );
            } else if (constraints.maxWidth < 1440) {
              // Anzeige für Tablets und Mobile Phones im Landscape Modus
              return Scaffold(
                drawer: MenuDrawer(),
                appBar: AppBar(
                  title: Text('Meine Tabletansicht'),
                ),
                body: Column(
                  children: [
                    Expanded(
                      flex: 1,
                      child: buildTopBanner(),
                    ),
                    Expanded(
                      flex: 3,
                      child: Row(
                        children: [
                          buildContentBox(Colors.grey[300]),
                          buildContentBox(Colors.grey[400]),
                          buildContentBox(Colors.grey[500]),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            } else {
              // Anzeige in Webansicht auf dem Desktop
              return Container(
                child: Column(
                  children: [
                    Expanded(
                      flex: 1,
                      child: buildTopBanner(),
                    ),
                    Expanded(
                      flex: 3,
                      child: Row(
                        children: [
                          Expanded(
                            // Menüzeile an der linken Seite
                            flex: 1,
                            child: Container(
                              child: Column(
                                children: [
                                  CreateMenuButton(
                                    menuButtonIcon:
                                        Icons.account_circle_rounded,
                                    menuButtonText: 'Profil',
                                  ),
                                  CreateMenuButton(
                                    menuButtonIcon: Icons.trending_up_rounded,
                                    menuButtonText: 'Beliebt',
                                  ),
                                  CreateMenuButton(
                                    menuButtonIcon:
                                        Icons.bookmark_border_rounded,
                                    menuButtonText: 'Bookmarked',
                                  ),
                                  Expanded(
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
                              margin: EdgeInsets.all(4),
                              decoration: BoxDecoration(
                                color: Colors.orange[300],
                                borderRadius: BorderRadius.circular(6),
                              ),
                            ),
                          ),
                          Expanded(
                            // gesamter Inhaltsbereich
                            flex: 7,
                            child: Row(
                              children: [
                                buildContentBox(Colors.grey[500]),
                                buildContentBox(Colors.grey[400]),
                                buildContentBox(Colors.grey[300]),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            }
            // Ende des Bildschirmbreiten if-Statements
          },
        ),
      ),
    );
  }

  Padding buildTopBanner() {
    return Padding(
      padding: EdgeInsets.fromLTRB(4, 4, 4, 0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('FoodBanner.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }

  Expanded buildContentBox(Color color) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(6),
        ),
        margin: EdgeInsets.all(4),
      ),
    );
  }
}
