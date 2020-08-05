import 'package:flutter/material.dart';

class Search_results extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Search_results> {

  final List<String>listof =["reslult1","result2","reslult4","reslult5","reslult6"
    ,"reslult7","reslult8","reslult9","reslult10","reslult11","reslult12"
    ,"reslult13","reslult14","reslult15"];
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(
          "Search results",
        ),
        leading: IconButton(icon: Icon(Icons.arrow_back), onPressed: (){
          print("back Clicked");
        }) ,
        
      ),

      body: new Container(
        width: 500,
        height: 400,
        child: new ListView.builder(
            itemBuilder: (_,int index) =>listDataItem(this.listof[index]),
          itemCount: this.listof.length,
        ) ,
      ),

    );
  }
}
class listDataItem extends StatelessWidget{

  String itemName;
  listDataItem (this.itemName);
  @override
  Widget build(BuildContext context){
    return Center (
      child: Column(
        children: <Widget>[
          ListTile(
              title: new Text(itemName),
              leading: Icon(Icons.book),
              trailing: Wrap(
                  spacing: 10,
                  children: <Widget>[
                    IconButton(icon: Icon(Icons.check_box), onPressed: (){
                      print("check_box Clicked");
                    }) ,
                    IconButton(icon: Icon(Icons.arrow_forward_ios), onPressed: (){
                      print("forward Clicked");
                    }) ,
                  ]
              )
          ),
          const Divider(
            color: Colors.blueGrey,
            height: 2,
            thickness: 1,
            indent: 11,
            endIndent: 0,
          ),
        ],
      ),


    );

  }
}




 /*main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Searchresults()

    );
  }
}
class Searchresults extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('search results'),
        leading: IconButton(icon: Icon(Icons.arrow_back), onPressed: (){
          print("back Clicked");
        }) ,
    ),
      body:buildListView()
    );
  }
  ListView buildListView(){
    return ListView.builder(
        itemCount: 2000,
        itemBuilder: (_, index){
          return ListTile(
            title: Text('Mustertitel'),
            leading: Icon(Icons.book),
            trailing: Wrap(
              spacing: 10,
              children: <Widget>[
                Icon(Icons.check_circle),
                Icon(Icons.arrow_forward_ios),
              ]
            )


          );
    },
    );
  }

}
*/






