import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /* appBar: AppBar(
        title: Text('My Title'),
      ), */
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            if (constraints.maxWidth < 480) {
              // Anzeige für Mobilgeräte
              return Scaffold(
                appBar: AppBar(
                  title: Text('Meine Mobilansicht'),
                ),
                body: Column(
                  children: [
                    buildContentBox(Colors.grey[800]),
                    buildContentBox(Colors.grey[300]),
                    buildContentBox(Colors.grey[400]),
                    buildContentBox(Colors.grey[500]),
                  ],
                ),
              );
            } else if (constraints.maxWidth < 1440) {
              // Anzeige für Tablets und Mobile Phones im Landscape Modus
              return Column(
                children: [
                  Expanded(
                    flex: 1,
                    child: Row(
                      children: [
                        buildContentBox(Colors.grey[800]),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Row(
                      children: [
                        buildContentBox(Colors.grey[300]),
                        buildContentBox(Colors.grey[400]),
                        buildContentBox(Colors.grey[500]),
                      ],
                    ),
                  ),
                ],
              );
            } else {
              // Anzeige in Webansicht auf dem Desktop
              return Column(
                children: [
                  Expanded(
                    flex: 1,
                    child: Row(
                      children: [
                        buildContentBox(Colors.grey[800]),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Row(
                      children: [
                        buildContentBox(Colors.grey[500]),
                        buildContentBox(Colors.grey[400]),
                        buildContentBox(Colors.grey[300]),
                      ],
                    ),
                  ),
                ],
              );
            }
            // Ende des Bildschirmbreiten if-Statements
          },
        ),
      ),
    );
  }

  Expanded buildContentBox(Color color) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(6),
        ),
        margin: EdgeInsets.all(4),
      ),
    );
  }
}
