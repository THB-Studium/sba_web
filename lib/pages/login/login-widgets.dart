import 'package:flutter/material.dart';
import 'package:sba_web/pages/components/constants.dart';

bool test = false;

/// Text format:
Positioned text(String text, double fontSize, double position) {
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

/// InputField
IconButton suffixIconIfPassword(bool passwort) {
  if (passwort) {
    return IconButton(
      onPressed: () {
        test = !test;
        print(test);
      },
      icon: test ? Icon(Icons.visibility, color: standardColors_blue) :
                   Icon(Icons.visibility_off, color: standardColors_blue)
    );
  } return null;
}
