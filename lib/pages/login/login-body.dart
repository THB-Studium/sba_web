import 'package:flutter/material.dart';
import 'package:sba_web/pages/footer/page_starter.dart';
import 'package:sba_web/pages/home/myHomePage.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../constants.dart';
import 'components/background.dart';
import 'components/button.dart';
import 'components/input_field.dart';
import 'components/widgets.dart';

class LoginBody extends StatefulWidget {
  @override
  _LoginBodyState createState() => _LoginBodyState();
}


class _LoginBodyState extends State<LoginBody> {

  bool isLoading = false;
//  AuthMethods authMethods = new AuthMethods();

  final formKey = GlobalKey<FormState>();
  static String benutzerNummer;
  static String kennwort;


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: isLoading ? Container(
        child: Center(child: CircularProgressIndicator()) ) :
      Background(
        child: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height - 50,
            alignment: Alignment.bottomCenter,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                SizedBox(height: size.height * 0.09),
                Form(
                  key: formKey,
                  child: Column(
                    children: <Widget>[
                      InputField(
                        hintText: "Benutzernummer",
                        icon: Icons.person,
                        passwordInput: false,
                        onChanged: (value) {
                          benutzerNummer = value;
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
                    ],
                  ),
                ),
                Container(
                  alignment: Alignment.centerRight,
                  padding: EdgeInsets.symmetric(horizontal: 60),
                  child: GestureDetector(
                    child: text("Kennwort vergessen?", 12, 0),
                    onTap: () {
                      launch(kennwortVergessenUrl);
                    },
                  ),
                ),
                SizedBox(height: size.height * 0.03),
                RoundedButton(
                  text: "LOGIN",
                  press: () {
                    sigMeIn();
                    print("benutzernummer: " + benutzerNummer);
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
                        launch(hilfeUrl);
                      },
                    ),
                    text("  |  ", 12, 0),
                    GestureDetector(
                      child: text("Datenschutz", 12, 0),
                      onTap: () {
                        launch(datenschutzUrl);
                      },
                    ),
                    text("  |  ", 12, 0),
                    GestureDetector(
                      child: text("Impressum", 12, 0),
                      onTap: () {
                        launch(impressumUrl);
                      },
                    ),
                  ],
                ),
                SizedBox(height: size.height * 0.02),
              ],
            ),
          ),
        ),
      ),
    );
  }

  sigMeIn() {
    if (formKey.currentState.validate()) {
        setState(() {
          isLoading = true;
        });
//        authMethods.signInWithBenutzerNummerAndKennwort(benutzerNummer, kennwort)
//          .then((value) => print(value));
        
        Navigator.pushReplacement(context, MaterialPageRoute(
          builder: (context) => PageStarter(),
        ));
    }
  }

  
}
