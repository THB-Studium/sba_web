import 'package:flutter/material.dart';


class FavoriesBody extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // Scaffold is a layout for the major Material Components.
    return Scaffold(
      // body is the majority of the screen.
      body: Center(
        child: Text('This is the favory page :) <3 :D'),
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: 'Add', // used by assistive technologies
        child: Icon(Icons.add),
        onPressed: null,
      ),
    );
  }
}