import 'package:flutter/material.dart';
import 'package:myapp/data/cart_data.dart';

class CartCard extends StatelessWidget {
  final int cartID;

  const CartCard({
    Key key,
    @required this.cartID,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        child: Row(
          children: [
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(addedCartItems[cartID].offerImage),
                  ),
                ),
              ),
            ),
            Text(addedCartItems[cartID].name),
            Text(addedCartItems[cartID].productPrice.toString() + '€'),
          ],
        ),
      ),
    );
  }
}
