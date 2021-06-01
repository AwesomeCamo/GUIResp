import 'package:flutter/material.dart';
import '../data/data.dart';

/* Klasse zum Erstellen eines Card-Widgets, das ein Produktvorschaubild,
den Preis und den Namen zeigen.
Benötigt die ID des anzuzeigenden Produkts */

class OfferTile extends StatelessWidget {
  final int offerID;

  const OfferTile({
    Key key,
    @required this.offerID,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        margin: EdgeInsets.all(6),
        decoration: BoxDecoration(
          color: Colors.white70,
          image: DecorationImage(
            image: AssetImage(availableOffers[offerID].offerImage),
            fit: BoxFit.fitWidth,
          ),
        ),
        child: Column(
          children: [
            Text(availableOffers[offerID].name),
            Expanded(
              child: SizedBox(),
            ), // Spacer um Preis ans untere Ende zu setzen
            Text(availableOffers[offerID].productPrice.toString() +
                '€') // Preis aus dem Listeneintrag holen und €-Zeichen anhängen
          ],
        ),
      ),
    );
  }
}
