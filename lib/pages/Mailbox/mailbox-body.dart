import 'package:flutter/material.dart';
import 'package:sba_web/models/mail_box.dart';
import 'package:sba_web/pages/Mailbox/mailbox-widgets.dart';
<<<<<<< HEAD
import 'package:sba_web/pages/components/constants.dart';

class MailboxBody extends StatefulWidget {
=======
import 'package:flutter/material.dart';

class MailboxBody extends StatefulWidget {
  final List<Mailbox>mailboxListe;
  MailboxBody(this.mailboxListe);


>>>>>>> a1b1ad28fcc8c788b7c803cf9af33c05328f22ef
  @override
  _MailboxBodyState createState() => _MailboxBodyState();
}

class _MailboxBodyState extends State<MailboxBody> {
<<<<<<< HEAD
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
=======

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
>>>>>>> a1b1ad28fcc8c788b7c803cf9af33c05328f22ef
  }
}
