import 'package:flutter/material.dart';

import '../drawer_menu.dart';

class NachrichtenPage extends StatefulWidget {
  String title;

  NachrichtenPage({Key key, this.title}) : super(key: key);

  @override
  _NachrichtenPageState createState() => _NachrichtenPageState();
}

class _NachrichtenPageState extends State<NachrichtenPage> {
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
          color: Colors.yellow,
        ),
      ),
      drawer: Drawer(child: sbaDrawer),
    );
  }
}
