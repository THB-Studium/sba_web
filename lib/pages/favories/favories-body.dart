import 'package:flutter/material.dart';
import 'package:sba_web/models/buch-items.dart';
import 'package:sba_web/models/favory.dart';

import 'favories-widgets.dart';


class FavoriesBody extends StatefulWidget {
  @override
  _FavoriesBodyState createState() => _FavoriesBodyState();
}

class _FavoriesBodyState extends State<FavoriesBody> {
  final Favory currentFavory = favoriten[0];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: currentFavory != null && currentFavory.buecher.length > 0
        ? ListView.builder(
          itemBuilder: (_,int index) => listFavoriesItem(context, currentFavory.buecher[index]),
          itemCount: currentFavory.buecher.length,
        )
        : Center(child: Text('Favoritenliste leer!'))
      )
    );
  }
}

