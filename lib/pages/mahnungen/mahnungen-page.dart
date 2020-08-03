import 'package:flutter/material.dart';
import 'package:sba_web/pages/components/menu/drawer_menu.dart';
import 'package:sba_web/pages/mahnungen/mahnungen-body.dart';


class MahnungenPage extends StatefulWidget {
  @override
  _MahnungenState createState() => _MahnungenState();
}

class _MahnungenState extends State<MahnungenPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(child: sbaDrawer),
      appBar: AppBar(
        title: Text('Mahnungen'),
        actions: <Widget>[
//          actionButton(1, Icons.search, context)
        ]
      ),

      body: MahnungenBody()
    );
  }
}
