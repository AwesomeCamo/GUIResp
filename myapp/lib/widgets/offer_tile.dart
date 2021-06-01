import 'package:flutter/material.dart';
import '../data/data.dart';

class OfferTile extends StatelessWidget {
  final int offerID;

  const OfferTile({
    Key key,
    @required this.offerID,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(4),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
        borderRadius: BorderRadius.circular(6),
        color: Colors.white70,
        image: DecorationImage(
          image: AssetImage(availableOffers[offerID].offerImage),
          fit: BoxFit.fitWidth,
        ),
      ),
      child: Column(
        children: [
          Text(availableOffers[offerID].name),
          Expanded(child: SizedBox()),
          Text(availableOffers[offerID].productPrice.toString() +
              '€') // Preis aus dem Listeneintrag holen und €-Zeichen anhängen
        ],
      ),
    );
  }
}
