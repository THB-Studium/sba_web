import 'package:flutter/material.dart';
import 'package:sba_web/models/buch-for-histories.dart';
import 'package:sba_web/pages/search-book/search-book-result/search-results-widgets.dart';


class SearchResultsBody extends StatefulWidget {
  final List<Buch> buchList;
  SearchResultsBody(this.buchList);

  @override
  _SearchResultsBodyState createState() => _SearchResultsBodyState();
}

class _SearchResultsBodyState extends State<SearchResultsBody> {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Container(
        child: new ListView.builder(
            itemBuilder: (_,int index) => listDataItem(context, widget.buchList[index]),
          itemCount: widget.buchList.length,
        ) ,
      ),

    );
  }
}






