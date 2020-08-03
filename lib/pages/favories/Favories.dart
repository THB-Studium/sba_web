import 'package:flutter/material.dart';
import 'package:sba_web/models/items.dart';

import 'FavoriesBody.dart';

class Favories extends StatelessWidget {
  
  Future<List<Items>> fetchItems (BuildContext context) async{
  final jsonstring = await DefaultAssetBundle.of(context).loadString('assets/Items.json');
  return itemsFromJson(jsonstring);
  }

  @override
  Widget build(BuildContext context) {
    // Scaffold is a layout for the major Material Components.
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          tooltip: 'Back',
          onPressed: null,//() => Navigator.of(context).pop(),
        ),
        title: Text('Favorite'),
        centerTitle: true,
      ),
      // body is the majority of the screen.
      body: FavoriesBody(),
    );
  }
}
