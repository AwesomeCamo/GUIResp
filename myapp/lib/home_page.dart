import 'package:flutter/material.dart';
import 'package:myapp/profil_page.dart';
import 'package:myapp/profil_page_bad_example.dart';

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
                      flex: 11,
                      child: TileContainer(
                        anzahlTilesNebeneinander: 2,
                      ),
                    ),
                  ],
                ),
                bottomNavigationBar: CustomBottomBar(),
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
                      height: 80,
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
                bottomNavigationBar: CustomBottomBar(),
              );
            } else {
              // Anzeige in Webansicht auf dem Desktop ab 1440px Breite
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
                                    onPressed: () => Navigator.of(context)
                                        .popUntil((route) => route.isFirst),
                                  ),
                                  CreateMenuButton(
                                      menuButtonIcon:
                                          Icons.account_circle_rounded,
                                      menuButtonText: 'Profil',
                                      onPressed: () => Navigator.of(context)
                                          .push(MaterialPageRoute(
                                              builder: (context) =>
                                                  ProfilPage()))),
                                  CreateMenuButton(
                                      menuButtonIcon:
                                          Icons.account_circle_rounded,
                                      menuButtonText: 'Profil-Schlecht',
                                      onPressed: () => Navigator.of(context)
                                          .push(MaterialPageRoute(
                                              builder: (context) =>
                                                  ProfilPageBadExample()))),
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
                            flex: 6,
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
}
