import 'package:flutter/material.dart';
import 'package:sba_web/pages/components/footer/navbar-footer.dart';
import 'package:sba_web/pages/favories/favoriten-page.dart';
import 'package:sba_web/pages/history/history-page.dart';
import 'package:sba_web/pages/live-chat/nachrichten-page.dart';
import 'package:sba_web/pages/mahnungen/mahnungen-page.dart';
import 'package:sba_web/pages/search-book/search-page.dart';

// about the standards colors:
const standardColors_blue = Colors.blue;
const standardColors_white = Colors.white70;


// about assets:
const assetsImage = "assets/images/";
const assetsIcon = "assets/icons/";
const assetsFont = "assets/fonts/";
const assetsDummyDb = "assets/dummy_db/";


// about hyperlink paths:
final String kennwortVergessenUrl = 'https://opac.th-brandenburg.de/InfoGuideClient.bfbsis/requestpassword.do?methodToCall=showRequestPassword';
final String impressumUrl = 'https://www.th-brandenburg.de/impressum/';
final String datenschutzUrl = 'https://www.th-brandenburg.de/datenschutz/?S=0%25253F%253F';
final String hilfeUrl = 'https://opac.th-brandenburg.de/InfoGuideClient.bfbsis/jsp/common/metaHelp.jsp?helpfile=rech_einfach.html';


// Navbar pages elements:
final historyOptions = [HistoryPage(), AdvancedSearch(), FavoritenPage()];
final mahnungenOptions = [MahnungenPage()];
final nachrichtenOptions = [NachrichtenPage()];


// for the actions buttons:
Padding actionButton(int childIndex, IconData icon, BuildContext context) {
  return Padding(
    padding: EdgeInsets.only(right: 10.0),
    child:
    GestureDetector(
      onTap: () {
        print('index = ' + childIndex.toString());
        Navigator.push(context, MaterialPageRoute(
            builder: (context) => NavbarFooter(childIndex) ));
      },
      child: Icon(icon),
    ),
  );
}

// Zurrück button:
IconButton zurrueckButton(BuildContext context) {
  return IconButton(
    icon: Icon(Icons.arrow_back_ios, color: Colors.white70),
    tooltip: 'Zurrueck',
    onPressed: () => Navigator.of(context).pop(),
  );
}