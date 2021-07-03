import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

typedef void StatusCallback(bool status);

class ProfilEditButton extends StatelessWidget {

  final StatusCallback onStatusChanged;

  const ProfilEditButton({Key key, @required this.onStatusChanged})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new GestureDetector(
      child: new CircleAvatar(
        backgroundColor: Colors.red,
        radius: 14.0,
        child: new IconButton(
          padding: EdgeInsets.only(left: 2, bottom: 2),
          icon: new Icon(
            Icons.edit,
            color: Colors.white,
            size: 14.0,
          ), onPressed: () { onStatusChanged(false); },
        ),
      ),
      onTap: () {
      },
    );
  }
}