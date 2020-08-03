import 'package:flutter/material.dart';
import 'package:sba_web/constants.dart';
import 'package:sba_web/pages/favories/favoriten-page.dart';
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
//  List<Buch> _diebuecher = buecher;
  List<Reservierung> _reservierungen = reservierungen;
  List<Ausleihe> _ausleihe = ausleihe;

//  final int searchIndex = historyOptions.indexOf(AdvancedSearch());
//  final int favoriesIndex = historyOptions.indexOf(FavoritenPage());

  final int searchIndex = 1;
  final int favoriesIndex = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(child: sbaDrawer),
      appBar: AppBar(
        title: Text('History'),
        centerTitle: true,

        actions: <Widget>[
          actionButton(searchIndex, Icons.search, context),
          actionButton(favoriesIndex, Icons.star_half, context),
          actionButton(favoriesIndex, Icons.more_vert, context)
        ],
        //actionsIconTheme: IconThemeData(color: Colors.black, size: 30.0),
      ),

      body: SafeArea(
        child: Container(
          color: Colors.white,
          child: ListView(
            children: _reservierungen.map(buildOneReservierung).toList() +
                      _ausleihe.map(buildOneAusleihe).toList(),
          ),
        ),
      ),
    );
  }
}
