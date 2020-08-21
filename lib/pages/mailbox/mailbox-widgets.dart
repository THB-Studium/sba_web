import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sba_web/pages/Mailbox/mail-content/mail-content-page.dart';
import 'package:sba_web/pages/components/constants.dart';
import 'package:sba_web/pages/components/footer/navbar-footer.dart';
import 'package:sba_web/models/mail_box.dart';

// to build a item:
Widget listDataItem (BuildContext context, Mailbox mail){
  return Center(
      child: Column(
          children: <Widget>[
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(
                    builder: (context) => NavBarFooter(MailContentPage(mail))
                ));
              },
              child: ListTile(
                  leading: Icon(Icons.arrow_right),
                  title: Text.rich(
                    TextSpan(
                      text: mail.titel,
                      style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
                    ),
                  ),
                  subtitle: Text(mail.senderName),

                  trailing: Container(
                    padding: EdgeInsets.symmetric(horizontal: 0),
                    child: Wrap(
                      children: [
                        Text(dateformat(mail.date))
                      ],
                    ),
                  )
              ),
            ),
            const Divider(
              color: Colors.blueGrey,
              height: 2,
              thickness: 0,
              indent: 20,
              endIndent: 10,
            )
          ]
      )
  );
}
