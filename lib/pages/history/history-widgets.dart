import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'buch.dart';

// to build a book:
Widget buildOneBuch(Buch dasBuch) {
  return Container(
//    decoration: BoxDecoration(
//      border: borderItem(0.5, Colors.grey),
//      borderRadius: BorderRadius.circular(13.0),
//    ),
//    child: ListTile(
//      title: Text.rich(
//        TextSpan(
//          text: dasBuch.buchTitel,
//          style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
//        ),
//      ),
//      subtitle: Text(dasBuch.buchAuthor),
//      trailing: Wrap(
//        spacing: 12, // space between two icons
//        children: <Widget>[
//          Text("12.06.2020"), // icon-1
//          Icon(Icons.arrow_forward_ios), // icon-2
//        ],
//      ),
//    ),
  );
}

// to build a Reservierung:
Widget buildOneReservierung(Reservierung reservierung) {
  return Column(
    children: <Widget>[
      SizedBox(height: 5),
      Container(
        decoration: BoxDecoration(
          border: borderItem(0.9, reservierung.bis, "Reservierung"),
          borderRadius: BorderRadius.circular(13.0),
        ),
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
              Text(_dateformat(reservierung.bis)), // icon-1
              Icon(Icons.arrow_forward_ios), // icon-2
            ],
          ),
        ),
      ),
    ],
  );
}

// to build a ausleihe:
Widget buildOneAusleihe(Ausleihe ausleihe) {
  return Column(
    children: <Widget>[
      SizedBox(height: 5),
      Container(
        decoration: BoxDecoration(
          border: borderItem(0.9, ausleihe.bis, "Ausleihe"),
          borderRadius: BorderRadius.circular(13.0),
        ),
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
              Text(_dateformat(ausleihe.bis)), // icon-1
              Icon(Icons.arrow_forward_ios), // icon-2
            ],
          ),
        ),
      ),
    ],
  );
}

// to set the border of each item:
Border borderItem (double width, DateTime date, String listClass) {
  if (listClass == "Reservierung") {
    return date.isBefore(new DateTime.now()) ?
    _borderColor(width, Colors.red) : _borderColor(width, Colors.amberAccent);
  }
  if (listClass == "Ausleihe") {
    return date.isBefore(new DateTime.now()) ?
    _borderColor(width, Colors.red) : _borderColor(width, Colors.green);
  }
}

// to set the color border of each item:
Border _borderColor (double width, Color color) {
  return Border(
    top: BorderSide(width: width, color: color),
    bottom: BorderSide(width: width, color: color),
    right: BorderSide(width: width, color: color),
    left: BorderSide(width: width, color: color),
  );
}


// to format date:
String _dateformat(DateTime date){
  final DateFormat formatter = DateFormat('dd-MM-yyyy');
  return formatter.format(date);
}

