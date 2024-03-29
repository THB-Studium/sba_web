import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sba_web/models/buch.dart';
import 'package:sba_web/pages/book-details/details-page.dart';
import 'package:sba_web/pages/components/constants.dart';
import 'package:sba_web/pages/components/footer/navbar-footer.dart';
import 'package:share/share.dart';


// to build a item:
Center listFavoriesItem (BuildContext context, Buch item) {
  return Center (
      child: Column(
          children: <Widget>[
            GestureDetector(
                onTap: () {
                  print('Buch titel' + item.titel);
                  Navigator.push(context, MaterialPageRoute(
                      builder: (context) => NavBarFooter(
                          BuchDetailPage(book: item, parentView: favories,)
                      )
                  ));
                },
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
                              )
                            ]
                        )
                    )
                )
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

void share(BuildContext context, Buch item) {
  final RenderBox box = context.findRenderObject();
  final String text = 'Titel: ${item.titel} - Autor: ${item.author} - ISBN: ${item.iSBN13} - Verfügbarkeit: ${item.verfuegbarkeit}';

  Share.share(
      text,
      subject: item.titel,
      sharePositionOrigin: box.localToGlobal(Offset.zero) & box.size
  );
}

