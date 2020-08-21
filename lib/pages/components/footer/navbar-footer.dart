import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/cupertino.dart';
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
                BottomNavigationBarItem(title: Text(""), icon: Icon(Icons.history, size: 30),),
                BottomNavigationBarItem(title: Text(""), icon: Icon(Icons.monetization_on, size: 30),),
                BottomNavigationBarItem(title: Text(""), icon: Icon(Icons.mail_outline, size: 30),),
                BottomNavigationBarItem(title: Text(""), icon: Icon(EvaIcons.heart, size: 30),)
              ],

              currentIndex: _selectedNavIndex,
              selectedItemColor: setCorlor(_selectedNavIndex),
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

  Color setCorlor(int id) {
    if (id == 0) {
      return Colors.black;
    }
    if (id == 1) {
      return Colors.orange;
    }
    if (id == 2) {
      return Colors.green;
    }
    if (id == 3) {
      return Colors.red;
    }
    return Colors.black;
  }

}