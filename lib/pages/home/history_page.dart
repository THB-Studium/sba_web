import 'package:flutter/material.dart';
import 'package:sba_web/pages/menu/drawer_menu.dart';

import 'buch.dart';

class HistoryPage extends StatefulWidget {
  String title;

  HistoryPage({Key key, this.title}) : super(key: key);

  @override
  _HistoryPageState createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
  List<Buch> _diebuecher = buecher;
  @override
  Widget build(BuildContext context) {
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
          color: Colors.white,
          child: ListView(
            children: _diebuecher.map(_buildOneBuch).toList(),
          ),
        ),
      ),
      drawer: Drawer(child: sbaDrawer),
    );
  }

  Widget _buildOneBuch(Buch dasBuch) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(width: 0.4, color: Colors.grey),
          bottom: BorderSide(width: 0.4, color: Colors.grey),
          right: BorderSide(width: 0.4, color: Colors.grey),
          left: BorderSide(width: 0.4, color: Colors.grey),
        ),
        borderRadius: BorderRadius.circular(13.0),
      ),
      child: ListTile(
        title: Text.rich(
          TextSpan(
            text: dasBuch.buchTitel,
            style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
          ),
        ),
        subtitle: Text(dasBuch.buchAuthor),
        trailing: Wrap(
          spacing: 12, // space between two icons
          children: <Widget>[
            Text("12.06.2020"), // icon-1
        Icon(Icons.arrow_forward_ios), // icon-2
        ],
      ),
    ),
    );

  }
}
