import 'package:flutter/material.dart';
import 'package:sba_web/pages/favories/favoriten-page.dart';
import 'package:sba_web/pages/footer/navbar-footer.dart';
import 'package:sba_web/pages/history/history-page.dart';
import 'package:sba_web/pages/live-chat/nachrichten_page.dart';
import 'package:sba_web/pages/mahnungen/mahnungen_page.dart';
import 'package:sba_web/pages/search-book/advanced-search.dart';

// about the standards colors:
const standardColorsBlue = Colors.blue;
const standardColorsWhite = Colors.white;


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