import 'package:flutter/material.dart';

class TabletTileContainer extends StatelessWidget {
  const TabletTileContainer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(4),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
        borderRadius: BorderRadius.circular(6),
      ),
      child: Column(
        children: [
          Row(),
          Row(),
          Row(),
          Row(),
          Row(),
        ],
      ),
    );
  }
}
