import 'package:flutter/material.dart';
import 'package:sba_web/pages/login_page/components/rounded_button.dart';
import 'package:sba_web/pages/login_page/components/rounded_input_field.dart';
import 'package:sba_web/pages/login_page/components/rounded_password_field.dart';

import 'background.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("willkommen in...",
              style: TextStyle(
                fontFamily: 'Algerian',
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            ),
            SizedBox(height: size.height * 0.03),
            Text("BibSapp",
              style: TextStyle(
                fontFamily: 'Algerian',
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
              ),
            ),
            SizedBox(height: size.height * 0.09),
            RoundedInputField(
              hintText: "Benutzernummer",
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              onChanged: (value) {},
            ),
            GestureDetector(
              child: Text("                                                          "
                  "Kennwort vergessen?",
                style: TextStyle(
                  fontFamily: 'Algerian',
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                ),
              ),
              onTap: () {
//                launch('https://opac.th-brandenburg.de/InfoGuideClient.bfbsis/requestpassword.do?methodToCall=showRequestPassword');
              },
            ),
            SizedBox(height: size.height * 0.03),
            RoundedButton(
              text: "LOGIN",
              press: () {},
            ),
          ],
        ),
      ),
    );
  }
}
