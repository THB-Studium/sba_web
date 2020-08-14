import 'package:barcode_scan/barcode_scan.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sba_web/models/buch-items.dart';
import 'package:sba_web/models/buch.dart';
import 'package:sba_web/models/buecher_list.dart';
import 'package:sba_web/pages/components/constants.dart';
import 'package:sba_web/pages/components/footer/navbar-footer.dart';
import 'package:sba_web/pages/search-book/search-book-result/search-results-page.dart';
import 'package:sba_web/pages/search-book/search-widgets.dart';
import 'package:validators/validators.dart';

class AdvancedSearchBody extends StatefulWidget {
  @override
  _AdvancedSearchBodyState createState() => _AdvancedSearchBodyState();
}

class _AdvancedSearchBodyState extends State<AdvancedSearchBody> {
  BooksDescription booksDescription = new BooksDescription();
  bool _visible = false;
  TextEditingController textInputController = new TextEditingController();

  final _minimumPadding = 5.0;
  final _formKey = GlobalKey<FormState>();
  final List<Buch> buchItems = buecher;

  /// QR CODE Camera implementation
  static final _possibleFormats = BarcodeFormat.values.toList()
    ..removeWhere((e) => e == BarcodeFormat.unknown);
  List<BarcodeFormat> selectedFormats = [..._possibleFormats];

  @override
  initState() {
    super.initState();
  }

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
                          _visible
                              ? Icons.keyboard_arrow_up
                              : Icons.keyboard_arrow_down,
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
                    print('Title: ' + booksDescription.title.toString());
                    print('Author: ' + booksDescription.author.toString());
                    print('ISBN13: ' + booksDescription.isbn13.toString());
                    print('ISBN10: ' + booksDescription.isbn10.toString());
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                NavBarFooter(SearchResultsPage(buchItems))));
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
        onChanged: (value) {
          setBookDescriptionItems(labelText, value);
        },
      ),
    );
  }

  void setBookDescriptionItems(String itemName, String value) {
    setState(() {
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
    });
  }

  // Scan function for QR CODE Camera
  Future _scan() async {
    try {
      var scanResult = await BarcodeScanner.scan();
      var isbnNummer;

      setState(() {
        isbnNummer = validateIsbn(scanResult.rawContent);
        if (isbnNummer.length == 13) {
          booksDescription.isbn13 = isbnNummer;
        }
        if (isbnNummer.length <= 10) {
          booksDescription.isbn10 = isbnNummer;
        }
        textInputController.text = isbnNummer;
      });
    } on PlatformException catch (e) {
      var scanResult = ScanResult(
        type: ResultType.Error,
        format: BarcodeFormat.unknown,
      );

      if (e.code == BarcodeScanner.cameraAccessDenied) {
        setState(() {
          scanResult.rawContent = 'The user did not grant the camera permission!';
        });
      } else {
        scanResult.rawContent = 'Unknown error: $e';
      }
    }
  }

  Widget _buildIsbn() {
    return Row(children: <Widget>[
      Flexible(
          child: Column(
        children: <Widget>[
          Padding(
              padding: EdgeInsets.only(
                  top: _minimumPadding, bottom: _minimumPadding),
              child: TextFormField(
                  controller: textInputController,
                  decoration: InputDecoration(
                    labelText: 'ISBN / ISSN',
                    suffixIcon: IconButton(
                      icon: Image.asset('assets/icons/isbn.png'),
                      onPressed: _scan,
                    ),
                  ),
                  style: TextStyle(
                    fontSize: 12,
                  ),
                  onChanged: (value) {
                    if (value != null) {
                      if (value.length == 13) {
                        booksDescription.isbn13 = validateIsbn(value);
                      }
                      if (value.length <= 10) {
                        booksDescription.isbn10 = validateIsbn(value);
                      }
                    }
                  })),
        ],
      ))
    ]);
  }

  /// to be sure that the current ISBN is correct formatted:
  static String validateIsbn(String value) {
    if (!isISBN(value)) {
      return 'Bitte richtige ISBN / ISSN Nummer eingeben';
    } else {
      return value;
    }
  }

  Widget _buildAnimatedOpacity() {
    return Container(
        child: Visibility(
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
}
