import 'package:flutter/material.dart';
import 'package:myapp/data/cart_data.dart';
import 'package:myapp/models/offer_model.dart';
import 'package:myapp/widgets/widgets.dart';
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
          color: Theme.of(context).cardColor,
          image: DecorationImage(
            alignment: Alignment(0.0, -1.0),
            image: AssetImage(availableOffers[offerID].offerImage),
            fit: BoxFit.fitWidth,
          ),
        ),
        child: Column(
          children: [
            Expanded(
              child: SizedBox(),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Text(availableOffers[offerID].name),
                    Text(availableOffers[offerID].productPrice.toString() +
                        '€'), // Preis aus dem Listeneintrag holen und €-Zeichen anhängen
                  ],
                ),
                CircularIconButton(
                  backgroundColor: Theme.of(context).cardColor,
                  icon: Icons.add_shopping_cart,
                  iconSize: 20,
                  onPressed: () => addedCartItems.add(
                    Offer(
                        name: availableOffers[offerID].name,
                        offerImage: availableOffers[offerID].offerImage,
                        productPrice: availableOffers[offerID].productPrice),
                  ),
                  tooltip: 'Zu Einkaufswagen hinzufügen',
                ),
              ],
            ), // Spacer um Preis ans untere Ende zu setzen
          ],
        ),
      ),
    );
  }
}
