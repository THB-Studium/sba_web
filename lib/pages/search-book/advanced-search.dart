import 'dart:async';

import 'package:flutter/material.dart';
import 'package:sba_web/models/buecher_list.dart';
import 'package:sba_web/pages/search-book/search-widgets.dart';
import 'package:sba_web/pages/search-book/service/buchServices.dart';

class AdvancedSearch extends StatefulWidget {
  AdvancedSearch();

  @override
  _AdvancedSearchState createState() => _AdvancedSearchState();
}
class Debouncer {
  final int milliseconds;
  VoidCallback action;
  Timer _timer;

  Debouncer({this.milliseconds});

  run(VoidCallback action) {
    if (null != _timer) {
      _timer.cancel();
    }
    _timer = Timer(Duration(milliseconds: milliseconds), action);
  }
}

class _AdvancedSearchState extends State<AdvancedSearch> {
  BooksDescription bd = new BooksDescription();
//  String _verfasser;
//  String _titel;
//  String _isbn;
//  String _titelanfang;
//  String _verlag;
//  String _signatur;
  String _schlagwort;
  String _notation;
  bool _visible = false;
//  DateTime _jahr;


  Future <List<BooksDescription>> getBookList = BuchServices.getBook();
  BooksDescription book = new BooksDescription();
  final _formKey = GlobalKey<FormState>();

  static String validateIsbn(String value) {
    Pattern pattern =
        r'/((978[\--– ])?[0-9][0-9\--– ]{10}[\--– ][0-9xX])|((978)?[0-9]{9}[0-9Xx])/';
    RegExp regex = new RegExp(pattern);
    if (!regex.hasMatch(value)) {
      return 'Bitte richtige ISBN / ISSN Nummer eingeben';
    } else {
      return value;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Erweiterte Suche'),
        centerTitle: true,
        backgroundColor: Colors.blue[600],
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
//        child: Container(
//          margin: EdgeInsets.all(24),
//          child: Form(
//            key: _formKey,
//            child: Column(
//              mainAxisAlignment: MainAxisAlignment.center,
//              children: <Widget>[
//                buildVerfasser(onChanged: (val) { bd.author = val,),
//                buildTitel(),
//                buildIsbn(),
//                Row(
//                  mainAxisAlignment: MainAxisAlignment.end,
//                  children: <Widget>[
//                    GestureDetector(
//                      child: Text(
//                        'Weitere Optionen',
//                        style: TextStyle(
//                            color: Colors.blue[400],
//                            fontSize: 12,
//                            fontWeight: FontWeight.w700),
//                      ),
//                      onTap: () {
//                        setState(() {
//                          _visible = !_visible;
//                        });
//                      },
//                    ),
//                  ],
//                ),
//                buildAnimatedOpacity(),
//                SizedBox(height: 25),
//                RaisedButton(
//                  child: Text(
//                    'Suchen',
//                    style: TextStyle(
//                        color: Colors.blue[400],
//                        fontSize: 16,
//                        fontWeight: FontWeight.w700),
//                  ),
//
//                  //Lorsqu'il faudra faire des requetes a la BD
//                  //modifier ici
//                  elevation: 6.0,
//                  onPressed: () {
//                    final form = _formKey.currentState;
//                    if (!form.validate()) {
//                      return;
//                    }
//                    form.save();
//                    //Navigator.pushNamed(context, '/search_book');
//                     BuchServices.getBook().then((getBookList) {
//                       setState(() {
//                          //book = BooksDescription.filterList(getBookList);
//                       });
//                     });
//                    //print(_titel);
//                    // print(_isbn);
//                    // print(_titelanfang);
//                    // print(_verlag);
//                    // print(_schlagwort);
//                    // print(_notation);
//                    // print(_signatur);
//                    //setState(() {
//                    //getBook();
//                    // });
//                  },
//                ),
//              ],
//            ),
//          ),
//        ),
      ),
    );
  }
}
