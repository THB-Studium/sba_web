import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sba_web/pages/components/footer/navbar-footer.dart';
import 'package:sba_web/pages/weiterleitung/wltBestaetigung.dart';

class scWeiterleitungBody extends StatefulWidget {

  @override
  _scWeiterleitungBody createState() => _scWeiterleitungBody();
}

class _scWeiterleitungBody extends State<scWeiterleitungBody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              child: Text('Show Material Dialog'),
              onPressed: _showMaterialDialog,
            ),
          ],
        ),
      ),
    );
  }

  _showMaterialDialog() {
    showDialog(
        context: context,
        builder: (_) => new AlertDialog(
          title: new Text("Warnung!"),
          content: new Text("Sicher, dass du das Buch Scannen möchtest?"),
          actions: <Widget>[
            FlatButton(
              child: Text('Nein'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            FlatButton(
              child: Text('Ja'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => wtlBestaetigung()),
                );
              },
            ),
          ],
        ),
      barrierDismissible: false,
    );
  }

}