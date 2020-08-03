import 'package:flutter/material.dart';

import '../../components/constants.dart';


// loading page:
Column loading() {
  return Column(
    children: <Widget>[
      SizedBox(height: 200),
      setImage("bibsapp_logo.png", 150, 200, null),
      SizedBox(height: 20),
      CircularProgressIndicator(),
    ],
  );
}

// Logo configuration:
Widget setImage(String imgName, double size, double position, Color color) {
  return Positioned(
    top: position,
    child: Image.asset(
      assetsImage + imgName,
      width: size,
      color: color,
    ),
  );
}

// Text format:
Widget text(String text, double fontSize, double position) {
  return Positioned(
    top: position,
    child: Text(
      text,
      style: TextStyle(
        fontFamily: 'Algerian',
        fontWeight: FontWeight.bold,
        fontSize: fontSize,
      ),
    )
  );
}

// InputField
Widget suffixIconIfPassword(bool passwort) {
  if (passwort) {
    return Icon(
      Icons.visibility,
      color: standardColors_blue,
    );
  } return null;
}
