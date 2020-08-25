// about book items:
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sba_web/pages/components/constants.dart';
import 'package:url_launcher/url_launcher.dart';

final String verfasser = 'Verfasser';
final String titel = 'Titel';
final String titelanfang = 'Titelanfang';
final String verlag = 'Verlag';
final String schlagwort = 'Schlagwort';
final String notation = 'Notation';
final String plublisher = 'Plublisher';
final String veroeffentlichungsdatum = 'Veröffentlichungsdatum';

String _zentralUndLandesbibliothekBerlin = 'https://www.zlb.de/';
String _freieUniversitaetBerlin = 'https://www.fu-berlin.de/en/sites/ub/index.html';
String _amerikaGedenkbibliothek = 'https://www.wikiwand.com/de/Amerika-Gedenkbibliothek';
String _universitaetsbibliothekPotsdam = 'https://www.ub.uni-potsdam.de/de/';
String _tuBerlin = 'https://www.ub.tu-berlin.de/startseite/';

/// for external search:
Padding externalSearch(BuildContext context) {
  return Padding(
    padding: EdgeInsets.only(right: 10.0),
    child: GestureDetector(
      onTap: () {
        _showExternalSearch(context);
      },
      child: Image.asset(
        assetsIcon + 'world.png',
        width: 30,
        color: Colors.white,
      ),
    ),
  );
}

/// to show external biblios:
Future _showExternalSearch(BuildContext context) {
  return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Row(
            children: [
              Image.asset(assetsIcon + 'world.png', width: 23),
              Text('Externe Suche', style: TextStyle(fontWeight: FontWeight.bold))
            ],
          ),
          content: Container(
              child: Column(
                children: [
                  Row(
                    children: [
                      Text('Buch '),
                      Text('nicht vorhanden?', style: TextStyle(fontWeight: FontWeight.bold)),
                    ]
                  ),
                  Text('Keine Sorge... klicken Sie auf das Logo '
                      'Ihrer Wahl, um in dieser Bibliothek nach Ihrem Buch zu suchen.'),
                  SizedBox(height: 35),
                  buildIconButton('zlb.png', _zentralUndLandesbibliothekBerlin),
                  SizedBox(height: 35),
                  buildIconButton('amerikaGedenkbibliothek.png', _amerikaGedenkbibliothek),
                  SizedBox(height: 35),
                  buildIconButton('pu.png', _universitaetsbibliothekPotsdam),
                  SizedBox(height: 35),
                  buildIconButton('fub.png', _freieUniversitaetBerlin),
                  SizedBox(height: 35),
                  buildIconButton('tub.png', _tuBerlin),
                ],
              ),
          ),
        );
      });
}

/// for the new forwarding buttons:
Padding buildIconButton(String bildName, String url) {
  return Padding(
    padding: EdgeInsets.only(right: 10.0),
    child: GestureDetector(
      onTap: () {
        launch(url);
      },
      child: Image.asset(
        assetsImage + bildName,
      ),
    ),
  );
}