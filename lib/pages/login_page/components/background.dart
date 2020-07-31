import 'package:flutter/material.dart';
import 'package:sba_web/pages/login_page/widgets.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../constants.dart';

class Background extends StatelessWidget {
  final Widget child;
  const Background({
    Key key,
    @required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: size.height,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: <Widget>[
          setImage("thb_logo.png", size.width * 0.1, 35),
          text("willkommen in...", 15, 100),
          text("BibSapp", 40, 150),
          child,
        ],
      ),
    );
  }
}
