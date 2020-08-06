import 'package:flutter/material.dart';
import 'package:sba_web/models/buch-for-histories.dart';
import 'package:sba_web/pages/components/constants.dart';
import 'package:sba_web/pages/search-book/Bookdetails/details-widgets.dart';

class BuchDetailBody extends StatefulWidget {
  final Buch book;
  const BuchDetailBody({Key key, this.book}) : super(key: key);

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
                  setInfoItem("Title", widget.book.buchTitel),
                  setInfoItem("Overview", widget.book.buchAuthor),
                  ListTile(
                    title: Text("ISBN",style: TextStyle(color: standardColors_blue, fontWeight: FontWeight.bold)),
                    subtitle: Text("ISBN 13: ${widget.book.buchISBN13}  ISBN 10: ${widget.book.buchISBN10}", style: TextStyle(color: Colors.black)),
                  ),
                  setInfoItem("Verfügbarkeit", widget.book.verfuegbarkeit),
                  setInfoItem("ID", widget.book.buchId),
              ],
              ),
            ],
          ),
      ),
    ),
    );
  }
}
