import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sba_web/models/buch.dart';
import 'package:sba_web/pages/components/footer/navbar-footer.dart';
import 'package:sba_web/pages/search-book/Bookdetails/details-page.dart';
import 'package:share/share.dart';


// to build a item:
Center listFavoriesItem (BuildContext context, Buch item) {
  return Center (
      child: Column(
          children: <Widget>[
            GestureDetector(
              child: ListTile(
                  leading: Icon(Icons.book),
                  title: Text.rich(
                    TextSpan(
                      text: item.buchTitel,
                      style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
                    ),
                  ),
                  subtitle: Text(item.buchAuthor),

                  trailing: Container(
                    padding: EdgeInsets.symmetric(horizontal: 0),
                    child: Wrap(
                        spacing: -5,
                        children: <Widget>[
                          IconButton(
                              tooltip: item.verfuegbarkeit,
                              icon: Icon(Icons.share), //mes icons
                              onPressed: () => share(context, item),
                          ) ,
                          IconButton(
                              tooltip: item.verfuegbarkeit,
                              icon: Icon(Icons.delete_forever, color: Colors.red), //mes icons
                              onPressed: (){
                                print("check_box Clicked");
                              }
                          ) ,
                          IconButton(
                              icon: Icon(Icons.arrow_forward_ios),
                              onPressed: (){
                                print('Buch titel' + item.buchTitel);
                                Navigator.push(context, MaterialPageRoute(
                                    builder: (context) => NavBarFooter(BuchDetailPage(book: item))
                                ));
                              }) ,
                        ]
                    ),
                  )
              ),
              onTap: () {
                print('Buch titel' + item.buchTitel);
                Navigator.push(context, MaterialPageRoute(
                    builder: (context) => NavBarFooter(BuchDetailPage(book: item))
                ));
              },
            ),
            const Divider(
              color: Colors.blueGrey,
              height: 2,
              thickness: 2,
              indent: 70,
              endIndent: 1,
            )
          ]
      )
  );

}

void share(BuildContext context, Buch item) {
  final RenderBox box = context.findRenderObject();
  final String text = "${item.buchTitel} - ${item.buchAuthor}";

  Share.share(
      text,
      subject: item.buchTitel,
      sharePositionOrigin: box.localToGlobal(Offset.zero) & box.size
  );
}


