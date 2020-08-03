import 'package:flutter/material.dart';
import 'package:sba_web/pages/components/constants.dart';
import 'package:sba_web/pages/components/menu/drawer_menu.dart';
import 'package:sba_web/pages/live-chat/nachrichten-body.dart';

class NachrichtenPage extends StatefulWidget {
  @override
  _NachrichtenPageState createState() => _NachrichtenPageState();
}

class _NachrichtenPageState extends State<NachrichtenPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(child: sbaDrawer),
      appBar: AppBar(
        title: Text('Nachrichten'),
        actions: <Widget>[
//          actionButton(1, Icons.search, context)
        ]
      ),

      body: NachrichtenBody(),
    );
  }
}
