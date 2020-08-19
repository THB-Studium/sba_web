import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sba_web/models/ausleihe.dart';
import 'package:sba_web/models/buch-items.dart';
import 'package:sba_web/models/reservierung.dart';

import '../components/constants.dart';
import 'history-widgets.dart';

class HistoriesBody extends StatefulWidget {
  @override
  _HistoriesBodyState createState() => _HistoriesBodyState();

}

class _HistoriesBodyState extends State<HistoriesBody> {
  List<Reservierung> _reservierungen = reservierungen;
  List<Ausleihe> _ausleihe = ausleihe;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: standardColors_white,
          child: ListView(
            children: _reservierungen.map((reservierung) => buildOneReservierung(context, reservierung)).toList() +
                _ausleihe.map((ausleihe) => buildOneAusleihe(context, ausleihe)).toList(),
          ),
        ),
      )
    );
  }
}