import 'package:flutter/material.dart';
import 'file:///G:/Mes%20Cours/TH%20Brandenburg/Workspace/master/mux/sba_web/lib/pages/components/constants.dart';
import 'package:sba_web/pages/components/menu/drawer_menu.dart';
import 'package:sba_web/pages/history/history-body.dart';

// ignore: must_be_immutable
class HistoryPage extends StatefulWidget {
  @override
  _HistoryPageState createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
//  final int searchIndex = historyOptions.indexOf(AdvancedSearch());
  final int searchIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(child: sbaDrawer),
      appBar: AppBar(
        title: Text('History'),
        centerTitle: true,

        actions: <Widget>[
          actionButton(searchIndex, Icons.search, context),
          actionButton(searchIndex, Icons.more_vert, context)
        ],
        //actionsIconTheme: IconThemeData(color: Colors.black, size: 30.0),
      ),

      body: HistoriesBody()
    );
  }
}
