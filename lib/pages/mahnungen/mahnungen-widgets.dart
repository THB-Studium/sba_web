import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sba_web/models/ausleihe.dart';
import 'package:sba_web/models/buch.dart';
import 'package:sba_web/pages/components/constants.dart';
import 'package:sba_web/models/mahnung.dart';
import 'package:sba_web/pages/components/footer/navbar-footer.dart';
// to build mahnung view:
Center listMahnungenItem (BuildContext context, Buch item) {
  return Center (
      child: Column(
          children: <Widget>[
            GestureDetector(
                onTap: () {
                  print('Buch titel' + item.titel);

                },
                child: ListTile(
                    leading: Image.asset(assetsIcon + 'book_logo.png', width: 45),
                    title: Text.rich(
                      TextSpan(
                        text: item.titel,
                        style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
                      ),
                    ),
                    subtitle: Text(item.author),

                )
            ),
            const Divider(
              color: Colors.blueGrey,
              height: 2,
              thickness: 0,
              indent: 70,
              endIndent: 10,
            )
          ]
      )
  );

}


