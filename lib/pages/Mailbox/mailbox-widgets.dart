import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sba_web/pages/Mailbox/mailbox-page.dart';
import 'package:sba_web/pages/components/footer/navbar-footer.dart';
import 'package:sba_web/models/mail_box.dart';
// to build a item:

Widget listDataItem (BuildContext context, Mailbox item){
  return Center(
      child: Column(
          children: <Widget>[
            GestureDetector(
              child: ListTile(
                  leading: Icon(Icons.arrow_right),
                  title: Text.rich(
                    TextSpan(
                      text: item.mailboxName,
                      style: TextStyle(
                          color: Colors.blue, fontWeight: FontWeight.bold),
                    ),
                  ),

                  trailing: Container(
                    padding: EdgeInsets.symmetric(horizontal: 0),
                  )
              ),
            ),
            const Divider(
              color: Colors.blueGrey,
              height: 2,
              thickness: 2,
              indent: 70,
              endIndent: 1,
            )
          ]
      )
  );
}
