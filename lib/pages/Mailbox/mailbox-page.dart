import 'package:flutter/material.dart';
import 'package:sba_web/pages/components/menu/drawer_menu.dart';

import 'mailbox-body.dart';


class MailboxPage extends StatefulWidget {
  @override
  _MailboxPageState createState() => _MailboxPageState();
}

class _MailboxPageState extends State<MailboxPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(child: sbaDrawer(context)),
        appBar: AppBar(
          title: Text('Mailbox')
        ),

        body: MailboxBody()
    );
  }
}