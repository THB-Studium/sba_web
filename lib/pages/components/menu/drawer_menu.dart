import 'package:flutter/material.dart';
import 'package:sba_web/pages/components/constants.dart';
import 'package:sba_web/pages/login/login-page.dart';
<<<<<<< HEAD
import 'package:sba_web/pages/search-book/search-widgets.dart';
=======
import 'package:url_launcher/url_launcher.dart';
>>>>>>> bb3f94b... done

Widget sbaDrawer(BuildContext context) {
  return Container(
    child: ListView(
      padding: EdgeInsets.zero,
      children: <Widget>[
        DrawerHeader(
          decoration: BoxDecoration(
            color: standardColors_blue,
          ),
          child: Container(
            alignment: Alignment.centerLeft,
            child: Column(
              children: <Widget>[
                Text(
                  'Hallo User Name',
                  style: TextStyle(
                    color: standardColors_white,
                    fontSize: 24,
                  ),
                ),
                Text(
                  'Matrikelnummer: XXXXFlora',
                  style: TextStyle(
                    color: standardColors_white,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
        ),
        ListTile(
          leading: Icon(Icons.account_circle),
          title: Text('Konto'),
        ),
        ListTile(
          leading: Icon(Icons.info),
          title: Text('Info'),
          onTap: () => _showDialog(context),
        ),
        ListTile(
          leading: Icon(Icons.settings),
          title: Text('Einstellungen'),
        ),
        ListTile(
          leading: Icon(Icons.person),
          title: Text('Über uns'),
          onTap: () {
            openMyDialog(context);
          }
        ),
        ListTile(
          leading: Icon(Icons.do_not_disturb_on),
          title: Text('Abmelden'),
          onTap: () {
            Navigator.pushReplacement(context, MaterialPageRoute(
              builder: (context) => LogIn()
            ));
          },
        ),
      ],
    ),
  );
}

<<<<<<< HEAD
openMyDialog(context) {
  showDialog(context: context,
      barrierDismissible: true,
      builder: (BuildContext context)
  {
    return AlertDialog(
      backgroundColor: Color(0xffE6E6FA),
        title: Text("Über uns"),
        contentPadding: EdgeInsets.all(6),
        content: SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(
            ),
            child: IntrinsicHeight(
              child: Column(
                children: <Widget>[
                  Container(
                    // A fixed-height child.
                    //color: Color(0xffF0FFFF),
                    height: 40,
                    alignment: Alignment.center,
                    child: const Text('Unser Team'),
                  ),
                  Expanded(
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.70,
                      width: MediaQuery.of(context).size.width * 0.90,
                      child: GridView.count(
                        childAspectRatio: 0.6,
                        padding: const EdgeInsets.only(top: 10),
                        crossAxisSpacing: 6,
                        mainAxisSpacing: 6,
                        crossAxisCount: 2,
                        children: <Widget>[
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              image: DecorationImage(
                                fit: BoxFit.fitWidth,
                                image: ExactAssetImage("assets/about_images/steve.jpeg"),
                              ),
                              color: Colors.indigo,
                            ),
                            padding: const EdgeInsets.all(8),
                            child: Stack(
                              children: <Widget>[
                                Align(
                                  alignment: Alignment.topCenter,
                                  child: Text("A. Steve Ngalamo",
                                    style: TextStyle(color: Colors.white),),
                                ),
                                Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Text("Front- und Backend",
                                    style: TextStyle(color: Colors.white),),
                                ),
                              ],
                            ),

                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              image: DecorationImage(
                                image: ExactAssetImage("assets/about_images/flora.PNG"),
                              ),
                              color: Colors.indigo,
                            ),
                            padding: const EdgeInsets.all(8),
                            child: Stack(
                              children: <Widget>[
                                Align(
                                  alignment: Alignment.topCenter,
                                  child: Text("Astride F. Goufack",
                                    style: TextStyle(color: Colors.white),),
                                ),

                                Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Text("Frontend",
                                    style: TextStyle(color: Colors.white),),
                                ),
                              ],
                            ),

                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              image: DecorationImage(
                                fit: BoxFit.fitWidth,
                                image: ExactAssetImage("assets/about_images/junior_2.jpeg"),
                              ),
                              color: Colors.indigo,
                            ),
                            padding: const EdgeInsets.all(8),
                            child: Stack(
                              children: <Widget>[
                                Align(
                                  alignment: Alignment.topCenter,
                                  child: Text("Bertin J. Wagueu",
                                    style: TextStyle(color: Colors.white),),
                                ),
                                Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Text("Frontend",
                                    style: TextStyle(color: Colors.white),),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              image: DecorationImage(
                                fit: BoxFit.fitWidth,
                                image: ExactAssetImage("assets/about_images/dorline.jpeg"),
                              ),
                              color: Colors.indigo,
                            ),
                            padding: const EdgeInsets.all(8),
                            child: Stack(
                              children: <Widget>[
                                Align(
                                  alignment: Alignment.topCenter,
                                  child: Text("Dorline F. Damesse",
                                    style: TextStyle(color: Colors.white),),
                                ),
                                Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Text("Frontend",
                                    style: TextStyle(color: Colors.white),),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              image: DecorationImage(
                                fit: BoxFit.fitWidth,
                                image: ExactAssetImage("assets/about_images/Patricia.jpeg"),
                              ),
                              color: Colors.indigo,
                            ),
                            padding: const EdgeInsets.all(8),
                            child: Stack(
                              children: <Widget>[
                                Align(
                                  alignment: Alignment.topCenter,
                                  child: Text("Therese P. Fotso",
                                    style: TextStyle(color: Colors.white),),
                                ),
                                Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Text("Frontend",
                                    style: TextStyle(color: Colors.white),),
                                ),
                              ],
                            ),

                          ),

                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        )
    );
  }
  );
}

=======
void _showDialog(context) {
  // flutter defined function
  showDialog(
    context: context,
    builder: (BuildContext context) {
      // return object of type Dialog
      return AlertDialog(
        title: new Text("THB Search Book App"),
        content: new Text("Eine Entwicklung von 5 Master-Studenten des Fachbereichs "
            "Informatik an der THB, im Rahmen eines Projekts des Faches Mobile User Experience,"
            " zur internen Unterstützung der THB-Studierenden "
            "und wissenshaftlichen Mitarbeiter beim Suchen und Ausleihen "
            "von Büchern aus dem Online Katalog der THB-Bibliothek."),
        actions: <Widget>[
          // usually buttons at the bottom of the dialog
          new FlatButton(
              child: new Text("Zur Online Katalog"),
              onPressed: () => launch('https://bibliothek.th-brandenburg.de/suchen/online-katalog/')
          ),
          new FlatButton(
            child: new Text("Abbrechen"),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}
>>>>>>> bb3f94b... done
