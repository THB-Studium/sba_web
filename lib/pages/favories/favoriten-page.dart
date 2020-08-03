import 'package:flutter/material.dart';
import 'package:sba_web/pages/favories/FavoriesBody.dart';

import '../menu/drawer_menu.dart';

class FavoritenPage extends StatefulWidget {
  @override
  _FavoritenPageState createState() => _FavoritenPageState();
}

class _FavoritenPageState extends State<FavoritenPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.white70),
          tooltip: 'Back',
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text('Favoriten'),
        centerTitle: true,
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: GestureDetector(
              onTap: () {},
              child: Icon(Icons.search),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: GestureDetector(
              onTap: () {},
              child: Icon(Icons.more_vert),
            ),
          ),
        ],

      ),

      body: FavoriesBody()
    );
  }
}
