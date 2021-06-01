import 'package:flutter/material.dart';

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
                  width: 156,
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
                CircularIconButton(
                  icon: Icons.shopping_cart,
                  iconSize: 40,
                  onPressed: () => print('Einkaufswagen angeklickt'),
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
    );
  }
}
