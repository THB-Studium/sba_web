import 'package:flutter/material.dart';
import 'package:string_validator/string_validator.dart';

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
  DateTime _jahr;

  final _formKey = GlobalKey<FormState>();

  Widget _buildVerfasser(){
    return TextFormField(
      decoration: InputDecoration(labelText: 'Verfasser'),
      onSaved: (String value) {
        _verfasser = value;
      },
    );
  }
  Widget _buildTitel(){
    return TextFormField(
      decoration: InputDecoration(labelText: 'Titel'),
      onSaved: (String value) {
        _titel = value;
      },
    );
  }
  Widget _buildIsbn(){
    return Row(
      children: <Widget>[
        Flexible(
          child: TextFormField(
            decoration: InputDecoration(labelText: 'ISBN / ISSN'),
            validator: (String value) {
              if (!isISBN(value)) {
                return 'Bitte richtige ISBN / ISSN Nummer eingeben';
              }
            },
            onSaved: (String value) {
              _isbn = value;
            },
          ),
        ),
        Container(
          child: Image.asset('assets/images/isbn.png', width: 30),
        ),
      ],
    );
  }
  Widget _buildTitelanfang(){
    return TextFormField(
      decoration: InputDecoration(labelText: 'Titelanfang'),
      keyboardType: TextInputType.number,
      onSaved: (String value) {
        _titelanfang = value;
      },
    );
  }
  Widget _buildVerlag(){
    return TextFormField(
      decoration: InputDecoration(labelText: 'Verlag'),
      onSaved: (String value) {
        _verlag = value;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Erweiterte Suche'),
        centerTitle: true,
        backgroundColor: Colors.red[600],
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
                _buildTitelanfang(),
                _buildVerlag(),
                SizedBox(height: 100),
                RaisedButton(
                  child: Text(
                    'Suchen',
                    style: TextStyle(color: Colors.red[400], fontSize: 16),
                  ),

                  //Lorsqu'il faudra faire des requetes a la BD
                  //modifier ici
                  onPressed: () {
                    if (!_formKey.currentState.validate()){
                      return;
                    }

                    _formKey.currentState.save();
                    print(_verfasser);
                    print(_titel);
                    print(_isbn);
                    print(_titelanfang);
                    print(_verlag);
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
