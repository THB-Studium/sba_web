import 'package:flutter/material.dart';
import 'package:sba_web/models/buch-for-histories.dart';


class FavoriesBody extends StatefulWidget {
  @override
  _FavoriesBodyState createState() => _FavoriesBodyState();
}

class _FavoriesBodyState extends State<FavoriesBody> {
  List<Buch> favoriesList = buecher;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('This is the favory page :) <3 :D'),
      )
    );
  }
}