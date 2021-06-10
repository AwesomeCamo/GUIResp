import 'package:flutter/material.dart';
import 'package:myapp/cart_page.dart';
import 'package:myapp/data/cart_data.dart';

import 'widgets.dart';

/* Gesamte oberer Teil der Desktopfassung, mit Logo, 
Buttons und Schatten zur Abhebung */

class DesktopTopBanner extends StatelessWidget {
  const DesktopTopBanner({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                SizedBox(
                  height: double.infinity,
                  width: 20,
                ),
                Container(
                  height: 50,
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
                SizedBox(
                  height: double.infinity,
                  width: 104,
                ), // Stellt das Logo immer in die Mitte, width kommt von Breite der Buttons
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
                Stack(
                  children: [
                    CircularIconButton(
                      icon: Icons.shopping_cart,
                      iconSize: 40,
                      onPressed: () => Navigator.push(context,
                          MaterialPageRoute(builder: (context) => CartPage())),
                      tooltip: 'Einkaufswagen',
                      backgroundColor: Colors.grey,
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(42, 42, 0, 0),
                      child: Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Colors.red),
                        child: Padding(
                          padding: EdgeInsets.all(5),
                          child: Text(
                            addedCartItems.length.toString(),
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ],
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
    );
  }
}
