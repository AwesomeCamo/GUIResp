import 'package:flutter/material.dart';

/* Erstellt einen runden Button, dem ein Icon, die Größe des Icons, 
eine Funktion die bei drücken des Buttons aufgerufen wird, sowie ein Tooltip
beim Hovern und eine Hintergrundfarbe übergeben werden muss */

class CircularIconButton extends StatelessWidget {
  final IconData icon;
  final double iconSize;
  final Function onPressed;
  final String tooltip;
  final Color backgroundColor;

  const CircularIconButton({
    Key key,
    @required this.icon,
    @required this.iconSize,
    @required this.onPressed,
    @required this.tooltip,
    @required this.backgroundColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(6),
      decoration: BoxDecoration(
        color: backgroundColor,
        shape: BoxShape.circle,
      ),
      child: IconButton(
        icon: Icon(icon),
        iconSize: iconSize,
        tooltip: tooltip,
        onPressed: onPressed,
      ),
    );
  }
}
