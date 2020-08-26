import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sba_web/models/buch-items.dart';
import 'package:sba_web/models/mahnung.dart';
import 'mahnungen-widgets.dart';

class MahnungenBody extends StatefulWidget {
  @override
  _MahnungenBodyState createState() => _MahnungenBodyState();

}
class _MahnungenBodyState extends State<MahnungenBody> {
  final Mahnung mahnungenList = mahnungen[0];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            child: mahnungenList != null && mahnungenList.buecher.length > 0
                ? ListView.builder(
              itemBuilder: (_,int index) => listMahnungenItem(context, mahnungenList.buecher[index]),
              itemCount: mahnungenList.buecher.length,
            )
                : Center(child: Text('MahnungenListe leer!'))
        )
    );
  }
}