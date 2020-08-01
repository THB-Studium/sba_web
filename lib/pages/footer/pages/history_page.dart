import 'package:flutter/material.dart';

import '../drawer_menu.dart';

class HistoryPage extends StatefulWidget {
  String title;

  HistoryPage({Key key, this.title}) : super(key: key);

  @override
  _HistoryPageState createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
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
        //actionsIconTheme: IconThemeData(color: Colors.black, size: 30.0),
      ),

      body: SafeArea(
        child: Container(
          color: Colors.green,
          child: Center(
            child: Text('Ici c\'est la page de l\'historique'),
          ),
        ),
      ),
      drawer: Drawer(child: sbaDrawer),
    );
  }
}
