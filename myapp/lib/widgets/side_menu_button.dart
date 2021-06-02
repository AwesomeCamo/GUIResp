import 'package:flutter/material.dart';

/* Klasse zum erstellen von Menübuttons, welche später im Drawermenü,
 oder im Menü an der Seite angezeigt werden. 
 Gewünschter Text und Icon müssen übergeben werden */

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
          primary: Theme.of(context)
              .primaryColor, // Hintergrundfarbe der Menübuttons
          onPrimary:
              Theme.of(context).primaryColorDark, // Schrift- und Iconfarbe
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
