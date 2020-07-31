import 'package:flutter/material.dart';
import 'package:sba_web/pages/login_page/widgets.dart';
import 'package:url_launcher/url_launcher.dart';

import 'components/background.dart';
import 'components/button.dart';
import 'components/input_field.dart';

class LoginBody extends StatefulWidget {
  @override
  _LoginBodyState createState() => _LoginBodyState();
}


class _LoginBodyState extends State<LoginBody> {
  final String _kennwortVergessenUrl =
      'https://opac.th-brandenburg.de/InfoGuideClient.bfbsis/requestpassword.do?methodToCall=showRequestPassword';
  final String _impressumUrl = 'https://www.th-brandenburg.de/impressum/';
  final String _datenschutzUrl =
      'https://www.th-brandenburg.de/datenschutz/?S=0%25253F%253F';
  final String _hilfeUrl =
      'https://opac.th-brandenburg.de/InfoGuideClient.bfbsis/jsp/common/metaHelp.jsp?helpfile=rech_einfach.html';

  static String benutzernummer;
  static String kennwort;


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height - 50,
          alignment: Alignment.bottomCenter,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              SizedBox(height: size.height * 0.09),
              InputField(
                hintText: "Benutzernummer",
                icon: Icons.person,
                passwordInput: false,
                onChanged: (value) {
                  benutzernummer = value;
                },
              ),
              InputField(
                hintText: "Kennwort",
                icon: Icons.lock,
                passwordInput: true,
                onChanged: (value) {
                  kennwort = value;
                },
              ),
              Container(
                alignment: Alignment.centerRight,
                padding: EdgeInsets.symmetric(horizontal: 60),
                child: GestureDetector(
                  child: text("Kennwort vergessen?", 12, 0),
                  onTap: () {
                    launch(_kennwortVergessenUrl);
                  },
                ),
              ),
              SizedBox(height: size.height * 0.03),
              RoundedButton(
                text: "LOGIN",
                press: () {
                  print("benutzernummer: " + benutzernummer);
                  print("kennwort: " + kennwort);
                },
              ),
              SizedBox(height: size.height * 0.13),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  GestureDetector(
                    child: text("Hilfe", 12, 0),
                    onTap: () {
                      launch(_hilfeUrl);
                    },
                  ),
                  text("  |  ", 12, 0),
                  GestureDetector(
                    child: text("Datenschutz", 12, 0),
                    onTap: () {
                      launch(_datenschutzUrl);
                    },
                  ),
                  text("  |  ", 12, 0),
                  GestureDetector(
                    child: text("Impressum", 12, 0),
                    onTap: () {
                      launch(_impressumUrl);
                    },
                  ),
                ],
              ),
              SizedBox(height: size.height * 0.02),
            ],
          ),
        ),
      ),
    );
  }
}
