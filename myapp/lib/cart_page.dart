import 'package:flutter/material.dart';
import 'package:myapp/data/cart_data.dart';

import 'widgets/widgets.dart';

class CartPage extends StatefulWidget {
  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
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
                      onPressed: () => print('Suchen'),
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
                      child: Column(
                        children: [
                          Expanded(
                            // Auflistung aller Items im Einkaufswagen
                            flex: 10,
                            child: ListView.builder(
                              padding: EdgeInsets.all(0),
                              itemCount: addedCartItems.length,
                              itemBuilder: (context, index) =>
                                  CartCard(cartID: index),
                            ),
                          ),
                          Expanded(
                            // Untere Leiste zum Checkout mit Gesamtpreis
                            flex: 2,
                            child: Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: Theme.of(context).cardColor,
                                borderRadius: BorderRadius.circular(6),
                              ),
                              margin: EdgeInsets.all(4),
                              child: Column(
                                children: [
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(0, 6, 0, 0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          'Total:',
                                          style: TextStyle(
                                              color: Theme.of(context)
                                                  .highlightColor,
                                              fontSize: 16),
                                        ),
                                        Text(
                                          addCostTotal().toStringAsFixed(2),
                                          style: TextStyle(
                                              color: Theme.of(context)
                                                  .highlightColor,
                                              fontSize: 16),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(8),
                                    child: ElevatedButton(
                                        onPressed: () {},
                                        child: Text('Checkout')),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                floatingActionButton: FloatingActionButton(
                  onPressed: () =>
                      Navigator.of(context).popUntil((route) => route.isFirst),
                  child: const Icon(Icons.home),
                  backgroundColor: Colors.grey[600],
                ), // Button um zurück auf Home Seite zu kommen
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
                      // gesamter Inhaltsbereich
                      flex: 7,
                      child: Column(
                        children: [
                          Expanded(
                            flex: 11,
                            child: ListView.builder(
                              padding: EdgeInsets.all(0),
                              itemCount: addedCartItems.length,
                              itemBuilder: (context, index) =>
                                  CartCard(cartID: index),
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: Theme.of(context).cardColor,
                                borderRadius: BorderRadius.circular(6),
                              ),
                              margin: EdgeInsets.all(4),
                              child: Column(
                                children: [
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(0, 10, 0, 0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          'Total:',
                                          style: TextStyle(
                                              color: Theme.of(context)
                                                  .highlightColor,
                                              fontSize: 24),
                                        ),
                                        Text(
                                          addCostTotal().toStringAsFixed(2),
                                          style: TextStyle(
                                              color: Theme.of(context)
                                                  .highlightColor,
                                              fontSize: 24),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(12),
                                    child: ElevatedButton(
                                        onPressed: () {},
                                        child: Text('Checkout')),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                floatingActionButton: FloatingActionButton(
                  onPressed: () =>
                      Navigator.of(context).popUntil((route) => route.isFirst),
                  child: const Icon(Icons.home),
                  backgroundColor: Colors.grey[600],
                  foregroundColor: Colors.black,
                ), // Button um zurück auf Home Seite zu kommen
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
                                    onPressed: () => Navigator.of(context)
                                        .popUntil((route) => route.isFirst),
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
                                  flex: 11,
                                  child: ListView.builder(
                                    itemCount: addedCartItems.length,
                                    itemBuilder: (context, index) =>
                                        CartCard(cartID: index),
                                  ),
                                ),
                                Expanded(
                                  flex: 2,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Theme.of(context).cardColor,
                                      borderRadius: BorderRadius.circular(6),
                                    ),
                                    margin: EdgeInsets.all(4),
                                    child: Column(
                                      children: [
                                        Text(
                                          'Total:',
                                          style: TextStyle(
                                              color: Theme.of(context)
                                                  .highlightColor,
                                              fontSize: 24),
                                        ),
                                        Text(
                                          addCostTotal().toStringAsFixed(2),
                                          style: TextStyle(
                                              color: Theme.of(context)
                                                  .highlightColor,
                                              fontSize: 24),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.all(12),
                                          child: ElevatedButton(
                                              onPressed: () {},
                                              child: Text('Checkout')),
                                        ),
                                      ],
                                    ),
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

  double addCostTotal() {
    double totalSum = 0;
    for (var i = 0; i < addedCartItems.length; i++) {
      totalSum += addedCartItems[i].productPrice;
    }
    return totalSum;
  }
}
