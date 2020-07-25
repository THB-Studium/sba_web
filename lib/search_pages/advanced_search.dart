//import 'dart:convert';

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:sba_web/search_pages/books_models/books_list.dart';
import 'package:sba_web/services/Services.dart';
//import 'package:string_validator/string_validator.dart';

class AdvancedSearch extends StatefulWidget {
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
  String _verfasser;
  String _titel;
  String _isbn;
  String _titelanfang;
  String _verlag;
  String _signatur;
  String _schlagwort;
  String _notation;
  bool _visible = false;
  DateTime _jahr;

  final _minimumPadding = 5.0;
  Future <List<BooksDescription>> getBookList = Services.getBook();
  BooksDescription book = new BooksDescription();
  final _formKey = GlobalKey<FormState>();

  //@override
  //void initState () {
  //super.initState();
  //getBook();
  //}

  Widget _buildVerfasser() {
    return Padding(
      padding: EdgeInsets.only(top: _minimumPadding, bottom: _minimumPadding),
      child: TextFormField(
        decoration: InputDecoration(
          labelText: 'Verfasser',
          hintText: 'Verfasser eingeben',
          //border: OutlineInputBorder(
          //borderRadius: BorderRadius.circular(5.0),
          //),
        ),
        style: TextStyle(
          fontSize: 12,
        ),
        onSaved: (value) {
          bd.author = value;
        },
      ),
    );
  }

  Widget _buildTitel() {
    return Padding(
      padding: EdgeInsets.only(top: _minimumPadding, bottom: _minimumPadding),
      child: TextFormField(
        decoration: InputDecoration(
          labelText: 'Titel',
          hintText: 'Titel eingeben',
        ),
        style: TextStyle(
          fontSize: 12,
        ),
        onSaved: (String value) {
          bd.title = value;
        },
      ),
    );
  }

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

  Widget _buildIsbn() {
    return Row(
      children: <Widget>[
        Flexible(
          child: Padding(
            padding:
                EdgeInsets.only(top: _minimumPadding, bottom: _minimumPadding),
            child: TextFormField(
              decoration: InputDecoration(
                labelText: 'ISBN / ISSN',
                hintText: 'ISBN / ISSN eingeben',
              ),
              style: TextStyle(
                fontSize: 12,
              ),
              onSaved: (value) {
                if (value.length == 13) {
                  bd.isbn13 = validateIsbn(value) as int;
                }
                if (value.length <= 10) {
                  bd.isbn10 = validateIsbn(value);
                }
              },
            ),
          ),
        ),
        Container(
          width: _minimumPadding * 5,
          child: Image.asset('assets/images/isbn.png', width: 30),
        ),
      ],
    );
  }

  Widget _buildTitelanfang() {
    return Padding(
      padding: EdgeInsets.only(top: _minimumPadding, bottom: _minimumPadding),
      child: TextFormField(
        decoration: InputDecoration(
          labelText: 'Titelanfang',
          hintText: 'Titelanfang eingeben',
        ),
        style: TextStyle(
          fontSize: 12,
        ),
        keyboardType: TextInputType.text,
        onSaved: (String value) {
          bd.titleSlug = value;
        },
      ),
    );
  }

  Widget _buildVerlag() {
    return Padding(
      padding: EdgeInsets.only(top: _minimumPadding, bottom: _minimumPadding),
      child: TextFormField(
        decoration: InputDecoration(
          labelText: 'Verlag',
          hintText: 'Verlag eingeben',
        ),
        style: TextStyle(
          fontSize: 12,
        ),
        onSaved: (String value) {
          bd.edition = value;
        },
      ),
    );
  }

  Widget _buildSchlagwort() {
    return Padding(
      padding: EdgeInsets.only(top: _minimumPadding, bottom: _minimumPadding),
      child: TextFormField(
        decoration: InputDecoration(
          labelText: 'Schlagwort',
          hintText: 'Schlagwort eingeben',
        ),
        style: TextStyle(
          fontSize: 12,
        ),
        onSaved: (String value) {
          _schlagwort = value;
        },
      ),
    );
  }

  Widget _buildNotation() {
    return Padding(
      padding: EdgeInsets.only(top: _minimumPadding, bottom: _minimumPadding),
      child: TextFormField(
        decoration: InputDecoration(
          labelText: 'Notation',
          hintText: 'Notation eingeben',
        ),
        style: TextStyle(
          fontSize: 12,
        ),
        onSaved: (String value) {
          _notation = value;
        },
      ),
    );
  }

  Widget _buildSignatur() {
    return Padding(
      padding: EdgeInsets.only(top: _minimumPadding, bottom: _minimumPadding),
      child: TextFormField(
        decoration: InputDecoration(
          labelText: 'Plublisher',
          hintText: 'Signatur eingeben',
        ),
        style: TextStyle(
          fontSize: 12,
        ),
        onSaved: (String value) {
          bd.publisher = value;
        },
      ),
    );
  }

  Widget _buildDate() {
    return Padding(
      padding: EdgeInsets.only(top: _minimumPadding, bottom: _minimumPadding),
      child: TextFormField(
        keyboardType: TextInputType.datetime,
        decoration: InputDecoration(
          labelText: 'Veröffentlichungsdatum',
          hintText: 'Datum eingeben',
        ),
        style: TextStyle(
          fontSize: 12,
        ),
        onSaved: (String value) {
          bd.pubdate = value;
        },
      ),
    );
  }

  Widget _buildAnimatedOpacity() {
    return Container(
        child: Visibility(
      //child: Container(color: Colors.blue, width: 100, height: 100),
      visible: _visible,
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _buildTitelanfang(),
            _buildVerlag(),
            _buildSchlagwort(),
            _buildNotation(),
            _buildSignatur(),
            _buildDate()
          ]),
    ));
  }


  Widget _buildsearchTF() {
    return TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: const BorderRadius.all(
            const Radius.circular(
              5.0,
            ),
          ),
        ),
        filled: true,
        fillColor: Colors.white60,
        contentPadding: EdgeInsets.all(15.0),
        hintText: 'Eingeben...',
      ),
    );
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
        child: Container(
          margin: EdgeInsets.all(24),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                _buildVerfasser(),
                _buildTitel(),
                _buildIsbn(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    GestureDetector(
                      child: Text(
                        'Weitere Optionen',
                        style: TextStyle(
                            color: Colors.blue[400],
                            fontSize: 12,
                            fontWeight: FontWeight.w700),
                      ),
                      onTap: () {
                        setState(() {
                          _visible = !_visible;
                        });
                      },
                    ),
                  ],
                ),
                _buildAnimatedOpacity(),
                SizedBox(height: 25),
                RaisedButton(
                  child: Text(
                    'Suchen',
                    style: TextStyle(
                        color: Colors.blue[400],
                        fontSize: 16,
                        fontWeight: FontWeight.w700),
                  ),

                  //Lorsqu'il faudra faire des requetes a la BD
                  //modifier ici
                  elevation: 6.0,
                  onPressed: () {
                    final form = _formKey.currentState;
                    if (!form.validate()) {
                      return;
                    }
                    form.save();
                    //Navigator.pushNamed(context, '/search_book');
                     Services.getBook().then((getBookList) {
                       setState(() {
                          //book = BooksDescription.filterList(getBookList);
                       });
                     });
                    //print(_titel);
                    // print(_isbn);
                    // print(_titelanfang);
                    // print(_verlag);
                    // print(_schlagwort);
                    // print(_notation);
                    // print(_signatur);
                    //setState(() {
                    //getBook();
                    // });
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
