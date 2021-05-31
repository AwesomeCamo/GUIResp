import 'package:flutter/material.dart';

import 'widgets/widgets.dart';

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
                extendBodyBehindAppBar: true,
                drawer: MenuDrawer(),
                appBar: AppBar(
                  backgroundColor: Colors.transparent,
                  elevation: 0,
                  actions: [
                    CircularIconButton(
                      backgroundColor: Colors.white,
                      icon: Icons.search,
                      iconSize: 20,
                      onPressed: () => print('Suchen'),
                      tooltip: 'Suchen',
                    ),
                  ],
                ),
                body: Column(
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          Expanded(
                            child: LogoBannerTop(),
                          ),
                          BannerShadow(),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 6,
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
                extendBodyBehindAppBar: true,
                drawer: MenuDrawer(),
                appBar: AppBar(
                  backgroundColor: Colors.transparent,
                  elevation: 0,
                  /* title: Text('Meine Tabletansicht'), */
                ),
                body: Column(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Column(
                        children: [
                          Expanded(
                            child: Row(
                              children: [
                                SizedBox(
                                  height: double.infinity,
                                  width:
                                      MediaQuery.of(context).size.width * 0.07,
                                ),
                                Expanded(
                                  child: LogoBannerTop(),
                                ),
                                CircularIconButton(
                                  icon: Icons.search,
                                  iconSize: 40,
                                  onPressed: () => print('Suchen'),
                                  tooltip: 'Suchen',
                                  backgroundColor: Colors.grey,
                                ),
                                CircularIconButton(
                                  icon: Icons.person,
                                  iconSize: 40,
                                  onPressed: () => print('Profil angeklickt'),
                                  tooltip: 'Mein Profil',
                                  backgroundColor: Colors.grey,
                                ),
                              ],
                            ),
                          ),
                          BannerShadow(),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 4,
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
                floatingActionButton: FloatingActionButton(
                  onPressed: () {
                    print('Button Pressed');
                  },
                  child: const Icon(Icons.shopping_cart),
                  backgroundColor: Colors.grey[600],
                ),
              );
            } else {
              // Anzeige in Webansicht auf dem Desktop
              return Container(
                child: Column(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Column(
                        children: [
                          Expanded(
                            child: Row(
                              children: [
                                SizedBox(
                                  height: double.infinity,
                                  width: 156,
                                ),
                                Expanded(
                                  child: LogoBannerTop(),
                                ),
                                CircularIconButton(
                                  icon: Icons.search,
                                  iconSize: 40,
                                  onPressed: () => print('Suchen'),
                                  tooltip: 'Suchen',
                                  backgroundColor: Colors.grey,
                                ),
                                CircularIconButton(
                                  icon: Icons.shopping_cart,
                                  iconSize: 40,
                                  onPressed: () =>
                                      print('Einkaufswagen angeklickt'),
                                  tooltip: 'Einkaufswagen',
                                  backgroundColor: Colors.grey,
                                ),
                                CircularIconButton(
                                  icon: Icons.person,
                                  iconSize: 40,
                                  onPressed: () => print('Profil angeklickt'),
                                  tooltip: 'Mein Profil',
                                  backgroundColor: Colors.grey,
                                ),
                              ],
                            ),
                          ),
                          BannerShadow(),
                        ],
                      ),
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
                                  child: TileContainer(),
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
