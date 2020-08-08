import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../components/constants.dart';

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