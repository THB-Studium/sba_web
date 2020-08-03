import 'package:flutter/material.dart';
import 'package:sba_web/pages/live-chat/nachrichten-body.dart';

class NachrichtenPage extends StatefulWidget {
  @override
  _NachrichtenPageState createState() => _NachrichtenPageState();
}

class _NachrichtenPageState extends State<NachrichtenPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Nachrichten'),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: GestureDetector(
              onTap: () {},
              child: Icon(Icons.search),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: GestureDetector(
              onTap: () {},
              child: Icon(Icons.more_vert),
            ),
          ),
        ],
      ),

      body: NachrichtenBody(),
    );
  }
}
