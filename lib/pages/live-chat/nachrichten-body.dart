import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sba_web/pages/components/constants.dart';
//import 'file:///G:/Mes%20Cours/TH%20Brandenburg/Workspace/master/mux/sba_web/lib/pages/components/constants.dart';
import 'package:sba_web/pages/components/menu/drawer_menu.dart';

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