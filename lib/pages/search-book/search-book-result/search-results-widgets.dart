import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sba_web/models/buch.dart';
import 'package:sba_web/pages/components/footer/navbar-footer.dart';
import 'package:sba_web/pages/search-book/Bookdetails/details-page.dart';

// to build a item:
  Widget listDataItem (BuildContext context, Buch item) {
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
                            icon: setIcon(item.verfuegbarkeit),
                            onPressed: (){
                              print("check_box Clicked");
                            }
                        ) ,
                        IconButton(
                            icon: Icon(Icons.arrow_forward_ios),
                            onPressed: (){
                          print("forward Clicked");
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

  Icon setIcon (String status) {
    if (status == 'ausliehbar') {
      return Icon(Icons.check_circle_outline, color: Colors.green);
    }
    if (status == 'entliehen') {
      return Icon(Icons.do_not_disturb_alt, color: Colors.red);
    }
  }
