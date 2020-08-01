import 'package:flutter/material.dart';

import 'buch.dart';

// to build a book:
Widget buildOneBuch(Buch dasBuch) {
  return Container(
    decoration: BoxDecoration(
      border: Border(
        top: BorderSide(width: 0.5, color: Colors.grey),
        bottom: BorderSide(width: 0.5, color: Colors.grey),
        right: BorderSide(width: 0.5, color: Colors.grey),
        left: BorderSide(width: 0.5, color: Colors.grey),
      ),
      borderRadius: BorderRadius.circular(13.0),
    ),
    child: ListTile(
      title: Text.rich(
        TextSpan(
          text: dasBuch.buchTitel,
          style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
        ),
      ),
      subtitle: Text(dasBuch.buchAuthor),
      trailing: Wrap(
        spacing: 12, // space between two icons
        children: <Widget>[
          Text("12.06.2020"), // icon-1
          Icon(Icons.arrow_forward_ios), // icon-2
        ],
      ),
    ),
  );
}

// for the actions buttons:
Padding actionButton(Widget selctedClass, IconData icon, BuildContext context) {
  return Padding(
    padding: EdgeInsets.only(right: 10.0),
    child: GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(
          builder: (context) => selctedClass,
        ));
      },
      child: Icon(icon),
    ),
  );
}