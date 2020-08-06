import 'package:flutter/material.dart';
import 'package:sba_web/pages/components/menu/drawer_menu.dart';
import 'package:sba_web/pages/favories/favories-body.dart';

class FavoritenPage extends StatefulWidget {
  @override
  _FavoritenPageState createState() => _FavoritenPageState();
}

class _FavoritenPageState extends State<FavoritenPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(child: sbaDrawer(context)),
      appBar: AppBar(
        title: Text('Favoriten'),
        actions: <Widget>[
//          actionButton(AdvancedSearch(), Icons.search, context),
//          actionButton(AdvancedSearch(), Icons.more_vert, context)
        ],
      ),

      body: FavoriesBody()
    );
  }
}
