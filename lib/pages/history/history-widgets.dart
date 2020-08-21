import 'package:flutter/material.dart';
import 'package:sba_web/models/ausleihe.dart';
import 'package:sba_web/models/reservierung.dart';
import 'package:sba_web/pages/book-details/details-page.dart';
import 'package:sba_web/pages/components/constants.dart';
import 'package:sba_web/pages/components/footer/navbar-footer.dart';

/// to build a Reservierung view:
Widget buildOneReservierung(BuildContext context, Reservierung reservierung) {
  return Column(
    children: <Widget>[
      SizedBox(height: 5),
      Container(
        decoration: BoxDecoration(
          border: _borderItem(2, reservierung.bis, "Reservierung"),
          borderRadius: BorderRadius.circular(13.0),
          color: Colors.white24
        ),
        child: GestureDetector(
          onTap: () {
            print('Reservierung titel' + reservierung.buch.titel);
            Navigator.push(context, MaterialPageRoute(
                builder: (context) => NavBarFooter(BuchDetailPage(book: reservierung.buch, parentView: histories))
            ));
          },
          child: ListTile(
            title: Text.rich(
              TextSpan(
                text: reservierung.buch.titel,
                style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
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
Widget buildOneAusleihe(BuildContext context, Ausleihe ausleihe) {
  return Column(
    children: <Widget>[
      SizedBox(height: 5),
      Container(
        decoration: BoxDecoration(
          border: _borderItem(2, ausleihe.bis, "Ausleihe"),
          borderRadius: BorderRadius.circular(13.0),
          color: Colors.white24
        ),
        child: GestureDetector(
          onTap: () {
            print('Ausleihe titel' + ausleihe.buch.titel);
            Navigator.push(context, MaterialPageRoute(
                builder: (context) => NavBarFooter(BuchDetailPage(book: ausleihe.buch, parentView: histories))
            ));
          },
          child: ListTile(
            title: Text.rich(
              TextSpan(
                text: ausleihe.buch.titel,
                style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
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
Border _borderItem (double width, DateTime date, String listClass) {
  if (listClass == "Reservierung") {
    return date.isBefore(new DateTime.now()) ?
    borderColor(width, Colors.red) : borderColor(width, Colors.orangeAccent);
  }
  if (listClass == "Ausleihe") {
    return date.isBefore(new DateTime.now()) ?
    borderColor(width, Colors.red) : borderColor(width, Colors.green);
  }
  return null;
}




