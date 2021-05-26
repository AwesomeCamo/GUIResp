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
              color: Colors.orange[300],
            ),
            child: Text('Menü'),
          ),
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
          CreateMenuButton(
            menuButtonIcon: Icons.login_rounded,
            menuButtonText: 'Login',
          ),
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
    return OutlinedButton(
      onPressed: () => print('button pressed'),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            menuButtonIcon,
          ),
          Text(menuButtonText),
        ],
      ),
    );
  }
}
