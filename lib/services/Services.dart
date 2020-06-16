import 'package:http/http.dart' as http;
import 'package:sba_web/search_pages/books_models/books_list.dart';

class Services {

  static const String url = 'https://my-json-server.typicode.com/bertin19/demo/Books';
  static Future<List<BooksDescription>> getBook() async {

    try {

      final http.Response res = await http.get(Uri.encodeFull(url), headers: {'Accept': 'application/json'});
      //var resBoby = jsonDecode(res.body);
      if (res.statusCode == 200) {
        // If the server did return a 200 OK response,
        // then parse the JSON.

        final List<BooksDescription> books = booksDescriptionFromJson(res.body);
        return books;

        //final jsonBooks = booksDescriptionFromJson(res.body).cast<Map<String, dynamic>>();
        //List<BooksDescription> booksList = jsonBooks.map<BooksDescription>((json) {
          //return BooksDescription.fromJson(json);
        //}).toList();
        //return  booksList;
      } else {
        // If the server did not return a 200 OK response,
        // then throw an exception.
        return List<BooksDescription>();
      }

    }catch (e) {
      return List<BooksDescription>();
    }

  }

}