import 'package:flutter/material.dart';
import 'package:sba_web/pages/favories/favoriten_page.dart';
import 'package:sba_web/pages/history/history-page.dart';
import 'package:sba_web/pages/live-chat/nachrichten_page.dart';
import 'package:sba_web/pages/mahnungen/mahnungen_page.dart';
import 'package:sba_web/pages/menu/drawer_menu.dart';

class NavbarFooter extends StatefulWidget {
  @override
  _NavbarFooterState createState() => _NavbarFooterState();
}


class _NavbarFooterState extends State<NavbarFooter> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final _widgetOptions = [HistoryPage(), MahnungenPage(), NachrichtenPage(), FavoritenPage()];

    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
                BottomNavigationBarItem(title: Text("History"), icon: Icon(Icons.history),),
                BottomNavigationBarItem(title: Text("Mahnungen"), icon: Icon(Icons.monetization_on),),
                BottomNavigationBarItem(title: Text("Nachrichten"), icon: Icon(Icons.mail_outline),)
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