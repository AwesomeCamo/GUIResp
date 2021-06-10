import 'package:flutter/material.dart';
import 'package:myapp/data/cart_data.dart';
import 'package:myapp/models/offer_model.dart';
import 'package:myapp/widgets/widgets.dart';
import '../data/data.dart';
import '../home_page.dart';

/* Klasse zum Erstellen eines Card-Widgets, das ein Produktvorschaubild,
den Preis und den Namen zeigen.
Benötigt die ID des anzuzeigenden Produkts */

class OfferTile extends StatefulWidget {
  final int offerID;

  const OfferTile({
    Key key,
    @required this.offerID,
  }) : super(key: key);

  @override
  _OfferTileState createState() => _OfferTileState();
}

class _OfferTileState extends State<OfferTile> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        margin: EdgeInsets.all(6),
        decoration: BoxDecoration(
          color: Theme.of(context).cardColor,
          image: DecorationImage(
            alignment: Alignment(0.0, -1.0),
            image: AssetImage(availableOffers[widget.offerID].offerImage),
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
                SizedBox(
                  height: 40,
                  width: 40,
                ),
                Column(
                  children: [
                    Text(
                      availableOffers[widget.offerID].name,
                      style: TextStyle(color: Theme.of(context).highlightColor),
                    ),
                    Text(
                      availableOffers[widget.offerID].productPrice.toString() +
                          '€',
                      style: TextStyle(color: Theme.of(context).highlightColor),
                    ), // Preis aus dem Listeneintrag holen und €-Zeichen anhängen
                  ],
                ),
                CircularIconButton(
                  backgroundColor: Theme.of(context).primaryColorLight,
                  icon: Icons.add_shopping_cart,
                  iconSize: 20,
                  onPressed: () {
                    addedCartItems.add(
                      Offer(
                          name: availableOffers[widget.offerID].name,
                          offerImage:
                              availableOffers[widget.offerID].offerImage,
                          productPrice:
                              availableOffers[widget.offerID].productPrice),
                    );
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomePage()));
                  },
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
