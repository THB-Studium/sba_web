import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:sba_web/pages/Mailbox/mail-content/mail-content-page.dart';
import 'package:sba_web/pages/Mailbox/mailbox-page.dart';
import 'package:sba_web/pages/components/constants.dart';
=======
import 'package:sba_web/pages/Mailbox/mailbox-page.dart';
>>>>>>> a1b1ad28fcc8c788b7c803cf9af33c05328f22ef
import 'package:sba_web/pages/components/footer/navbar-footer.dart';
import 'package:sba_web/models/mail_box.dart';
// to build a item:

<<<<<<< HEAD
Widget listDataItem (BuildContext context, Mailbox mail){
=======
Widget listDataItem (BuildContext context, Mailbox item){
>>>>>>> a1b1ad28fcc8c788b7c803cf9af33c05328f22ef
  return Center(
      child: Column(
          children: <Widget>[
            GestureDetector(
<<<<<<< HEAD
              onTap: (){
                Navigator.push(context, MaterialPageRoute(
                    builder: (context) => NavBarFooter(MailContentPage(mail))
                ));
              },
=======
>>>>>>> a1b1ad28fcc8c788b7c803cf9af33c05328f22ef
              child: ListTile(
                  leading: Icon(Icons.arrow_right),
                  title: Text.rich(
                    TextSpan(
<<<<<<< HEAD
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
=======
                      text: item.mailboxName,
                      style: TextStyle(
                          color: Colors.blue, fontWeight: FontWeight.bold),
                    ),
                  ),

                  trailing: Container(
                    padding: EdgeInsets.symmetric(horizontal: 0),
>>>>>>> a1b1ad28fcc8c788b7c803cf9af33c05328f22ef
                  )
              ),
            ),
            const Divider(
              color: Colors.blueGrey,
              height: 2,
<<<<<<< HEAD
              thickness: 0,
              indent: 20,
              endIndent: 10,
=======
              thickness: 2,
              indent: 70,
              endIndent: 1,
>>>>>>> a1b1ad28fcc8c788b7c803cf9af33c05328f22ef
            )
          ]
      )
  );
}
