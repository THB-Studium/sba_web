import 'package:flutter/material.dart';
import 'package:sba_web/pages/login/components/widgets.dart';

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
//          text("willkommen in...", 15, 50),
          setImage("bibsapp_logo.png", size.width * 0.4, 50, null),
          child,
        ],
      ),
    );
  }
}
