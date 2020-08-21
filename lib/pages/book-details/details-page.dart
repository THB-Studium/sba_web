import 'package:flutter/material.dart';
import 'package:sba_web/models/buch.dart';
import 'package:sba_web/pages/book-details/details-widgets.dart';
import 'package:sba_web/pages/components/constants.dart';

import 'details-body.dart';

class BuchDetailPage extends StatefulWidget {
  final String parentView;
  final Buch book;
  const BuchDetailPage({Key key, this.book, this.parentView}) : super(key: key);

  @override
  _BuchDetailPageState createState() => _BuchDetailPageState();
}

class _BuchDetailPageState extends State<BuchDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(200.0),
        child: AppBar(
          leading: zurrueckButton(context),
          actions: <Widget>[
            widget.book.verfuegbarkeit == ausliehbar && widget.parentView != histories
              ? buchActionButton('Reservieren', Colors.green, widget.book, context)
              : SizedBox(),

            widget.book.verfuegbarkeit == entliehen && widget.parentView != histories
              ? buchActionButton('Send push', Colors.orangeAccent, widget.book, context)
              : SizedBox()
          ],
          bottom: appBarTitle(widget.book.titel),
        ),
      ),

      body: BuchDetailBody(book: widget.book, parentView: widget.parentView)
    );
  }
}
