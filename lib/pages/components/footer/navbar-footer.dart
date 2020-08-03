import 'package:flutter/material.dart';
import 'file:///G:/Mes%20Cours/TH%20Brandenburg/Workspace/master/mux/sba_web/lib/pages/components/constants.dart';
import 'package:sba_web/pages/components/menu/drawer_menu.dart';

// ignore: must_be_immutable
class NavbarFooter extends StatefulWidget {
  int index;
  NavbarFooter(this.index);

  @override
  _NavbarFooterState createState() => _NavbarFooterState(index);
}


class _NavbarFooterState extends State<NavbarFooter> {
  _NavbarFooterState(this._childIndex);

  int _selectedNavIndex = 0;
  int _childIndex = 0;


  @override
  Widget build(BuildContext context) {

    return Scaffold(
        backgroundColor: Colors.blue.shade50,
        body: Center(
            child: _selectedPage(_selectedNavIndex, _childIndex)
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

              currentIndex: _selectedNavIndex,
              selectedItemColor: Colors.black,
              unselectedItemColor: Colors.grey.shade600,
              onTap: _onItemTapped,

            ),
        ),
      drawer: Drawer(child: sbaDrawer),
      );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedNavIndex = index;
      _childIndex = 0;
    });
  }

  Widget _selectedPage(int pageIndex, int childIndex) {
    print(childIndex);
    if (childIndex < 0) {
      childIndex = 0;
    }
    if (pageIndex == 0) {
      return historyOptions.elementAt(childIndex);
    }
    if (pageIndex == 1) {
      return mahnungenOptions.elementAt(childIndex);
    }
    if (pageIndex == 2) {
      return nachrichtenOptions.elementAt(childIndex);
    }
  }
}