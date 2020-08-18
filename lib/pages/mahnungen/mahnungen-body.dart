import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'file:///C:/Users/fotso/Mux_Project/sba_web/lib/pages/components/constants.dart';
import 'package:sba_web/pages/components/constants.dart';

class MahnungenBody extends StatefulWidget {
  @override
  _MahnungenBodyState createState() => _MahnungenBodyState();

}

class _MahnungenBodyState extends State<MahnungenBody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: standardColors_white,
        ),
      )
    );
  }
}