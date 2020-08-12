import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sba_web/models/buch-for-histories.dart';

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
            children: _reservierungen.map(buildOneReservierung).toList() +
                _ausleihe.map(buildOneAusleihe).toList(),
          ),
        ),
      )
    );
  }
}