import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfilAvatar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Container(
      child: Padding(
        padding: EdgeInsets.only(top: 20.0),
        child:
        new Stack(fit: StackFit.loose, children: <Widget>[
          Padding(
              padding: EdgeInsets.only(top: 40.0, bottom: 40.0),
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new CircleAvatar(
                    backgroundColor: Colors.lightGreen,
                    radius: 25.0,
                    child: new Icon(
                      Icons.camera_alt,
                      color: Colors.white,
                    ),
                  )
                ],
              )),
        ]),
      )
    );
  }
}