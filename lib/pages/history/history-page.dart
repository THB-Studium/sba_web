import 'package:flutter/material.dart';
import 'package:sba_web/pages/components/constants.dart';
import 'package:sba_web/pages/components/menu/drawer_menu.dart';
import 'package:sba_web/pages/history/history-body.dart';
import 'package:sba_web/pages/search-book/search-page.dart';

import 'history-widgets.dart';


class HistoryPage extends StatefulWidget {
  @override
  _HistoryPageState createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(child: sbaDrawer(context)),
        appBar: AppBar(
          title: Text('History'),
          actions: <Widget>[
            actionButton(AdvancedSearch(), Icons.search, context),
            newWeiterleitung(context)
          ],
        ),

        body: HistoriesBody()
    );
  }
}