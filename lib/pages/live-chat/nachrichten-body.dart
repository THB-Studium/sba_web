import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sba_web/pages/components/menu/drawer_menu.dart';

import '../components/constants.dart';

class NachrichtenBody extends StatefulWidget {
  @override
  _NachrichtenBodyState createState() => _NachrichtenBodyState();
}

class _NachrichtenBodyState extends State<NachrichtenBody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: standardColors_white,
        ),
      ),
      drawer: Drawer(child: sbaDrawer(context)),
    );
  }
}