import 'package:flutter/material.dart';
import 'package:sba_web/models/mail_box.dart';
import 'package:sba_web/pages/Mailbox/mailbox-widgets.dart';
import 'package:flutter/material.dart';

class MailboxBody extends StatefulWidget {
  final List<Mailbox>mailboxListe;
  MailboxBody(this.mailboxListe);


  @override
  _MailboxBodyState createState() => _MailboxBodyState();
}

class _MailboxBodyState extends State<MailboxBody> {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Container(
        child: new ListView.builder(
          itemBuilder: (_,int index) => listDataItem(context, widget.mailboxListe[index]),
          itemCount: widget.mailboxListe.length,
        ) ,
      ),
    );
  }
}
