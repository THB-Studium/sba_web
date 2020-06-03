/**import 'package:flutter/material.dart';

appBar: AppBar(
title: Text('Details'),
centerTitle: true,
backgroundColor: Colors.red[600],
elevation: 0.0,
),
body: Padding(
padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
child: Column(
crossAxisAlignment: CrossAxisAlignment.start,
children: <Widget>[
Text(
'Verfasser',
style: TextStyle(
color: Colors.black,
fontSize: 20.0,
fontWeight: FontWeight.bold,
letterSpacing: 1.0,
),
),
SizedBox(height: 5.0),
Text(
'test',
style: TextStyle(
color: Colors.black,
fontSize: 16.0,
//fontWeight: FontWeight.bold,
letterSpacing: 1.0,
),
),
Text(
'Titel',
style: TextStyle(
color: Colors.black,
fontSize: 20.0,
fontWeight: FontWeight.bold,
letterSpacing: 1.0,
),
),
SizedBox(height: 5.0),
Text(
'test',
style: TextStyle(
color: Colors.black,
fontSize: 16.0,
//fontWeight: FontWeight.bold,
letterSpacing: 1.0,
),
),
Text(
'ISBN',
style: TextStyle(
color: Colors.black,
fontSize: 20.0,
fontWeight: FontWeight.bold,
letterSpacing: 1.0,
),
),
SizedBox(height: 5.0),
Text(
'test',
style: TextStyle(
color: Colors.black,
fontSize: 16.0,
//fontWeight: FontWeight.bold,
letterSpacing: 1.0,
),
),
Text(
'Jahr',
style: TextStyle(
color: Colors.black,
fontSize: 20.0,
fontWeight: FontWeight.bold,
letterSpacing: 1.0,
),
),
SizedBox(height: 5.0),
Text(
'test',
style: TextStyle(
color: Colors.black,
fontSize: 16.0,
//fontWeight: FontWeight.bold,
letterSpacing: 1.0,
),
),
],
),
),


import 'package:flutter/material.dart';

class BookDetails extends StatefulWidget {
  @override
  _BookDetailsState createState() => _BookDetailsState();
}

class _BookDetailsState extends State<BookDetails> {

  String dropdownValue0 = 'Verfasser';
  String dropdownValue1 = 'Title';
  String dropdownValue2 = 'ISBN/ISSN';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Details'),
        centerTitle: true,
        backgroundColor: Colors.red[600],
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            DropdownButton<String>(
              value: dropdownValue0,
              icon: Icon(Icons.arrow_downward),
              iconSize: 15.0,
              elevation: 16,
              style: TextStyle(color: Colors.black),
              underline: Container(
                height: 0.0,
                color: Colors.black,
              ),
              onChanged: (String newValue) {
                setState(() {
                  dropdownValue0 = newValue;
                });
              },
              items: <String>['Verfasser', 'Title', 'Signatur', 'ISBN/ISSN', 'Sprache', 'Titelanfang', 'Verlag', 'Jahr']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
            TextFormField(
              validator: (dropdownValue0) {
                if (dropdownValue0.isEmpty) {
                  return 'text eingeben';
                }
                return null;
              },
            ),
            SizedBox(height: 5.0),
            DropdownButton<String>(
              value: dropdownValue1,
              icon: Icon(Icons.arrow_downward),
              iconSize: 15.0,
              elevation: 16,
              style: TextStyle(color: Colors.black),
              underline: Container(
                height: 2,
                color: Colors.black,
              ),
              onChanged: (String newValue) {
                setState(() {
                  dropdownValue1 = newValue;
                });
              },
              items: <String>['Verfasser', 'Title', 'Signatur', 'ISBN/ISSN', 'Sprache', 'Titelanfang', 'Verlag', 'Jahr']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
            TextFormField(
              validator: (dropdownValue1) {
                if (dropdownValue1.isEmpty) {
                  return 'text eingeben';
                }
                return null;
              },
            ),
            SizedBox(height: 5.0),
            DropdownButton<String>(
              value: dropdownValue2,
              icon: Icon(Icons.arrow_downward),
              iconSize: 15.0,
              elevation: 16,
              style: TextStyle(color: Colors.black),
              underline: Container(
                height: 2,
                color: Colors.black,
              ),
              onChanged: (String newValue) {
                setState(() {
                  dropdownValue2 = newValue;
                });
              },
              items: <String>['Verfasser', 'Title', 'Signatur', 'ISBN/ISSN', 'Sprache', 'Titelanfang', 'Verlag', 'Jahr']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
            TextFormField(
              validator: (dropdownValue2) {
                if (dropdownValue2.isEmpty) {
                  return 'text eingeben';
                }
                return null;
              },
            ),
            SizedBox(height: 5.0),
            FlatButton(
              color: Colors.blue,
              textColor: Colors.white,
              disabledColor: Colors.grey,
              disabledTextColor: Colors.black,
              padding: EdgeInsets.all(8.0),
              splashColor: Colors.blueAccent,
              onPressed: () {
                /*...*/
              },
              child: Text(
                "Senden",
                style: TextStyle(fontSize: 20.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
**/