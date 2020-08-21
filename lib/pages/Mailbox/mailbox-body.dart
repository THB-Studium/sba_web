import 'package:flutter/material.dart';
import 'package:sba_web/models/mail_box.dart';
import 'package:sba_web/pages/Mailbox/mailbox-widgets.dart';
import 'package:sba_web/pages/components/constants.dart';

class MailboxBody extends StatefulWidget {
  @override
  _MailboxBodyState createState() => _MailboxBodyState();
}

class _MailboxBodyState extends State<MailboxBody> {
  List<Mailbox> mailboxListe = nachrichten;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: mailboxListe != null
            ? Container(
                child: ListView.builder(
                  itemBuilder: (_, int index) =>
                      listDataItem(context, mailboxListe[index]),
                  itemCount: mailboxListe.length,
                ),
              )
            : Center(
                child: Column(
                  children: [
                    SizedBox(height: 100),
                    Image.asset(assetsIcon + 'chat_logo2.png'),
                    SizedBox(height: 20),
                    Text('Dieser Mailbox ist leer!',
                        style: TextStyle(fontSize: 15, color: Colors.grey)),
                  ],
                ),
              ));
  }
}
