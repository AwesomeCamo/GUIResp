import 'package:flutter/material.dart';
import 'package:myapp/data/data.dart';
import 'widgets.dart';

/* Widget, das die angebotenen Produkte in einer Gridview anzeigt
benötigt Angabe der gewünschten Anzahl der nebeneinander angezeigten Tiles */

class TileContainer extends StatelessWidget {
  final int anzahlTilesNebeneinander;

  const TileContainer({
    Key key,
    @required this.anzahlTilesNebeneinander,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      primary: false,
      padding: const EdgeInsets.fromLTRB(12, 0, 12, 12),
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      crossAxisCount: anzahlTilesNebeneinander,
      children: [
        for (var i = 0; i < availableOffers.length; i++) OfferTile(offerID: i),
      ],
      /* For-Schleife iteriert durch die Liste aller Angebote und gibt sie
      in einer scrollbaren Ansicht aus, deren Elementanzahl gleich der Anzahl 
      der Objekte der Liste ist */
    );
  }
}
