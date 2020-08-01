//import 'package:flutter/material.dart';
//
//final _minimumPadding = 5.0;
//final ValueChanged<String> onChanged = null;
//
//Widget buildVerfasser() {
//  return Padding(
//    padding: EdgeInsets.only(top: _minimumPadding, bottom: _minimumPadding),
//    child: TextFormField(
//      decoration: InputDecoration(
//        labelText: 'Verfasser',
//        hintText: 'Verfasser eingeben',
//        //border: OutlineInputBorder(
//        //borderRadius: BorderRadius.circular(5.0),
//        //),
//      ),
//      style: TextStyle(
//        fontSize: 12,
//      ),
//      onChanged: onChanged,
//      onSaved: (value) {
//        bd.author = value;
//      },
//    ),
//  );
//}
//
//Widget buildTitel() {
//  return Padding(
//    padding: EdgeInsets.only(top: _minimumPadding, bottom: _minimumPadding),
//    child: TextFormField(
//      decoration: InputDecoration(
//        labelText: 'Titel',
//        hintText: 'Titel eingeben',
//      ),
//      style: TextStyle(
//        fontSize: 12,
//      ),
//      onSaved: (String value) {
//        bd.title = value;
//      },
//    ),
//  );
//}
//
//Widget buildIsbn() {
//  return Row(
//    children: <Widget>[
//      Flexible(
//        child: Padding(
//          padding:
//          EdgeInsets.only(top: _minimumPadding, bottom: _minimumPadding),
//          child: TextFormField(
//            decoration: InputDecoration(
//              labelText: 'ISBN / ISSN',
//              hintText: 'ISBN / ISSN eingeben',
//            ),
//            style: TextStyle(
//              fontSize: 12,
//            ),
//            onSaved: (value) {
//              if (value.length == 13) {
//                bd.isbn13 = validateIsbn(value) as int;
//              }
//              if (value.length <= 10) {
//                bd.isbn10 = validateIsbn(value);
//              }
//            },
//          ),
//        ),
//      ),
//      Container(
//        width: _minimumPadding * 5,
//        child: Image.asset('assets/images/isbn.png', width: 30),
//      ),
//    ],
//  );
//}
//
//Widget buildTitelanfang() {
//  return Padding(
//    padding: EdgeInsets.only(top: _minimumPadding, bottom: _minimumPadding),
//    child: TextFormField(
//      decoration: InputDecoration(
//        labelText: 'Titelanfang',
//        hintText: 'Titelanfang eingeben',
//      ),
//      style: TextStyle(
//        fontSize: 12,
//      ),
//      keyboardType: TextInputType.text,
//      onSaved: (String value) {
//        bd.titleSlug = value;
//      },
//    ),
//  );
//}
//
//Widget buildVerlag() {
//  return Padding(
//    padding: EdgeInsets.only(top: _minimumPadding, bottom: _minimumPadding),
//    child: TextFormField(
//      decoration: InputDecoration(
//        labelText: 'Verlag',
//        hintText: 'Verlag eingeben',
//      ),
//      style: TextStyle(
//        fontSize: 12,
//      ),
//      onSaved: (String value) {
//        bd.edition = value;
//      },
//    ),
//  );
//}
//
//Widget buildSchlagwort() {
//  return Padding(
//    padding: EdgeInsets.only(top: _minimumPadding, bottom: _minimumPadding),
//    child: TextFormField(
//      decoration: InputDecoration(
//        labelText: 'Schlagwort',
//        hintText: 'Schlagwort eingeben',
//      ),
//      style: TextStyle(
//        fontSize: 12,
//      ),
//      onSaved: (String value) {
//        _schlagwort = value;
//      },
//    ),
//  );
//}
//
//Widget buildNotation() {
//  return Padding(
//    padding: EdgeInsets.only(top: _minimumPadding, bottom: _minimumPadding),
//    child: TextFormField(
//      decoration: InputDecoration(
//        labelText: 'Notation',
//        hintText: 'Notation eingeben',
//      ),
//      style: TextStyle(
//        fontSize: 12,
//      ),
//      onSaved: (String value) {
//        _notation = value;
//      },
//    ),
//  );
//}
//
//Widget buildSignatur() {
//  return Padding(
//    padding: EdgeInsets.only(top: _minimumPadding, bottom: _minimumPadding),
//    child: TextFormField(
//      decoration: InputDecoration(
//        labelText: 'Plublisher',
//        hintText: 'Signatur eingeben',
//      ),
//      style: TextStyle(
//        fontSize: 12,
//      ),
//      onSaved: (String value) {
//        bd.publisher = value;
//      },
//    ),
//  );
//}
//
//Widget buildDate() {
//  return Padding(
//    padding: EdgeInsets.only(top: _minimumPadding, bottom: _minimumPadding),
//    child: TextFormField(
//      keyboardType: TextInputType.datetime,
//      decoration: InputDecoration(
//        labelText: 'Veröffentlichungsdatum',
//        hintText: 'Datum eingeben',
//      ),
//      style: TextStyle(
//        fontSize: 12,
//      ),
//      onSaved: (String value) {
//        bd.pubdate = value;
//      },
//    ),
//  );
//}
//
//Widget buildAnimatedOpacity() {
//  return Container(
//      child: Visibility(
//        //child: Container(color: Colors.blue, width: 100, height: 100),
//        visible: _visible,
//        child: Column(
//            mainAxisAlignment: MainAxisAlignment.center,
//            children: <Widget>[
//              _buildTitelanfang(),
//              _buildVerlag(),
//              _buildSchlagwort(),
//              _buildNotation(),
//              _buildSignatur(),
//              _buildDate()
//            ]),
//      ));
//}
//
//
//Widget buildsearchTF() {
//  return TextField(
//    decoration: InputDecoration(
//      border: OutlineInputBorder(
//        borderRadius: const BorderRadius.all(
//          const Radius.circular(
//            5.0,
//          ),
//        ),
//      ),
//      filled: true,
//      fillColor: Colors.white60,
//      contentPadding: EdgeInsets.all(15.0),
//      hintText: 'Eingeben...',
//    ),
//  );
//}