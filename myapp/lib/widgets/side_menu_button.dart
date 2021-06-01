import 'package:flutter/material.dart';

class CreateMenuButton extends StatelessWidget {
  final IconData menuButtonIcon;
  final String menuButtonText;

/* Klasse zum erstellen von Menübuttons, welche später im Drawermenü,
 oder im Menü an der Seite angezeigt werden. 
 Gewünschter Text und Icon müssen übergeben werden */

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
