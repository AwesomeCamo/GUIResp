import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfilInformationLine extends StatelessWidget {
  final bool status;
  final String text;
  final String placeholder;

  const ProfilInformationLine(
      {Key key,
      @required this.status,
      @required this.text,
      @required this.placeholder})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
            padding: EdgeInsets.only(left: 25.0, right: 25.0, top: 25.0),
            child: new Row(
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                new Column(
                  children: <Widget>[
                    new Text(
                      text,
                      style: TextStyle(
                          fontSize: 16.0, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ],
            )),
        Padding(
            padding: EdgeInsets.only(left: 25.0, right: 25.0, top: 2.0),
            child: new Row(
              children: <Widget>[
                new Flexible(
                  child: new TextField(
                    decoration: InputDecoration(hintText: placeholder),
                    enabled: !status,
                    autofocus: !status,
                  ),
                ),
              ],
            )),
      ],
    );
  }
}
