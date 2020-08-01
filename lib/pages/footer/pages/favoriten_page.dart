import 'package:flutter/material.dart';

import '../drawer_menu.dart';

class FavoritenPage extends StatefulWidget {
  String title;

  FavoritenPage({Key key, this.title}) : super(key: key);

  @override
  _FavoritenPageState createState() => _FavoritenPageState();
}

class _FavoritenPageState extends State<FavoritenPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
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
