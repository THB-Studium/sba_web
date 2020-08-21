import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:sba_web/models/buch.dart';
import 'package:sba_web/pages/components/constants.dart';

PreferredSize appBarTitle (String title) {
  return PreferredSize(
    preferredSize: Size.fromHeight(200.0),
    child: Padding(
      padding: const EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 20.0),
      child: Text(
        title,
        style: TextStyle(
          color: Colors.white,
          fontSize: 26.0,
          fontFamily: 'Raleway',

        )
      )
    )
  );
}

ListTile setInfoItem(String itemName, String value) {
  return ListTile(
    title: Text(itemName, style: TextStyle(color: standardColors_blue, fontWeight: FontWeight.bold)),
    subtitle: itemName == "Verfügbarkeit"
        ? setVerfuegbarkeitColor(value)
        : Text(value, style: TextStyle(color: Colors.black)),
  );
}

Text setVerfuegbarkeitColor(String value) {
  if (value == entliehen) {
    return Text(value, style: TextStyle(color: Colors.redAccent));
  } else if (value == ausliehbar) {
    return Text(value, style: TextStyle(color: Colors.green));
  } else {
    return Text('');
  }
}

FloatingActionButton shareFloatingButton(Buch buch, BuildContext context) {
  return FloatingActionButton(
    tooltip: 'zu Favoriten hinzufügen',
    heroTag: 'share',
    child: Icon(Icons.share),
    onPressed: () {share(context, buch);},
  );
}

FloatingActionButton favoryActionButton(Buch buch, BuildContext context) {
  return FloatingActionButton(
    tooltip: 'zu Favoriten hinzufügen',
    heroTag: 'favory',
    child: Icon(EvaIcons.heart),
    onPressed: () {},
  );
}

Padding buchActionButton(String titel, Color colorButton, Buch buch, BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(10.0),
    child: RaisedButton(
      color: colorButton,
      child: Text(
        titel,
        style: TextStyle(
            color: standardColors_white,
            fontSize: 16,
            fontWeight: FontWeight.w700),
      ),
      elevation: 6.0,
      onPressed: () {
        if (titel == 'Reservieren') {
          Navigator.of(context).pop();
        }
        if (titel == 'Send push') {
          _pushDialog(buch, context);
        }
      }
    ),
  );
}

/// to send push notifications:
Future _pushDialog(Buch buch, BuildContext context) {
  return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Push notification'),
          content: Container(
              height: 90,
              child: Text(
                  'Nach was fragen Sie für das Buch "' + buch.titel + '"?')),
          actions: [
            _pushAction('Fotos', context),
            _pushAction('Weiterleitung', context)
          ],
        );
      });
}

/// answer action buttons (ablehnen oder bestätigen):
Widget _pushAction(String titel, BuildContext context) {
  return RaisedButton(
      color: standardColors_blue,
      child: Text(
        titel,
        style: TextStyle(
            color: standardColors_white,
            fontSize: 16,
            fontWeight: FontWeight.w700),
      ),
      elevation: 6.0,
      onPressed: () {
        Navigator.of(context).pop();
      });
}
