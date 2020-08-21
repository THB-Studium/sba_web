import 'package:flutter/material.dart';
import 'package:sba_web/pages/login/login-page.dart';
//import 'package:sba_web/pages/search-book/search-book-result/search-results-page.dart';
import  'package:sba_web/pages/Mailbox/mailbox-page.dart';

import 'pages/components/constants.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'THB SBApp',
      theme: ThemeData(
        primaryColor: standardColors_blue,
        scaffoldBackgroundColor: standardColors_white,
        visualDensity: VisualDensity.adaptivePlatformDensity
      ),
      home: LogIn()

    );
  }
}