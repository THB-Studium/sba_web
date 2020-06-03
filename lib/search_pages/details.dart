import 'package:flutter/material.dart';

class BookDetails extends StatefulWidget {
  @override
  _BookDetailsState createState() => _BookDetailsState();
}

class _BookDetailsState extends State<BookDetails> {

  String verfasser;
  String titel;
  String isbn;
  DateTime jahr;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Erweitete Suche'),
        centerTitle: true,
        backgroundColor: Colors.red[600],
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Padding(
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
              TextFormField(
                validator: ($verfasser) {
                  if (verfasser.isEmpty) {
                    return 'text eingeben';
                  }
                  return null;
                },
                onChanged: (val){
                  setState() => verfasser = val;
                },
              ),
              SizedBox(height: 10.0),
              Text(
                'Titel',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.0,
                ),
              ),
              TextFormField(
                validator: ($title) {
                  if (titel.isEmpty) {
                    return 'text eingeben';
                  }
                  return null;
                },
              ),
              SizedBox(height: 10.0),
              Text(
                'ISBN / ISSN',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.0,
                ),
              ),
              Row(
                children: <Widget>[
                  Flexible(
                    child: TextFormField(
                      validator: (dropdownValue0) {
                        if (dropdownValue0.isEmpty) {
                          return 'text eingeben';
                        }
                        return null;
                      },
                    ),
                  ),
                  Container(
                    child: Image.asset('assets/images/isbn.png', width: 30),
                  ),
                ],
              ),
              
              SizedBox(height: 10.0),
              Text(
                'Titelanfang',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.0,
                ),
              ),
              TextFormField(
                validator: (dropdownValue0) {
                  if (dropdownValue0.isEmpty) {
                    return 'text eingeben';
                  }
                  return null;
                },
              ),
              SizedBox(height: 10.0),
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
                  "Suchen",
                  style: TextStyle(fontSize: 20.0),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
