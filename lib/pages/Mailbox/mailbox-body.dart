import 'package:flutter/material.dart';
import 'package:sba_web/models/mail_box.dart';
import 'package:sba_web/pages/Mailbox/mailbox-widgets.dart';
import 'package:flutter/material.dart';

class MailboxBody extends StatefulWidget {
  @override
  _MailboxBodyState createState() => _MailboxBodyState();
}

class _MailboxBodyState extends State<MailboxBody> {
  List<Mailbox> mailboxListe = nachrichten;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Container(
        child: new ListView.builder(
          itemBuilder: (_,int index) => listDataItem(context, mailboxListe[index]),
          itemCount: mailboxListe.length,
        ) ,
      ),
    );
  }
}
