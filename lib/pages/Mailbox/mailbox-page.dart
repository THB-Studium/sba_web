import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:sba_web/pages/components/menu/drawer_menu.dart';

import 'mailbox-body.dart';


class MailboxPage extends StatefulWidget {
=======
import 'package:sba_web/models/mail_box.dart';
import 'package:sba_web/pages/components/constants.dart';
import 'package:sba_web/pages/Mailbox/mailbox-body.dart';


class MailboxPage extends StatefulWidget {
  final List<Mailbox>mailboxListe;
  MailboxPage(this.mailboxListe);

>>>>>>> a1b1ad28fcc8c788b7c803cf9af33c05328f22ef
  @override
  _MailboxPageState createState() => _MailboxPageState();
}

class _MailboxPageState extends State<MailboxPage> {
<<<<<<< HEAD

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(child: sbaDrawer(context)),
        appBar: AppBar(
          title: Text('Mailbox')
        ),

        body: MailboxBody()
=======
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
>>>>>>> a1b1ad28fcc8c788b7c803cf9af33c05328f22ef
    );
  }
}