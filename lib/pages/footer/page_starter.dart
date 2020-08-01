import 'package:flutter/material.dart';
import 'package:sba_web/pages/footer/pages/favoriten_page.dart';
import 'package:sba_web/pages/footer/pages/history_page.dart';
import 'package:sba_web/pages/footer/pages/mahnungen_page.dart';
import 'package:sba_web/pages/footer/pages/nachrichten_page.dart';

class PageStarter extends StatefulWidget
{

  PageStarter({
    Key key
}) : super(key: key);

  @override
  _PageStarterState createState() => _PageStarterState();


}


class _PageStarterState extends State<PageStarter>
{
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context)
  {

    final _widgetOptions =
        [
          HistoryPage(title: 'History',),
          MahnungenPage(title: 'Mahnungen',),
          NachrichtenPage(title: 'Nachrichten',),
          FavoritenPage(title: 'Favoriten',),
        ];

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'THB sb App',

      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),

      home: Scaffold(
        backgroundColor: Colors.blue.shade50,

        body: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),

        bottomNavigationBar: Theme(
          data: Theme.of(context).copyWith(
            canvasColor: Colors.blue.shade100),

            child: BottomNavigationBar(
              type: BottomNavigationBarType.shifting,
              items: [
                BottomNavigationBarItem(title: Text("historiy"), icon: Icon(Icons.history),),
                BottomNavigationBarItem(title: Text("Mahnungen"), icon: Icon(Icons.monetization_on),),
                BottomNavigationBarItem(title: Text("Nachrichten"), icon: Icon(Icons.mail_outline),),
                BottomNavigationBarItem(title: Text("Favorite"), icon: Icon(Icons.star),),
              ],

              currentIndex: _selectedIndex,
              selectedItemColor: Colors.black,
              unselectedItemColor: Colors.grey.shade600,
              onTap: _onItemTapped,

            )
          ),
        ),
    );
  }

  void _onItemTapped(int index)
  {
    setState(() {
      _selectedIndex = index;
    });
  }
}