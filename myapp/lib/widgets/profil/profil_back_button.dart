import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfilBackButton extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Container(
      child: Padding(
          padding: EdgeInsets.only(left: 20.0, top: 20.0),
          child: new Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.arrow_back_ios,
                ),
                color: Colors.black,
                iconSize: 22.0,
                onPressed: () => Navigator.of(context)
                    .popUntil((route) => route.isFirst),
              ),
              Padding(
                padding: EdgeInsets.only(top: 9.0, left: 10.0),
                child: new Text('Profil',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                        fontFamily: 'sans-serif-light',
                        color: Colors.black)),
              )
            ],
          )
      ),
    );
  }
}