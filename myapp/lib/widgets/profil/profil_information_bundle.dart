import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfilInformationBundle extends StatelessWidget {

  final bool status;
  final String text;
  final String placeholder;

  const ProfilInformationBundle({Key key, @required this.status, @required this.text, @required this.placeholder}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
            padding: EdgeInsets.only(left: 25.0, right: 25.0, top: 25.0),
            child: new Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Expanded(
                  child: Container(
                    child: new Text(
                      'PLZ',
                      style: TextStyle(
                          fontSize: 16.0, fontWeight: FontWeight.bold),
                    ),
                  ),
                  flex: 2,
                ),
                Expanded(
                  child: Container(
                    child: new Text(
                      'Stadt',
                      style: TextStyle(
                          fontSize: 16.0, fontWeight: FontWeight.bold),
                    ),
                  ),
                  flex: 2,
                ),
              ],
            )),
        Padding(
            padding: EdgeInsets.only(left: 25.0, right: 25.0, top: 2.0),
            child: new Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Flexible(
                  child: Padding(
                    padding: EdgeInsets.only(right: 10.0),
                    child: new TextField(
                      decoration: const InputDecoration(
                          hintText: "Gebe deine Postleizahl an..."),
                      enabled: !status,
                    ),
                  ),
                  flex: 2,
                ),
                Flexible(
                  child: new TextField(
                    decoration: const InputDecoration(
                        hintText: "Gebe deine Stadt ein..."),
                    enabled: !status,
                  ),
                  flex: 2,
                ),
              ],
            )),
      ],
    );
  }
}