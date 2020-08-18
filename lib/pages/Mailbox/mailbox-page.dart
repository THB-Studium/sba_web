import 'package:flutter/material.dart';
import 'package:sba_web/models/mail_box.dart';
import 'package:sba_web/pages/components/constants.dart';
import 'package:sba_web/pages/Mailbox/mailbox-body.dart';


class MailboxPage extends StatefulWidget {
  final List<Mailbox>mailboxListe;
  MailboxPage(this.mailboxListe);

  @override
  _MailboxPageState createState() => _MailboxPageState();
}

class _MailboxPageState extends State<MailboxPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          leading: zurrueckButton(context),
          title: new Text("Nachrichten"),
          backgroundColor: standardColors_blue,
          elevation: 0.0,
        ),

        body: MailboxBody(widget.mailboxListe)
    );
  }
}