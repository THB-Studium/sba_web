import 'package:flutter/material.dart';

appBar: AppBar(
title: Text('Details'),
centerTitle: true,
backgroundColor: Colors.red[600],
elevation: 0.0,
),
body: Padding(
padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
child: Column(
crossAxisAlignment: CrossAxisAlignment.start,
children: <Widget>[
Text(
'Verfasser',
style: TextStyle(
color: Colors.black,
fontSize: 20.0,
fontWeight: FontWeight.bold,
letterSpacing: 1.0,
),
),
SizedBox(height: 5.0),
Text(
'test',
style: TextStyle(
color: Colors.black,
fontSize: 16.0,
//fontWeight: FontWeight.bold,
letterSpacing: 1.0,
),
),
Text(
'Titel',
style: TextStyle(
color: Colors.black,
fontSize: 20.0,
fontWeight: FontWeight.bold,
letterSpacing: 1.0,
),
),
SizedBox(height: 5.0),
Text(
'test',
style: TextStyle(
color: Colors.black,
fontSize: 16.0,
//fontWeight: FontWeight.bold,
letterSpacing: 1.0,
),
),
Text(
'ISBN',
style: TextStyle(
color: Colors.black,
fontSize: 20.0,
fontWeight: FontWeight.bold,
letterSpacing: 1.0,
),
),
SizedBox(height: 5.0),
Text(
'test',
style: TextStyle(
color: Colors.black,
fontSize: 16.0,
//fontWeight: FontWeight.bold,
letterSpacing: 1.0,
),
),
Text(
'Jahr',
style: TextStyle(
color: Colors.black,
fontSize: 20.0,
fontWeight: FontWeight.bold,
letterSpacing: 1.0,
),
),
SizedBox(height: 5.0),
Text(
'test',
style: TextStyle(
color: Colors.black,
fontSize: 16.0,
//fontWeight: FontWeight.bold,
letterSpacing: 1.0,
),
),
],
),
),