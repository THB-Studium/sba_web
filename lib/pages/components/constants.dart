import 'package:flutter/material.dart';
import 'package:sba_web/pages/components/footer/navbar-footer.dart';
import 'package:intl/intl.dart';


// about the standards colors:
const standardColors_blue = Colors.blue;
const standardColors_white = Colors.white70;

// about assets:
final String assetsImage = "assets/images/";
final String assetsIcon = "assets/icons/";
final String assetsFont = "assets/fonts/";
final String assetsDummyDb = "assets/dummy_db/";


// about hyperlink paths:
final String kennwortVergessenUrl = 'https://opac.th-brandenburg.de/InfoGuideClient.bfbsis/requestpassword.do?methodToCall=showRequestPassword';
final String impressumUrl = 'https://www.th-brandenburg.de/impressum/';
final String datenschutzUrl = 'https://www.th-brandenburg.de/datenschutz/?S=0%25253F%253F';
final String hilfeUrl = 'https://opac.th-brandenburg.de/InfoGuideClient.bfbsis/jsp/common/metaHelp.jsp?helpfile=rech_einfach.html';

// about the book status:
final String ausliehbar = 'ausliehbar';
final String entliehen = 'ausliehbar';



/// loading circle icon by waiting of the loading of a page:
Column loading() {
  return Column(
    children: <Widget>[
      SizedBox(height: 200),
      setImage("bibsapp_logo.png", 150, 200, null),
      SizedBox(height: 20),
      CircularProgressIndicator(),
    ],
  );
}

/// to choose and position a logo/image:
Positioned setImage(String imgName, double size, double position, Color color) {
  return Positioned(
    top: position,
    child: Image.asset(
      assetsImage + imgName,
      width: size,
      color: color,
    ),
  );
}

/// for the actions buttons:
Padding actionButton(Widget childPage, IconData icon, BuildContext context) {
  return Padding(
    padding: EdgeInsets.only(right: 10.0),
    child:
    GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(
            builder: (context) => NavBarFooter(childPage))
        );
      },
      child: Icon(icon),
    ),
  );
}


/// about the Zurrück button:
IconButton zurrueckButton(BuildContext context) {
  return IconButton(
    icon: Icon(Icons.arrow_back_ios, color: Colors.white70),
    tooltip: 'Zurrück',
    onPressed: () => Navigator.of(context).pop(),
  );
}

/// to format date:
String dateformat(DateTime date){
  final DateFormat formatter = DateFormat('dd-MM-yyyy');
  return formatter.format(date);
}

/// to set the color border of each item:
Border borderColor (double width, Color color) {
  return Border(
    top: BorderSide(width: width, color: color),
    bottom: BorderSide(width: width, color: color),
    right: BorderSide(width: width, color: color),
    left: BorderSide(width: width, color: color),
  );
}