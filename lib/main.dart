import 'package:flutter/material.dart';
import 'package:sba_web/search_pages/advanced_search.dart';
import 'package:sba_web/search_pages/search_book.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/home',
    routes: {
      '/home': (context) => AdvancedSearch(),
      '/details_page': (context) => BuchKatalog(),
    },
  ));
}