import 'package:flutter/material.dart';
import 'package:sba_web/models/buch.dart';
import 'package:sba_web/pages/components/constants.dart';

import 'details-widgets.dart';

class BuchDetailBody extends StatefulWidget {
  final String parentView;
  final Buch book;
  const BuchDetailBody({Key key, this.book, this.parentView}) : super(key: key);

  @override
  _BuchDetailBodyState createState() => _BuchDetailBodyState();
}

class _BuchDetailBodyState extends State<BuchDetailBody> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  setInfoItem("Title", widget.book.titel),
                  setInfoItem("Author", widget.book.author),
                  ListTile(
                    title: Text("ISBN",style: TextStyle(color: standardColors_blue, fontWeight: FontWeight.bold)),
                    subtitle: Text(
                        "ISBN-13: ${widget.book.iSBN13}        "
                        "ISBN-10: ${widget.book.iSBN10}", style: TextStyle(color: Colors.black)),
                  ),
                  setInfoItem("sprache", widget.book.sprache),
                  setInfoItem("seiten", widget.book.seiten.toString()),
                  setInfoItem("Kopienzahl", widget.book.kopien.toString()),
                  setInfoItem("Verfügbarkeit", widget.book.verfuegbarkeit),
              ],
              ),
            ],
          ),
      ),
    ),
      floatingActionButton: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          widget.parentView == favories ? SizedBox() : favoryActionButton(widget.book, context),
          SizedBox(height: 10),
          shareFloatingButton(widget.book, context)
        ],
      ),
    );
  }
}
