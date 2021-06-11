import 'package:flutter/material.dart';

import 'cart_page.dart';
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
            if (constraints.maxWidth < 600) {
              // Anzeige für Mobilgeräte
              return Scaffold(
                extendBodyBehindAppBar: true,
                drawer: MenuDrawer(),
                appBar: AppBar(
                  backgroundColor: Colors.transparent,
                  iconTheme: IconThemeData(color: Colors.black),
                  elevation: 0,
                  actions: [
                    CircularIconButton(
                      backgroundColor: Theme.of(context).cardColor,
                      icon: Icons.search,
                      iconSize: 20,
                      onPressed: () => setState(
                        () => print('Suchen'),
                      ),
                      tooltip: 'Suchen',
                    ),
                  ],
                ),
                body: Column(
                  children: [
                    Expanded(child: LogoBannerTop()),
                    BannerShadow(),
                    Expanded(
                      flex: 6,
                      child: TileContainer(
                        anzahlTilesNebeneinander: 2,
                      ),
                    ),
                  ],
                ),
                floatingActionButton: FloatingActionButton(
                  onPressed: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => CartPage())),
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
                  iconTheme: IconThemeData(color: Colors.black),
                  elevation: 0,
                ),
                body: Column(
                  children: [
                    Container(
                      height: 120,
                      child: Column(
                        children: [
                          Expanded(
                            child: TabletTopBanner(),
                          ),
                          BannerShadow(),
                        ],
                      ),
                    ),
                    Expanded(
                      child: TileContainer(
                        anzahlTilesNebeneinander: 3,
                      ),
                    ),
                  ],
                ),
                floatingActionButton: FloatingActionButton(
                  onPressed: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => CartPage())),
                  child: const Icon(Icons.shopping_cart),
                  backgroundColor: Colors.grey[600],
                  foregroundColor: Colors.black,
                ), // Button um auf Einkaufswagen zuzugreifen TODO: Einkaufswagenfunktionalität hinzufügen
              );
            } else {
              // Anzeige in Webansicht auf dem Desktop
              return Container(
                child: Column(
                  children: [
                    DesktopTopBanner(),
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
                                    menuButtonIcon: Icons.home,
                                    menuButtonText: 'Home',
                                    onPressed: () => Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => HomePage(),
                                      ),
                                    ),
                                  ),
                                  CreateMenuButton(
                                    menuButtonIcon:
                                        Icons.account_circle_rounded,
                                    menuButtonText: 'Profil',
                                    onPressed: () => print('button pressed'),
                                  ),
                                  CreateMenuButton(
                                    menuButtonIcon: Icons.trending_up_rounded,
                                    menuButtonText: 'Beliebt',
                                    onPressed: () => print('button pressed'),
                                  ),
                                  CreateMenuButton(
                                    menuButtonIcon:
                                        Icons.bookmark_border_rounded,
                                    menuButtonText: 'Bookmarked',
                                    onPressed: () => print('button pressed'),
                                  ),
                                  Expanded(
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
                              margin: EdgeInsets.all(4),
                              decoration: BoxDecoration(
                                color: Theme.of(context).primaryColorLight,
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
                                  child: TileContainer(
                                    anzahlTilesNebeneinander: 4,
                                  ),
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

/* farbige Box zur Vereinfachung der Anordnung von Elementen */

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
