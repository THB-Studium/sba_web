import 'package:flutter/material.dart';
import 'file:///G:/Mes%20Cours/TH%20Brandenburg/Workspace/master/mux/sba_web/lib/pages/components/constants.dart';
import 'package:sba_web/pages/favories/favories-body.dart';

class FavoritenPage extends StatefulWidget {
  @override
  _FavoritenPageState createState() => _FavoritenPageState();
}

class _FavoritenPageState extends State<FavoritenPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: zurrueckButton(context),
        title: Text('Favoriten'),
        centerTitle: true
      ),

      body: FavoriesBody()
    );
  }
}
