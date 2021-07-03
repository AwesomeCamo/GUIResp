import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

typedef void StatusCallback(bool status);

class ProfilActionButtons extends StatelessWidget {

  final StatusCallback onStatusChanged;

  const ProfilActionButtons({Key key, @required this.onStatusChanged}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 25.0, right: 25.0, top: 45.0),
      child: new Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(right: 10.0),
              child: Container(
                  child: new RaisedButton(
                    child: new Text("Speichern"),
                    textColor: Colors.white,
                    color: Colors.green,
                    onPressed: () {
                      onStatusChanged(true);
                    },
                    shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(20.0)),
                  )),
            ),
            flex: 2,
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 10.0),
              child: Container(
                  child: new RaisedButton(
                    child: new Text("Abbrechen"),
                    textColor: Colors.white,
                    color: Colors.red,
                    onPressed: () {
                      onStatusChanged(true);
                    },
                    shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(20.0)),
                  )),
            ),
            flex: 2,
          ),
        ],
      ),
    );
  }
}