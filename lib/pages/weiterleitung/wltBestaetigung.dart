import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class wtlBestaetigung extends StatefulWidget {
  @override
  _wtlBestaetigungState createState() => _wtlBestaetigungState();
}

class _wtlBestaetigungState extends State<wtlBestaetigung> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Route"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Go back!'),
        ),
      ),
    );
  }
}
