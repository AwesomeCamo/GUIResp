import 'package:flutter/material.dart';

class MenuDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text('Menü'),
          ),
          ListTile(
            title: Text('Menüpunkt 1'),
            onTap: () {},
          ),
          ListTile(
            title: Text('Menüpunkt 2'),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
