import 'package:flutter/material.dart';

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
        title: Text('Favoriten'),
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

      body: SafeArea(
        child: Container(
          color: Colors.purpleAccent,
        ),
      ),
      drawer: Drawer(child: sbaDrawer),
    );
  }
}
