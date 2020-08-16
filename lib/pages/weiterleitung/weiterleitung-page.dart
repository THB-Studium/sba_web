import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sba_web/pages/components/constants.dart';
import 'package:sba_web/pages/weiterleitung/weiterleitung-body.dart';

class scWeiterleitung extends StatefulWidget {
  @override
  _scWeiterleitungState createState() => _scWeiterleitungState();
}


class _scWeiterleitungState extends State<scWeiterleitung> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: zurrueckButton(context),
          title: Text('Weiterleitung Warnung'),
          backgroundColor: standardColors_blue,
          elevation: 0.0,
        ),
        body: scWeiterleitungBody()
    );
  }
}
