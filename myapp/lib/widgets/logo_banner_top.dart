import 'package:flutter/material.dart';

class LogoBannerTop extends StatelessWidget {
  const LogoBannerTop({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('./assets/banner.png'),
        ),
      ),
    );
  }
}
