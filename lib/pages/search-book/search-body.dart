import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sba_web/models/buch-for-histories.dart';
import 'package:sba_web/models/buecher_list.dart';
import 'package:sba_web/pages/components/constants.dart';
import 'package:sba_web/pages/components/footer/navbar-footer.dart';
import 'package:sba_web/pages/search-book/search-book-result/search-results-page.dart';
import 'package:sba_web/pages/search-book/search-widgets.dart';

class AdvancedSearchBody extends StatefulWidget {
  @override
  _AdvancedSearchBodyState createState() => _AdvancedSearchBodyState();
}

class _AdvancedSearchBodyState extends State<AdvancedSearchBody> {
  BooksDescription booksDescription = new BooksDescription();
  bool _visible = false;

  final _minimumPadding = 5.0;
  final _formKey = GlobalKey<FormState>();
  final List<Buch> buchItems = buecher;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(24),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                _buildBookDescriptionItems(verfasser),
                _buildBookDescriptionItems(titel),
                _buildIsbn(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Container(
                      width: _minimumPadding * 5,
                      child: Icon(
                          _visible ? Icons.keyboard_arrow_up : Icons.keyboard_arrow_down,
                          color: standardColors_blue),
                    ),
                    GestureDetector(
                      child: Text(
                        'Weitere Optionen',
                        style: TextStyle(
                            color: standardColors_blue,
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
                  color: standardColors_blue,
                  child: Text(
                    'Suchen',
                    style: TextStyle(
                        color: standardColors_white,
                        fontSize: 16,
                        fontWeight: FontWeight.w700),
                  ),

                  //Lorsqu'il faudra faire des requetes a la BD
                  //modifier ici
                  elevation: 6.0,
                  onPressed: () {
                    print(booksDescription);
                    Navigator.push(context, MaterialPageRoute(
                        builder: (context) => NavBarFooter(SearchResultsPage(buchItems))));
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }


// Widgets:.....................................................................

  /// to build an input for a search option:
  Widget _buildBookDescriptionItems(String labelText) {
    return Padding(
      padding: EdgeInsets.only(top: _minimumPadding, bottom: _minimumPadding),
      child: TextFormField(
        decoration: InputDecoration(
          labelText: labelText,
          //),
        ),
        style: TextStyle(
          fontSize: 12,
        ),
        onSaved: (value) {
          setBookDescriptionItems(labelText, value);
        },
      ),
    );
  }

  void setBookDescriptionItems(String itemName, String value) {
    if (itemName == verfasser) {
      booksDescription.author = value;
    }
    if (itemName == titel) {
      booksDescription.title = value;
    }
    if (itemName == titelanfang) {
      booksDescription.titleSlug = value;
    }
    if (itemName == verlag) {
      booksDescription.edition = value;
    }
    if (itemName == schlagwort) {
      booksDescription.schlagwort = value;
    }
    if (itemName == notation) {
      booksDescription.notation = value;
    }
    if (itemName == plublisher) {
      booksDescription.publisher = value;
    }
    if (itemName == veroeffentlichungsdatum) {
      booksDescription.pubdate = value;
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
                suffixIcon: Container(
                  child: Container(
                      width: 1,
                      child: Image.asset(assetsIcon + 'isbn.png', width: 1)),
                ),
              ),
              style: TextStyle(
                fontSize: 12,
              ),
              onSaved: (value) {
                if (value.length == 13) {
                  booksDescription.isbn13 = validateIsbn(value) as int;
                }
                if (value.length <= 10) {
                  booksDescription.isbn10 = validateIsbn(value);
                }
              }
            )
          )
        )
      ]
    );
  }

  /// to be sure that the current ISBN is correct formatted:
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

  Widget _buildAnimatedOpacity() {
    return Container(
        child: Visibility(
          //child: Container(color: Colors.blue, width: 100, height: 100),
          visible: _visible,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                _buildBookDescriptionItems(titelanfang),
                _buildBookDescriptionItems(verlag),
                _buildBookDescriptionItems(schlagwort),
                _buildBookDescriptionItems(notation),
                _buildBookDescriptionItems(plublisher),
                _buildBookDescriptionItems(veroeffentlichungsdatum)
              ]),
        ));
  }

//  Widget _buildsearchTF() {
//    return TextField(
//      decoration: InputDecoration(
//        border: OutlineInputBorder(
//          borderRadius: const BorderRadius.all(
//            const Radius.circular(
//              5.0,
//            ),
//          ),
//        ),
//        filled: true,
//        fillColor: Colors.white60,
//        contentPadding: EdgeInsets.all(15.0),
//        hintText: 'Eingeben...',
//      ),
//    );
//  }

}