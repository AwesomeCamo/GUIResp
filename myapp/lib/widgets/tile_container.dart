import 'package:flutter/material.dart';
import 'widgets.dart';

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
      padding: const EdgeInsets.all(20),
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      crossAxisCount: anzahlTilesNebeneinander,
      children: <Widget>[
        OfferTile(offerID: 0),
        OfferTile(offerID: 1),
        OfferTile(offerID: 2),
        OfferTile(offerID: 3),
        OfferTile(offerID: 4),
        OfferTile(offerID: 5),
        OfferTile(offerID: 6),
        OfferTile(offerID: 7),
        OfferTile(offerID: 8),
        OfferTile(offerID: 9),
        OfferTile(offerID: 10),
        OfferTile(offerID: 11),
      ],
    );
  }
}
