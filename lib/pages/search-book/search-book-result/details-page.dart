import 'package:flutter/material.dart';
import 'package:sba_web/models/buecher_list.dart';

class DetailPage extends StatelessWidget {

  final BooksDescription book;

  const DetailPage({Key key, this.book}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(book.title),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  ListTile(
                    title: Text("Title", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
                    subtitle: Text(book.title, style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
                  ),
                  ListTile(
                    title: Text("Overview",style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
                    subtitle: Text(book.overview, style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
                ),
                  ListTile(
                    title: Text("ISBN",style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
                    subtitle: Text("ISBN 13: ${book.isbn13}  ISBN 10: ${book.isbn10}", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
                  ),
                  ListTile(
                    title: Text("ID", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
                    subtitle: Text("${book.id}", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
                  )
              ],
              ),
            ],
          ),
      ),
    ),
    );
  }
}
