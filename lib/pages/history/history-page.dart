import 'package:flutter/material.dart';
import 'package:sba_web/pages/favories/Favories.dart';
import 'package:sba_web/pages/history/history-widgets.dart';
import 'package:sba_web/pages/menu/drawer_menu.dart';
import 'package:sba_web/pages/search-book/advanced-search.dart';

import 'buch.dart';

// ignore: must_be_immutable
class HistoryPage extends StatefulWidget {
  @override
  _HistoryPageState createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
  AdvancedSearch advancedSearch = new AdvancedSearch();
  Favories favories = new Favories();

  List<Buch> _diebuecher = buecher;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('History'),

        actions: <Widget>[
          actionButton(advancedSearch, Icons.search, context),
          actionButton(favories, Icons.star_half, context),
          actionButton(null, Icons.more_vert, context)
        ],
        //actionsIconTheme: IconThemeData(color: Colors.black, size: 30.0),
      ),
      body: SafeArea(
        child: Container(
          color: Colors.white,
          child: ListView(
            children: _diebuecher.map(buildOneBuch).toList(),
          ),
        ),
      ),
//      drawer: Drawer(child: sbaDrawer),
    );
  }

}
