import 'package:flutter/material.dart';
import 'widgets.dart';

class TileContainer extends StatelessWidget {
  const TileContainer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(4),
      child: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(child: OfferTile(offerID: 0)),
                Expanded(child: OfferTile(offerID: 1)),
                Expanded(child: OfferTile(offerID: 2)),
                Expanded(child: OfferTile(offerID: 3)),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(child: OfferTile(offerID: 4)),
                Expanded(child: OfferTile(offerID: 5)),
                Expanded(child: OfferTile(offerID: 6)),
                Expanded(child: OfferTile(offerID: 7)),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(child: OfferTile(offerID: 8)),
                Expanded(child: OfferTile(offerID: 9)),
                Expanded(child: OfferTile(offerID: 10)),
                Expanded(child: OfferTile(offerID: 11)),
              ],
            ),
          )
        ],
      ),
    );
  }
}
