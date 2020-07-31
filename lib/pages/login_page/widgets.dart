import 'package:flutter/material.dart';

import '../../constants.dart';

// Logo configuration
Widget setImage(String imgName, double size, double position) {
  return Positioned(
    top: position,
    child: Image.asset(
      "assets/images/" + imgName,
      width: size,
      color: kPrimaryColor,
    ),
  );
}

// Text format
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
      color: kPrimaryColor,
    );
  }
}
