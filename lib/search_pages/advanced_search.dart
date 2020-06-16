//import 'dart:convert';

import 'package:flutter/material.dart';
//import 'package:string_validator/string_validator.dart';


class AdvancedSearch extends StatefulWidget {
  @override
  _AdvancedSearchState createState() => _AdvancedSearchState();
}

class _AdvancedSearchState extends State<AdvancedSearch> {


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
  final _formKey = GlobalKey<FormState>();

  //@override
  //void initState () {
    //super.initState();
    //getBook();
  //}


  Widget _buildVerfasser(){
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
        onSaved: (String value) {
          _verfasser = value;
        },
      ),
    );
  }
  Widget _buildTitel(){
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
          _titel = value;
        },
      ),
    );
  }

  static String validateIsbn (String value){
    Pattern pattern = r'/((978[\--– ])?[0-9][0-9\--– ]{10}[\--– ][0-9xX])|((978)?[0-9]{9}[0-9Xx])/';
    RegExp regex = new RegExp(pattern);
    if (!regex.hasMatch(value)) {
      return 'Bitte richtige ISBN / ISSN Nummer eingeben';
    } else {
      return value;
    }
  }

  Widget _buildIsbn(){
    return Row(
      children: <Widget>[
        Flexible(
          child: Padding(
            padding: EdgeInsets.only(top: _minimumPadding, bottom: _minimumPadding),
            child: TextFormField(
              decoration: InputDecoration(
                labelText: 'ISBN / ISSN',
                hintText: 'ISBN / ISSN eingeben',
              ),
              style: TextStyle(
                fontSize: 12,
              ),
              onSaved: (String value) {
                _isbn = validateIsbn(value);
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

  Widget _buildTitelanfang(){
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
          _titelanfang = value;
        },
      ),
    );
  }
  Widget _buildVerlag(){
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
          _verlag = value;
        },
      ),
    );
  }

  Widget _buildSchlagwort(){
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

  Widget _buildNotation(){
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

  Widget _buildSignatur(){
    return Padding(
      padding: EdgeInsets.only(top: _minimumPadding, bottom: _minimumPadding),
      child: TextFormField(
        decoration: InputDecoration(
          labelText: 'Signatur',
          hintText: 'Signatur eingeben',
        ),
        style: TextStyle(
          fontSize: 12,
        ),
        onSaved: (String value) {
          _signatur = value;
        },
      ),
    );
  }

  Widget _buildAnimatedOpacity(){
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
          ]
        ),
      )
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
                        style: TextStyle(color: Colors.blue[400], fontSize: 12,
                            fontWeight: FontWeight.w700
                        ),
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
                    style: TextStyle(color: Colors.blue[400], fontSize: 16,
                      fontWeight: FontWeight.w700
                    ),
                  ),

                  //Lorsqu'il faudra faire des requetes a la BD
                  //modifier ici
                  elevation: 6.0,
                  onPressed: () {
                    if (!_formKey.currentState.validate()){
                      return;
                    }
                    _formKey.currentState.save();
                    Navigator.pushNamed(context, '/search_book');
                   // print(_verfasser);
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
