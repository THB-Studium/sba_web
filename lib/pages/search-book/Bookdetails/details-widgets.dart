import 'package:flutter/material.dart';
import 'package:sba_web/pages/components/constants.dart';

ListTile setInfoItem(String itemName, String value) {
  return ListTile(
    title: Text(itemName, style: TextStyle(color: standardColors_blue, fontWeight: FontWeight.bold)),
    subtitle: Text(value, style: TextStyle(color: Colors.black)),
  );
}