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
      drawer: Drawer(child: sbaDrawer(context)),
      appBar: AppBar(
        title: Text('Mahnungen'),
        actions: <Widget>[
//          actionButton(AdvancedSearch(), Icons.search, context),
//          actionButton(AdvancedSearch(), Icons.more_vert, context)
        ]
      ),

      body: MahnungenBody()
    );
  }
}
