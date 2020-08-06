import 'package:flutter/material.dart';
import 'package:sba_web/models/buch-for-histories.dart';
import 'package:sba_web/pages/components/constants.dart';
import 'package:sba_web/pages/search-book/search-book-result/search-results-body.dart';


class SearchResultsPage extends StatefulWidget {
  final List<Buch> buchList;
  SearchResultsPage(this.buchList);

  @override
  _SearchResultsPageState createState() => _SearchResultsPageState();
}

class _SearchResultsPageState extends State<SearchResultsPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        leading: zurrueckButton(context),
        title: new Text("Suchergebniss"),
        backgroundColor: standardColors_blue,
        elevation: 0.0,
      ),

      body: SearchResultsBody(widget.buchList)
    );
  }
}




