import 'package:flutter/material.dart';

// Dieses Widget trennt den letzten Menüpunkt vom Boden

class MenuSpaceHelper extends StatelessWidget {
  const MenuSpaceHelper({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 4,
      color: Colors.grey[0],
    );
  }
}
