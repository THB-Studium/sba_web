import 'package:flutter/material.dart';
import 'package:sba_web/pages/login/login-page.dart';

Widget sbaDrawer = Container(
 child: ListView(
    padding: EdgeInsets.zero,
    children: <Widget>[
      DrawerHeader(
        decoration: BoxDecoration(
          color: Colors.blue,
        ),
        child: Container(
          alignment: Alignment.centerLeft,
          child: Column(
            children: <Widget>[
              Text(
                'Hallo User Name',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
              Text(
                'Matrikelnummer: XXXXFlora',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ],
          ),
        ),
      ),
      ListTile(
        leading: Icon(Icons.account_circle),
        title: Text('Konto'),
      ),
      ListTile(
        leading: Icon(Icons.info),
        title: Text('Info'),
      ),
      ListTile(
        leading: Icon(Icons.settings),
        title: Text('Einstellungen'),
      ),
      ListTile(
        leading: Icon(Icons.person),
        title: Text('Über uns'),
      ),
      ListTile(
        leading: Icon(Icons.do_not_disturb_on),
        title: Text('Abmelden'),
        onTap: () {
//          Navigator.pushReplacement(null, MaterialPageRoute(
//              builder: (context) => LogIn()));
        },
      ),
    ],
  ),
);