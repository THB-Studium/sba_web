import 'package:flutter/material.dart';
import 'package:sba_web/models/mail_box.dart';
import 'package:sba_web/pages/components/constants.dart';

import 'mail-content-body.dart';


class MailContentPage extends StatefulWidget {
  final Mailbox mail;
  MailContentPage(this.mail);

  @override
  _MailContentPageState createState() => _MailContentPageState();
}

class _MailContentPageState extends State<MailContentPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: zurrueckButton(context),
          title: Text('Mail content')
        ),

        body: MailContentBody(widget.mail)
    );
  }
}