import 'package:flutter/material.dart';
import 'package:myapp/data/cart_data.dart';

import '../cart_page.dart';

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
        child: Padding(
          padding: const EdgeInsets.fromLTRB(5, 0, 20, 0),
          child: Row(
            children: [
              Expanded(
                flex: 15,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Container(
                        height: 60 + MediaQuery.of(context).size.width * 0.03,
                        width: 60 + MediaQuery.of(context).size.width * 0.03,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image:
                                AssetImage(addedCartItems[cartID].offerImage),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Text(
                        addedCartItems[cartID].name,
                        style: TextStyle(
                            color: Theme.of(context).highlightColor,
                            fontSize:
                                12 + MediaQuery.of(context).size.width * 0.01),
                      ),
                    ),
                    Text(
                      addedCartItems[cartID].productPrice.toString() + '€',
                      style: TextStyle(
                          color: Theme.of(context).highlightColor,
                          fontSize:
                              12 + MediaQuery.of(context).size.width * 0.01),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.all(4),
                  child: IconButton(
                    icon: Icon(
                      Icons.delete_outlined,
                      color: Colors.red,
                    ),
                    onPressed: () {
                      addedCartItems.removeAt(cartID);
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => CartPage()));
                    },
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
