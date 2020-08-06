import 'package:flutter/material.dart';
import 'package:sba_web/models/buch-for-histories.dart';
import 'package:sba_web/pages/components/constants.dart';
import 'package:sba_web/pages/components/menu/drawer_menu.dart';
import 'package:sba_web/pages/favories/favories-page.dart';

import '../search-page.dart';
import 'details-body.dart';

class BuchDetailPage extends StatefulWidget {
  final Buch book;
  const BuchDetailPage({Key key, this.book}) : super(key: key);

  @override
  _BuchDetailPageState createState() => _BuchDetailPageState();
}

class _BuchDetailPageState extends State<BuchDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(child: sbaDrawer(context)),
      appBar: AppBar(
        title: Text(widget.book.buchTitel),
        actions: <Widget>[
          actionButton(FavoritenPage(), Icons.star_half, context),
          actionButton(AdvancedSearch(), Icons.more_vert, context)
        ]
      ),

      body: BuchDetailBody(book: widget.book)
    );
  }
}
