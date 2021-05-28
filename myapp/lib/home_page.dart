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
                    /* title: Text('Meine Mobilansicht'), */
                    ),
                body: Column(
                  children: [
                    Expanded(
                      child: buildTopBanner(),
                    ),
                    Expanded(
                      flex: 7,
                      child: Column(
                        // TODO: In Listview umwandeln
                        children: [
                          Expanded(
                            flex: 7,
                            child: buildColoredBox(Colors.grey[400]),
                          ),
                          Expanded(
                            flex: 2,
                            child: buildColoredBox(Colors.grey[400]),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                floatingActionButton: FloatingActionButton(
                  onPressed: () {
                    print('Button Pressed');
                  },
                  child: const Icon(Icons.shopping_cart),
                  backgroundColor: Colors.grey[600],
                ),
              );
            } else if (constraints.maxWidth < 1440) {
              // Anzeige für Tablets und Mobile Phones im Landscape Modus
              return Scaffold(
                drawer: MenuDrawer(),
                appBar: AppBar(
                    /* title: Text('Meine Tabletansicht'), */
                    ),
                body: Column(
                  children: [
                    Expanded(
                      flex: 1,
                      child: buildTopBanner(),
                    ),
                    Expanded(
                      flex: 5,
                      child: Row(
                        children: [
                          Expanded(
                            flex: 7,
                            child: buildColoredBox(Colors.grey[400]),
                          ),
                          Expanded(
                            flex: 2,
                            child: buildColoredBox(Colors.grey[400]),
                          ),
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
                      flex: 5,
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
                                color: Colors.cyan[200],
                                borderRadius: BorderRadius.circular(6),
                              ),
                            ),
                          ),
                          Expanded(
                            // gesamter Inhaltsbereich
                            flex: 7,
                            child: Row(
                              children: [
                                Expanded(
                                  flex: 7,
                                  child: buildColoredBox(Colors.grey[400]),
                                ),
                                Expanded(
                                  flex: 2,
                                  child: buildColoredBox(Colors.grey[400]),
                                ),
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

  Column buildTopBanner() {
    return Column(
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('Banner.png'),
              ),
            ),
          ),
        ),
        SizedBox(
          width: double.infinity,
          height: 10,
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.grey[300],
                  Colors.white,
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  Container buildColoredBox(Color color) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(6),
      ),
      margin: EdgeInsets.all(4),
    );
  }
}
