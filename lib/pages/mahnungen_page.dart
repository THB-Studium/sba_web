import 'package:flutter/material.dart';
import 'package:sba_web/drawer_menu.dart';

class MahnungenPage extends StatefulWidget {
  String title;

  MahnungenPage({Key key, this.title}) : super(key: key);

  @override
  _MahnungenState createState() => _MahnungenState();
}

class _MahnungenState extends State<MahnungenPage> {
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
          color: Colors.red,
        ),
      ),
      drawer: Drawer(child: sbaDrawer),
    );
  }
}
