import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Title'),
      ),
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            if (constraints.maxWidth < 480) {
              return Column(
                children: [
                  buildContentBox(Colors.grey[800]),
                  buildContentBox(Colors.grey[300]),
                  buildContentBox(Colors.grey[400]),
                  buildContentBox(Colors.grey[500]),
                ],
              );
            } else {
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
                    flex: 4,
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
            } // Ende des Bildschirmbreiten if-Statements
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
