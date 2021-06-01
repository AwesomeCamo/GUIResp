import 'package:flutter/material.dart';

import 'widgets.dart';

class TabletTopBanner extends StatelessWidget {
  const TabletTopBanner({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          height: double.infinity,
          width: MediaQuery.of(context).size.width * 0.07,
        ),
        Expanded(
          child: LogoBannerTop(),
        ),
        CircularIconButton(
          icon: Icons.search,
          iconSize: 40,
          onPressed: () => print('Suchen'),
          tooltip: 'Suchen',
          backgroundColor: Colors.grey,
        ),
        CircularIconButton(
          icon: Icons.person,
          iconSize: 40,
          onPressed: () => print('Profil angeklickt'),
          tooltip: 'Mein Profil',
          backgroundColor: Colors.grey,
        ),
      ],
    );
  }
}
