import 'package:flutter/material.dart';

import '../menu/drawer_menu.dart';

class MahnungenPage extends StatefulWidget {
  @override
  _MahnungenState createState() => _MahnungenState();
}

class _MahnungenState extends State<MahnungenPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mahnungen'),
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
          color: Colors.red,
        ),
      ),
      drawer: Drawer(child: sbaDrawer),
    );
  }
}
