import 'package:flutter/material.dart';
import 'package:sba_web/models/ausleihe.dart';
import 'package:sba_web/models/reservierung.dart';
import 'package:sba_web/pages/components/constants.dart';
import 'package:sba_web/pages/components/footer/navbar-footer.dart';
import 'package:sba_web/pages/search-book/Bookdetails/details-page.dart';

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
            print('Reservierung titel' + reservierung.buch.buchTitel);
            Navigator.push(context, MaterialPageRoute(
                builder: (context) => NavBarFooter(BuchDetailPage(book: reservierung.buch))
            ));
          },
          child: ListTile(
            title: Text.rich(
              TextSpan(
                text: reservierung.buch.buchTitel,
                style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
              ),
            ),
            subtitle: Text(reservierung.buch.buchAuthor),
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
            print('Ausleihe titel' + ausleihe.buch.buchTitel);
            Navigator.push(context, MaterialPageRoute(
                builder: (context) => NavBarFooter(BuchDetailPage(book: ausleihe.buch))
            ));
          },
          child: ListTile(
            title: Text.rich(
              TextSpan(
                text: ausleihe.buch.buchTitel,
                style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
              ),
            ),
            subtitle: Text(ausleihe.buch.buchAuthor),
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
    borderColor(width, Colors.red) : borderColor(width, Colors.amberAccent);
  }
  if (listClass == "Ausleihe") {
    return date.isBefore(new DateTime.now()) ?
    borderColor(width, Colors.red) : borderColor(width, Colors.green);
  }
  return null;
}




