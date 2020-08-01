import 'package:flutter/material.dart';
import 'package:sba_web/pages/login/login-page.dart';

import 'constants.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'THB SBApp',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: kPrimaryLightColor,
        visualDensity: VisualDensity.adaptivePlatformDensity
      ),
      home: LogIn(),
    );
  }
}