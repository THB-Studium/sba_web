import 'package:barcode_scan/barcode_scan.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sba_web/models/ausleihe.dart';
import 'package:sba_web/models/reservierung.dart';
import 'package:sba_web/pages/book-details/details-page.dart';
import 'package:sba_web/pages/components/constants.dart';
import 'package:sba_web/pages/components/footer/navbar-footer.dart';
import 'package:validators/validators.dart';

var isbnNummer;

/// to build a Reservierung view:
Column buildOneReservierung(BuildContext context, Reservierung reservierung) {
  return Column(
    children: <Widget>[
      SizedBox(height: 5),
      Container(
        decoration: BoxDecoration(
            border: _borderItem(2, reservierung.bis, "Reservierung"),
            borderRadius: BorderRadius.circular(13.0),
            color: Colors.white24),
        child: GestureDetector(
          onTap: () {
            print('Reservierung titel' + reservierung.buch.titel);
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => NavBarFooter(BuchDetailPage(
                        book: reservierung.buch, parentView: histories))));
          },
          child: ListTile(
            title: Text.rich(
              TextSpan(
                text: reservierung.buch.titel,
                style:
                    TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
              ),
            ),
            subtitle: Text(reservierung.buch.author),
            trailing: Wrap(
              spacing: 5, // space between two icons
              children: <Widget>[
                Text(dateformat(reservierung.bis)), // icon-1
                Icon(Icons.arrow_forward_ios), // icon-2
              ],
            ),
          ),
        ),
      ),
    ],
  );
}

/// to build a ausleihe view:
Column buildOneAusleihe(BuildContext context, Ausleihe ausleihe) {
  return Column(
    children: <Widget>[
      SizedBox(height: 5),
      Container(
        decoration: BoxDecoration(
            border: _borderItem(2, ausleihe.bis, "Ausleihe"),
            borderRadius: BorderRadius.circular(13.0),
            color: Colors.white24),
        child: GestureDetector(
          onTap: () {
            print('Ausleihe titel' + ausleihe.buch.titel);
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => NavBarFooter(BuchDetailPage(
                        book: ausleihe.buch, parentView: histories))));
          },
          child: ListTile(
            title: Text.rich(
              TextSpan(
                text: ausleihe.buch.titel,
                style:
                    TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
              ),
            ),
            subtitle: Text(ausleihe.buch.author),
            trailing: Wrap(
              spacing: 5, // space between two icons
              children: <Widget>[
                Text(dateformat(ausleihe.bis)), // icon-1
                Icon(Icons.arrow_forward_ios), // icon-2
              ],
            ),
          ),
        ),
      ),
    ],
  );
}

/// to set the border of each item:
Border _borderItem(double width, DateTime date, String listClass) {
  if (listClass == "Reservierung") {
    return date.isBefore(new DateTime.now())
        ? borderColor(width, Colors.red)
        : borderColor(width, Colors.orangeAccent);
    //: borderColor(width, Colors.amberAccent);
  }
  if (listClass == "Ausleihe") {
    return date.isBefore(new DateTime.now())
        ? borderColor(width, Colors.red)
        : borderColor(width, Colors.green);
  }
  return null;
}

/// for the new forwarding buttons:
Padding newWeiterleitung(BuildContext context) {
  return Padding(
    padding: EdgeInsets.only(right: 10.0),
    child: GestureDetector(
      onTap: () {
        _newWeiterleitung(context);
      },
      child: Image.asset(
        'assets/icons/barcode2.png',
        width: 30,
        color: Colors.white,
      ),
    ),
  );
}

/// to start a new forwarding:
Future _newWeiterleitung(BuildContext context) {
  return showDialog(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (context) {
        // If the user spends time without clicking on one button the AlertDialog
        // will disappear after 30 seconds.
//        Future.delayed(Duration(seconds: 30)).then((value) {
//          Navigator.of(context).pop();
//        });
        return AlertDialog(
          title: Text('Start Weiterletung'),
          content: Container(
              child: Text(
                  'Sie sind dabei, eine neue Weiterleitung zu starten. Möchten Sie fortfahren?')),
          actions: [
            _alertPopUpAction(context, 'Nein'),
            _alertPopUpAction(context, 'Ja')
          ],
        );
      });
}

/// answer action buttons (Ja, Nein, ablehnen oder bestätigen):
FlatButton _alertPopUpAction(BuildContext context, String action) {
  return FlatButton(
      child: Text(action),
      onPressed: () {
        if (action == 'Ablehnen' || action == 'OK') {
          Navigator.of(context).pop();
          Navigator.of(context).pop();
        }
        if (action == 'Nein') {
          Navigator.of(context).pop();
        }
        if (action == 'Ja') {
          _scan(context);
        }
        if (action == 'Bestätigen') {
          //TODO
          Navigator.of(context).pop();
          Navigator.of(context).pop();
        }
      });
}

Future weiterleitungBedigungenDialog(BuildContext context) {
  return showDialog(
    context: context,
    barrierDismissible: false, // user must tap button!
    builder: (BuildContext context) {
      return StatefulBuilder(builder: (context, setState) {
        return AlertDialog(
          title: Text('Weiterleitungsbedigungen'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text('Hiermit bestätigen Sie, den guten Zustand und die Vollständigkeit '
                    'des Buches bei der Übergabe überprüft zu haben. Als  letzter Entleiher '
                    'dieses Mediums übernehmen Sie somit die Haftung für eventuelle Schäden.')
              ],
            ),
          ),
          actions: <Widget>[
            _alertPopUpAction(context, 'Ablehnen'),
            _alertPopUpAction(context, 'Bestätigen')
          ],
        );
      });
    },
  );
}

Future errorDialog(BuildContext context, String message) {
  return showDialog<void>(
    context: context,
    barrierDismissible: false, // user must tap button!
    builder: (context) {
      return AlertDialog(
        title: Text('Fehlermeldung'),
        content: SingleChildScrollView(
          child: Text(message),
        ),
        actions: <Widget>[_alertPopUpAction(context, 'OK')],
      );
    },
  );
}

/// Scan function for QR CODE Camera
Future _scan(BuildContext context) async {
  try {
    var result = await BarcodeScanner.scan();

    if (result != null) {
      if (result.rawContent != null  && result.rawContent != '') {
        if (isISBN(result.rawContent)) {
          //TODO
          isbnNummer = result.rawContent;
          return weiterleitungBedigungenDialog(context);
        } else {
          String errorMessage = 'Bitte eine gültige ISBN/ISSN eingeben';
          return errorDialog(context, errorMessage);
        }
      } else {
        String errorMessage =
            'Null ISBN! Bitte wiederholen Sie den Scanvorgang oder prüfen Sie, '
            'ob der Barcode nicht beschädigt ist.';
        return errorDialog(context, errorMessage);
      }
    }
  } on PlatformException catch (e) {
    var result = ScanResult(
      type: ResultType.Error,
      format: BarcodeFormat.unknown,
    );

    if (e.code == BarcodeScanner.cameraAccessDenied) {
      result.rawContent = 'The user did not grant the camera permission!';
    } else {
      result.rawContent = 'Unknown error: $e';
    }
  }
}

/// to be sure that the current ISBN is correct formatted:
String validateIsbn(String value) {
  if (isISBN(value)) {
    return value;
  } else {
    return 'Bitte richtige ISBN / ISSN Nummer eingeben';
  }
}
