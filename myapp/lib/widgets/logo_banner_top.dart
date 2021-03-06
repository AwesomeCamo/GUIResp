import 'package:flutter/material.dart';

/* Anzeige der Logobanners */

class LogoBannerTop extends StatelessWidget {
  const LogoBannerTop({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
          minWidth: 100, maxWidth: MediaQuery.of(context).size.width * 0.7),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('./assets/websitebanner.png'),
        ),
      ),
    );
  }
}
