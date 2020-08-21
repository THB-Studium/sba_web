import 'package:flutter/material.dart';
import 'package:sba_web/models/mail_box.dart';
import 'package:sba_web/pages/components/constants.dart';

class MailContentBody extends StatefulWidget {
  final Mailbox mail;

  MailContentBody(this.mail);

  @override
  _MailContentBodyState createState() => _MailContentBodyState();
}

class _MailContentBodyState extends State<MailContentBody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: widget.mail != null
            ? Container(
                  // le contenu d'une conversation doit etre implementer ici @Steve
              )
            : Center(
              child: Column(
                  children: [
                    SizedBox(height: 100),
                    Image.asset(assetsIcon + 'chat_logo1.png'),
                    SizedBox(height: 20),
                    Text('Dieses Gespräch ist leer!', style: TextStyle(fontSize: 15, color: Colors.grey)),
                  ],
                ),
            )
    );
  }
}
