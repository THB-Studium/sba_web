import 'package:flutter/material.dart';
import 'package:sba_web/search_pages/books_models/books_list.dart';

class DetailPage extends StatelessWidget {

  final BooksDescription book;

  const DetailPage({Key key, this.book}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(book.titel),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: <Widget>[
              Card(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    ListTile(
                      title: Text("Title"),
                      subtitle: Text(book.titel),
                    ),
                    ListTile(
                      title: Text("ID"),
                      subtitle: Text("${book.id}"),
                    ),
                    ListTile(
                      title: Text("Body"),
                      subtitle: Text(book.anmerkungen),
                  ),
                ],
                ),
              ),
            ],
          ),
      ),
    ),
    );
  }
}
