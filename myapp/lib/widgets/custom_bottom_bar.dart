import 'package:flutter/material.dart';

import '../cart_page.dart';

class CustomBottomBar extends StatelessWidget {
  const CustomBottomBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(
            icon: Icon(Icons.home),
            iconSize: 40,
            tooltip: 'Home',
            onPressed: () =>
                Navigator.of(context).popUntil((route) => route.isFirst),
          ),
          IconButton(
              icon: Icon(Icons.person),
              iconSize: 40,
              tooltip: 'Profil',
              onPressed: () {}),
          IconButton(
            icon: Icon(Icons.shopping_cart),
            iconSize: 40,
            tooltip: 'Cart',
            onPressed: () => Navigator.push(
                context, MaterialPageRoute(builder: (context) => CartPage())),
          ),
        ],
      ),
      color: Theme.of(context).primaryColorLight,
    );
  }
}
