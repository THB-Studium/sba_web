import 'package:flutter/material.dart';
import 'package:sba_web/search_pages/books_models/books_list.dart';
//import 'package:sba_web/services/Services.dart';
import 'package:http/http.dart' as http;
import 'package:sba_web/search_pages/details_page.dart';
import 'package:sba_web/services/Services.dart';

class BuchKatalog extends StatefulWidget {

  BuchKatalog({Key key}) : super(key: key);


  @override
  _BuchKatalogState createState() => _BuchKatalogState();
}

class _BuchKatalogState extends State<BuchKatalog> {


  final Services httpServices = Services();
  static const String _title = 'Buchkatalog';

  List<BooksDescription> booksList = [];
  Future <List<BooksDescription>> getBookList;
  //bool _loading;


  @override
  void initState() {

    super.initState();
    getBookList = Services.getBook();

    //_loading = true;
    //return the list of books
    // Services.getBook().then((bookList) =>
    //{
      //return the list of books
      //setState(() {
        //this.booksList = bookList;
        //_loading = false;
      //})
    //});
  }


  /** Widget _buildBookColumn() => Container (
      decoration: BoxDecoration(
      color: Colors.blue[50]
      ),
      margin: const EdgeInsets.all(8),
      child: Column(
      children: <Widget>[
      ListTile()
      ],
      ),
      );
   */

  Widget listViewBuilder(book) {
    return ListView.builder(
      itemCount: book == null ? 0 : book.length, itemBuilder: (BuildContext context, int index) {
        return ListTile(
          leading: Text(book[index].id),
          title: Text(book[index].titel),
          subtitle: Text(book[index].autor),
          );
        }
    );
  }

  @override Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_title),
        centerTitle: true,
        backgroundColor: Colors.blue[600],
        elevation: 0.0,
      ),
      body: FutureBuilder<List<BooksDescription>>(
          future: getBookList,
          builder: (BuildContext context, AsyncSnapshot<List<BooksDescription>> snapshot) {
            if(snapshot.hasData) {
              List<BooksDescription> book = snapshot.data;
              return ListView(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                children: book
                    .map(
                      (BooksDescription bd) => Card(
                        elevation: 8.0,
                        margin: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
                        child: Container(
                          decoration: BoxDecoration(color: Color.fromRGBO(64, 75, 96, .9)),
                          child: ListTile(
                            contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                            leading: Container(
                              padding: EdgeInsets.only(right: 12.0),
                              decoration: new BoxDecoration(
                                  border: new Border(
                                      right: new BorderSide(width: 1.0, color: Colors.white24))),
                              child: Icon(Icons.book, color: Colors.white),
                            ),
                  title: Text(bd.titel,
                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(bd.autor, style: TextStyle(color: Colors.white)),
                  trailing: Icon(Icons.keyboard_arrow_right, color: Colors.white, size: 30.0),
                  onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => DetailPage(
                          book: bd,
                    )),
                  ),
                ),
                        ),
                      ),
                ).toList(),
              );
            }
            return Center(child: CircularProgressIndicator());
          },
      ),
    );
  }

}