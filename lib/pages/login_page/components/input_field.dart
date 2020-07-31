import 'package:flutter/material.dart';
import 'package:sba_web/pages/login_page/components/text_field_container.dart';
import 'package:sba_web/pages/login_page/widgets.dart';

import '../../../constants.dart';

class InputField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final bool passwordInput;
  final ValueChanged<String> onChanged;

  const InputField({
    Key key,
    this.hintText,
    this.icon,
    this.passwordInput,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
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
        onChanged: onChanged,
        cursorColor: kPrimaryColor,
        decoration: InputDecoration(
          hintText: hintText,
          icon: Icon(icon, color: kPrimaryColor),
          suffixIcon: suffixIconIfPassword(passwordInput),
        ),
      ),
    );
  }
}
