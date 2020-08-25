import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sba_web/models/buch.dart';
import 'package:sba_web/pages/book-details/details-page.dart';
import 'package:sba_web/pages/components/constants.dart';
import 'package:sba_web/pages/components/footer/navbar-footer.dart';

// to build a item:
Center listDataItem (BuildContext context, Buch item) {
  return Center (
      child: Column(
          children: <Widget>[
            GestureDetector(
              child: ListTile(
                  leading: Image.asset(assetsIcon + 'book_logo.png', width: 45),
                  title: Text.rich(
                    TextSpan(
                      text: item.titel,
                      style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
                    ),
                  ),
                  subtitle: Text(item.author),

                  trailing: Container(
                    padding: EdgeInsets.all(0),
                    child: Wrap(
                        spacing: -5,
                        children: <Widget>[
                          IconButton(
                              tooltip: item.verfuegbarkeit,
                              icon: setIcon(item.verfuegbarkeit),
                              onPressed: (){
                                print("check_box Clicked");
                              }
                          ) ,
                          IconButton(
                              icon: Icon(Icons.arrow_forward_ios, size: 20),
                              onPressed: (){
                                print("forward Clicked");
                              }) ,
                        ]
                    ),
                  )
              ),
              onTap: () {
                print('Buch titel' + item.titel);
                Navigator.push(context, MaterialPageRoute(
                    builder: (context) => NavBarFooter(BuchDetailPage(book: item, parentView: searchResult))
                ));
              },
            ),
            const Divider(
              color: Colors.blueGrey,
              height: 2,
              thickness: 0,
              indent: 70,
              endIndent: 10,
            )
          ]
      )
  );

}

Icon setIcon (String status) {
  if (status == 'ausliehbar') {
    return Icon(Icons.check_circle_outline, color: Colors.green, size: 20);
  } else
  if (status == 'entliehen') {
    return Icon(Icons.do_not_disturb_alt, color: Colors.red, size: 20);
  }
  return null;
}