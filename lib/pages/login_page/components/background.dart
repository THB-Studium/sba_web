import 'package:flutter/material.dart';

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
        alignment: Alignment.center,
        children: <Widget>[
          Positioned(
            top: 30,
//            left: 10,
            child: Image.asset("assets/images/thb_logo.png",
              width: size.width * 0.1,
              color: kPrimaryColor,
            ),
          ),
          child,
        ],
      ),
    );
  }
}
