import 'package:flutter/material.dart';
import 'package:sba_web/pages/components/menu/drawer_menu.dart';
import 'package:sba_web/pages/favories/favories-page.dart';
import 'package:sba_web/pages/history/history-page.dart';
import 'package:sba_web/pages/live-chat/nachrichten-page.dart';
import 'package:sba_web/pages/mahnungen/mahnungen-page.dart';


// ignore: must_be_immutable
class NavBarFooter extends StatefulWidget {
  Widget childPage;
  NavBarFooter(this.childPage);

  @override
  _NavBarFooterState createState() => _NavBarFooterState();
}


class _NavBarFooterState extends State<NavBarFooter> {
  final navBarPages = [HistoryPage(), MahnungenPage(), NachrichtenPage(), FavoritenPage()];
  int _selectedNavIndex = 0;


  @override
  Widget build(BuildContext context) {

    return Scaffold(
        backgroundColor: Colors.blue.shade50,
        body: Center(
            child: widget.childPage != null ?
            widget.childPage : navBarPages.elementAt(_selectedNavIndex),
        ),

        bottomNavigationBar: Theme(
            data: Theme.of(context).copyWith(
                canvasColor: Colors.blue.shade100),

            child: BottomNavigationBar(
              type: BottomNavigationBarType.shifting,
              items: [
                BottomNavigationBarItem(title: Text("History"), icon: Icon(Icons.history),),
                BottomNavigationBarItem(title: Text("Mahnungen"), icon: Icon(Icons.monetization_on),),
                BottomNavigationBarItem(title: Text("Nachrichten"), icon: Icon(Icons.mail_outline),),
                BottomNavigationBarItem(title: Text("Favoriten"), icon: Icon(Icons.star_half),)
              ],

              currentIndex: _selectedNavIndex,
              selectedItemColor: Colors.black,
              unselectedItemColor: Colors.grey.shade600,
              onTap: _onItemTapped,

            ),
        ),
      drawer: Drawer(child: sbaDrawer(context)),
      );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedNavIndex = index;
      widget.childPage = null;
    });
  }

}