import 'package:flutter/material.dart';
import 'package:sba_web/pages/components/constants.dart';
import 'package:sba_web/pages/search-book/search-body.dart';
import 'package:sba_web/pages/search-book/search-widgets.dart';

class AdvancedSearch extends StatefulWidget {
  @override
  _AdvancedSearchState createState() => _AdvancedSearchState();
}

class _AdvancedSearchState extends State<AdvancedSearch> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: zurrueckButton(context),
          title: Text('Buchsuche'),
          actions: <Widget>[
            externalSearch(context)
          ],
        ),
        body: AdvancedSearchBody()
    );
  }
}