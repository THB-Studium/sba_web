import 'package:flutter/material.dart';
import 'package:sba_web/pages/components/constants.dart';
//import 'file:///G:/Mes%20Cours/TH%20Brandenburg/Workspace/master/mux/sba_web/lib/pages/components/constants.dart';
import 'package:sba_web/pages/components/menu/drawer_menu.dart';
import 'package:sba_web/pages/history/history-body.dart';
import 'package:sba_web/pages/search-book/search-page.dart';


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
          actionButton(AdvancedSearch(), Icons.more_vert, context)
        ],
      ),

      body: HistoriesBody()
    );
  }
}
