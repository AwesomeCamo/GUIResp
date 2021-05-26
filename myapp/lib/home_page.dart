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
                  buildContentBox(),
                  buildContentBox(),
                  buildContentBox(),
                  buildContentBox(),
                  buildContentBox(),
                ],
              );
            } else {
              return Column(
                children: [
                  Expanded(
                    flex: 1,
                    child: Row(
                      children: [
                        buildContentBox(),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 4,
                    child: Row(
                      children: [
                        buildContentBox(),
                        buildContentBox(),
                        buildContentBox(),
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

  Expanded buildContentBox() {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey[400],
          borderRadius: BorderRadius.circular(6),
        ),
        margin: EdgeInsets.all(4),
      ),
    );
  }
}
