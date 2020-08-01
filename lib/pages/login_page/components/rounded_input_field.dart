import 'package:flutter/material.dart';
import 'package:sba_web/pages/login_page/components/text_field_container.dart';

import '../../../constants.dart';

class RoundedInputField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChanged;
  const RoundedInputField({
    Key key,
    this.hintText,
    this.icon = Icons.person,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
<<<<<<< HEAD:lib/pages/login_page/components/input_field.dart
      child: TextFormField(
        validator: (val){
          if (val.isEmpty) {
            return hintText + " kann nicht leer sein!";
          }
          if (hintText == "Benutzernummer" && val.length != 11) {
            return "bitte die Länge überprüfen!";
          }
          if (hintText == "Benutzernummer" && !RegExp(
              "[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]").hasMatch(val)) {
            return "nur Zahlen erlaubt im Benutzernummer!";
          }
          return null;
        },
        obscureText: passwordInput,
=======
      child: TextField(
>>>>>>> parent of b0c8ee1... wip:lib/pages/login_page/components/rounded_input_field.dart
        onChanged: onChanged,
        cursorColor: kPrimaryColor,
        decoration: InputDecoration(
          icon: Icon(
            icon,
            color: kPrimaryColor,
          ),
          hintText: hintText,
        ),
      ),
    );
  }
}
