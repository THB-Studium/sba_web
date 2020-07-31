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
      child: TextField(
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
