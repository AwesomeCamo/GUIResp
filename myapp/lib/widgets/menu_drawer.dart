import 'package:flutter/material.dart';

import 'widgets.dart';

class MenuDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      width: MediaQuery.of(context).size.width * 0.75,
      child: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              child: DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.cyan[200],
                ),
                child: Container(
                  child: Text('Menü'),
                  width: double.infinity,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Column(
              children: [
                CreateMenuButton(
                  menuButtonIcon: Icons.account_circle_rounded,
                  menuButtonText: 'Profil',
                ),
                CreateMenuButton(
                  menuButtonIcon: Icons.trending_up_rounded,
                  menuButtonText: 'Beliebt',
                ),
                CreateMenuButton(
                  menuButtonIcon: Icons.bookmark_border_rounded,
                  menuButtonText: 'Bookmarked',
                ),
                Expanded(
                  // Spacer um LoginButton an den Boden der Menüleiste zu rücken
                  child: Container(
                    color: Colors.grey[0],
                  ),
                ),
                CreateMenuButton(
                  menuButtonIcon: Icons.login_rounded,
                  menuButtonText: 'Login',
                ),
                MenuSpaceHelper(),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class CreateMenuButton extends StatelessWidget {
  final IconData menuButtonIcon;
  final String menuButtonText;

  const CreateMenuButton({
    Key key,
    @required this.menuButtonIcon,
    @required this.menuButtonText,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(4, 4, 4, 0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.white, // Hintergrundfarbe der Menübuttons
          onPrimary: Colors.black, // Schrift- und Iconfarbe
        ),
        onPressed: () => print('button pressed'),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(
              menuButtonIcon,
            ),
            Container(
              child: Text(menuButtonText),
              padding:
                  EdgeInsets.all(MediaQuery.of(context).size.height * 0.02),
            ),
          ],
        ),
      ),
    );
  }
}
