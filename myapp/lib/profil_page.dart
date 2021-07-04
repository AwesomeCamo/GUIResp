import 'package:flutter/material.dart';
import 'package:myapp/widgets/profil/profil_action_buttons.dart';
import 'package:myapp/widgets/profil/profil_avatar.dart';
import 'package:myapp/widgets/profil/profil_back_button.dart';
import 'package:myapp/widgets/profil/profil_edit_button.dart';
import 'package:myapp/widgets/profil/profil_information_bundle.dart';
import 'package:myapp/widgets/profil/profil_information_line.dart';

final double breakPoint = 780;

class ProfilPage extends StatefulWidget {
  @override
  _ProfilPageState createState() => _ProfilPageState();
}

class _ProfilPageState extends State<ProfilPage> {
  bool _status = true;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: SafeArea(
        child: LayoutBuilder(builder: (context, constraints) {
          return Scaffold(
            body: Column(
              children: <Widget>[
                new Container(
                  child: new Column(
                    children: <Widget>[ProfilBackButton(), ProfilAvatar()],
                  ),
                ),
                Container(
                  width: breakPoint,
                  child: Padding(
                      padding: EdgeInsets.only(
                          left: 25.0, right: 25.0, top: 25.0),
                      child: new Row(
                        mainAxisAlignment:
                        MainAxisAlignment.spaceBetween,
                        mainAxisSize: MainAxisSize.max,
                        children: <Widget>[
                          new Column(
                            mainAxisAlignment:
                            MainAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              new Text(
                                'Persönliche Informationen',
                                style: TextStyle(
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          new Column(
                            mainAxisAlignment:
                            MainAxisAlignment.end,
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              _status
                                  ? ProfilEditButton(
                                  onStatusChanged: updateStatus)
                                  : new Container(),
                            ],
                          )
                        ],
                      )),
                ),
                Expanded(
                  child: new Container(
                    color: Color(0xffFFFFFF),
                    width: breakPoint,
                    child: Padding(
                      padding: EdgeInsets.only(bottom: 25.0),
                      child: SingleChildScrollView(
                        child: ConstrainedBox(
                          constraints: BoxConstraints(
                          ),
                          child: new Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              ProfilInformationLine(
                                  status: _status,
                                  text: 'Name',
                                  placeholder: "Gebe deinen Namen ein..."),
                              ProfilInformationLine(
                                  status: _status,
                                  text: 'Email',
                                  placeholder: "Gebe deine Email ein..."),
                              ProfilInformationLine(
                                  status: _status,
                                  text: 'Telefon',
                                  placeholder: "Gebe deine Nummer ein..."),
                              if (constraints.maxWidth < breakPoint)
                                ProfilInformationLine(
                                    status: _status,
                                    text: 'PLZ',
                                    placeholder:
                                        "Gebe deine Postleizahl an..."),
                              if (constraints.maxWidth < breakPoint)
                                ProfilInformationLine(
                                    status: _status,
                                    text: 'Stadt',
                                    placeholder: "Gebe deine Stadt an..."),
                              if (constraints.maxWidth >= breakPoint)
                                ProfilInformationBundle(
                                    status: _status,
                                    text: "text",
                                    placeholder: "placeholder"),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                new Container(
                  width: breakPoint,
                  child: !_status
                      ? ProfilActionButtons(onStatusChanged: updateStatus)
                      : new Container(),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                  width: MediaQuery.of(context).size.width,
                ),
              ],
            ),
          );
        }),
      ),
    );
  }

  void updateStatus(bool status) {
    setState(() {
      _status = status;
    });
  }
}
