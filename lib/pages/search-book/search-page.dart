import 'package:flutter/material.dart';
import 'package:sba_web/pages/components/constants.dart';
import 'package:sba_web/pages/search-book/search-body.dart';

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
          backgroundColor: standardColors_blue,
          elevation: 0.0,
        ),
        body: AdvancedSearchBody()
    );
  }
}