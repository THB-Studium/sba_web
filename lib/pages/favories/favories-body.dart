import 'package:flutter/material.dart';
import 'package:sba_web/models/buch-for-histories.dart';

import 'favories-widgets.dart';


class FavoriesBody extends StatefulWidget {
  @override
  _FavoriesBodyState createState() => _FavoriesBodyState();
}

class _FavoriesBodyState extends State<FavoriesBody> {
  List<Buch> favoriesList = buecher;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:new Container(
        child: new ListView.builder(
          itemBuilder: (_,int index) => listFavoriesItem(context, favoriesList[index]),
          itemCount: favoriesList.length,
        ) ,
      ),
    );
  }
}

