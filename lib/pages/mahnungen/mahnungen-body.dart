import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sba_web/models/buch-items.dart';
import 'package:sba_web/models/buch.dart';
import 'package:sba_web/pages/components/constants.dart';

class MahnungenBody extends StatefulWidget {
  @override
  _MahnungenBodyState createState() => _MahnungenBodyState();

}
class _MahnungenBodyState extends State<MahnungenBody> {

  List<Buch> mahnnungsList = buecher;
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