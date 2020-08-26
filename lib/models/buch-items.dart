import 'dart:math';

import 'package:sba_web/models/favory.dart';
import 'package:sba_web/models/reservierung.dart';
import 'package:sba_web/models/mahnung.dart';

import 'ausleihe.dart';
import 'buch.dart';



// about somme objects:.........................................................

/// Ausleihe
final ausleihe = [
  Ausleihe(
      new Random().nextInt(10).toString(),
      buecher[0], new DateTime.now(),
      new DateTime(2020, new DateTime.now().month + 1, new DateTime.now().day)),
  Ausleihe(
      new Random().nextInt(10).toString(),
      buecher[1],
      new DateTime.now(),
      new DateTime(2020, new DateTime.now().month + 1, new DateTime.now().day + 5)),
  Ausleihe(
      new Random().nextInt(10).toString(),
      buecher[2],
      new DateTime(2020, 7, 5), new DateTime(2020, 7, 20))
];

/// Reservierungen
final reservierungen = [
  Reservierung(
      new Random().nextInt(10).toString(),
      buecher[3], new DateTime.now(),
      new DateTime(2020, new DateTime.now().month, new DateTime.now().day + 3)),
  Reservierung(
      new Random().nextInt(10).toString(),
      buecher[4], new DateTime.now(),
      new DateTime(2020, new DateTime.now().month, new DateTime.now().day + 3)),
];


/// Favoriten
final favoriten = [
  Favory(
      new Random().nextInt(10).toString(),
      [buecher[0], buecher[1], buecher[2], buecher[3], buecher[4], buecher[5]]
  )
];
final mahnungen = [
  Mahnung(
      new Random().nextInt(10).toString(),
      [buecher[0], buecher[1], buecher[2], buecher[3], buecher[4], buecher[5]],
      0.15,
      new DateTime.now(),
      new DateTime(2020, new DateTime.now().month, new DateTime.now().day + 3)
  )
];

// about Bücher:................................................................

final buecher = [
  Buch(
      id: "1",
      titel: "Das kleine weiße Pferd",
      author: "Goudge, Elizabeth",
      iSBN10: "3-938899-46-8",
      iSBN13: "978-3-938899-46-5",
      jahr: "25.01.2009",
      verlag: "ZEIT-Verlag",
      seiten: "200",
      sprache: "Deutsch",
      buchArt: "Buch Hardcover",
      buchKategorie: "Nicht verfügbar",
      verfuegbarkeit: "ausliehbar",
      kopien: new Random().nextInt(7) + 2
  ),
  Buch(
      id: "2",
      titel: "Sundjata Keita",
      author: "Thomas Sankara",
      iSBN10: "3-938899-46-8",
      iSBN13: "978-3-938899-46-5",
      jahr: "25.01.2009",
      verlag: "ZEIT-Verlag",
      seiten: "200",
      sprache: "Deutsch",
      buchArt: "Buch Hardcover",
      buchKategorie: "Nicht verfügbar",
      verfuegbarkeit: "entliehen",
      kopien: new Random().nextInt(7) + 2
  ),
  Buch(
      id: "3",
      titel: "Bois d'ebene",
      author: "Patrice Lumumba",
      iSBN10: "3-938899-46-8",
      iSBN13: "978-3-938899-46-5",
      jahr: "25.01.2009",
      verlag: "ZEIT-Verlag",
      seiten: "200",
      sprache: "Deutsch",
      buchArt: "Buch Hardcover",
      buchKategorie: "Nicht verfügbar",
      verfuegbarkeit: "entliehen",
      kopien: new Random().nextInt(7) + 2
  ),
  Buch(
      id: "4",
      titel: "Urgence de la pensée",
      author: "Maurice Kamto",
      iSBN10: "3-938899-46-8",
      iSBN13: "978-3-938899-46-5",
      jahr: "25.01.2009",
      verlag: "ZEIT-Verlag",
      seiten: "200",
      sprache: "Deutsch",
      buchArt: "Buch Hardcover",
      buchKategorie: "Nicht verfügbar",
      verfuegbarkeit: "ausliehbar",
      kopien: new Random().nextInt(7) + 2
  ),
  Buch(
      id: "5",
      titel: "Il est temps que tu t'engages",
      author: "Wilfried Ekanga",
      iSBN10: "3-938899-46-8",
      iSBN13: "978-3-938899-46-5",
      jahr: "25.01.2009",
      verlag: "ZEIT-Verlag",
      seiten: "200",
      sprache: "Deutsch",
      buchArt: "Buch Hardcover",
      buchKategorie: "Nicht verfügbar",
      verfuegbarkeit: "ausliehbar",
      kopien: new Random().nextInt(7) + 2
  ),
  Buch(
      id: "6",
      titel: "Das kleine weiße Pferd",
      author: "Goudge, Elizabeth",
      iSBN10: "3-938899-46-8",
      iSBN13: "978-3-938899-46-5",
      jahr: "25.01.2009",
      verlag: "ZEIT-Verlag",
      seiten: "200",
      sprache: "Deutsch",
      buchArt: "Buch Hardcover",
      buchKategorie: "Nicht verfügbar",
      verfuegbarkeit: "entliehen",
      kopien: new Random().nextInt(7) + 2
  ),
  Buch(
      id: "7",
      titel: "Das kleine weiße Pferd",
      author: "Goudge, Elizabeth",
      iSBN10: "3-938899-46-8",
      iSBN13: "978-3-938899-46-5",
      jahr: "25.01.2009",
      verlag: "ZEIT-Verlag",
      seiten: "200",
      sprache: "Deutsch",
      buchArt: "Buch Hardcover",
      buchKategorie: "Nicht verfügbar",
      verfuegbarkeit: "ausliehbar",
      kopien: new Random().nextInt(7) + 2
  ),
  Buch(
      id: "8",
      titel: "Das kleine weiße Pferd",
      author: "Goudge, Elizabeth",
      iSBN10: "3-938899-46-8",
      iSBN13: "978-3-938899-46-5",
      jahr: "25.01.2009",
      verlag: "ZEIT-Verlag",
      seiten: "200",
      sprache: "Deutsch",
      buchArt: "Buch Hardcover",
      buchKategorie: "Nicht verfügbar",
      verfuegbarkeit: "ausliehbar",
      kopien: new Random().nextInt(7) + 2
  ),
  Buch(
      id: "9",
      titel: "Das kleine weiße Pferd",
      author: "Goudge, Elizabeth",
      iSBN10: "3-938899-46-8",
      iSBN13: "978-3-938899-46-5",
      jahr: "25.01.2009",
      verlag: "ZEIT-Verlag",
      seiten: "200",
      sprache: "Deutsch",
      buchArt: "Buch Hardcover",
      buchKategorie: "Nicht verfügbar",
      verfuegbarkeit: "entliehen",
      kopien: new Random().nextInt(7) + 2
  ),
  Buch(
      id: "10",
      titel: "Das kleine weiße Pferd",
      author: "Goudge, Elizabeth",
      iSBN10: "3-938899-46-8",
      iSBN13: "978-3-938899-46-5",
      jahr: "25.01.2009",
      verlag: "ZEIT-Verlag",
      seiten: "200",
      sprache: "Deutsch",
      buchArt: "Buch Hardcover",
      buchKategorie: "Nicht verfügbar",
      verfuegbarkeit: "ausliehbar",
      kopien: new Random().nextInt(7) + 2
  ),
  Buch(
      titel: "Das kleine weiße Pferd",
      author: "Goudge, Elizabeth",
      iSBN10: "3-938899-46-8",
      iSBN13: "978-3-938899-46-5",
      jahr: "25.01.2009",
      verlag: "ZEIT-Verlag",
      seiten: "200",
      sprache: "Deutsch",
      buchArt: "Buch Hardcover",
      buchKategorie: "Nicht verfügbar",
      verfuegbarkeit: "entliehen",
      kopien: new Random().nextInt(7) + 2
  ),
  Buch(
      titel: "Das kleine weiße Pferd",
      author: "Goudge, Elizabeth",
      iSBN10: "3-938899-46-8",
      iSBN13: "978-3-938899-46-5",
      jahr: "25.01.2009",
      verlag: "ZEIT-Verlag",
      seiten: "200",
      sprache: "Deutsch",
      buchArt: "Buch Hardcover",
      buchKategorie: "Nicht verfügbar",
      verfuegbarkeit: "entliehen",
      kopien: new Random().nextInt(7) + 2
  ),
  Buch(
      titel: "Das kleine weiße Pferd",
      author: "Goudge, Elizabeth",
      iSBN10: "3-938899-46-8",
      iSBN13: "978-3-938899-46-5",
      jahr: "25.01.2009",
      verlag: "ZEIT-Verlag",
      seiten: "200",
      sprache: "Deutsch",
      buchArt: "Buch Hardcover",
      buchKategorie: "Nicht verfügbar",
      verfuegbarkeit: "ausliehbar",
      kopien: new Random().nextInt(7) + 2
  ),
  Buch(
      titel: "Das kleine weiße Pferd",
      author: "Goudge, Elizabeth",
      iSBN10: "3-938899-46-8",
      iSBN13: "978-3-938899-46-5",
      jahr: "25.01.2009",
      verlag: "ZEIT-Verlag",
      seiten: "200",
      sprache: "Deutsch",
      buchArt: "Buch Hardcover",
      buchKategorie: "Nicht verfügbar",
      verfuegbarkeit: "ausliehbar",
      kopien: new Random().nextInt(7) + 2
  ),
  Buch(
      titel: "Das kleine weiße Pferd",
      author: "Goudge, Elizabeth",
      iSBN10: "3-938899-46-8",
      iSBN13: "978-3-938899-46-5",
      jahr: "25.01.2009",
      verlag: "ZEIT-Verlag",
      seiten: "200",
      sprache: "Deutsch",
      buchArt: "Buch Hardcover",
      buchKategorie: "Nicht verfügbar",
      verfuegbarkeit: "ausliehbar",
      kopien: new Random().nextInt(7) + 2
  ),
  Buch(
      titel: "Das kleine weiße Pferd",
      author: "Goudge, Elizabeth",
      iSBN10: "3-938899-46-8",
      iSBN13: "978-3-938899-46-5",
      jahr: "25.01.2009",
      verlag: "ZEIT-Verlag",
      seiten: "200",
      sprache: "Deutsch",
      buchArt: "Buch Hardcover",
      buchKategorie: "Nicht verfügbar",
      verfuegbarkeit: "ausliehbar",
      kopien: new Random().nextInt(7) + 2
  ),
  Buch(
      titel: "Das kleine weiße Pferd",
      author: "Goudge, Elizabeth",
      iSBN10: "3-938899-46-8",
      iSBN13: "978-3-938899-46-5",
      jahr: "25.01.2009",
      verlag: "ZEIT-Verlag",
      seiten: "200",
      sprache: "Deutsch",
      buchArt: "Buch Hardcover",
      buchKategorie: "Nicht verfügbar",
      verfuegbarkeit: "entliehen",
      kopien: new Random().nextInt(7) + 2
  ),
  Buch(
      titel: "Das kleine weiße Pferd",
      author: "Goudge, Elizabeth",
      iSBN10: "3-938899-46-8",
      iSBN13: "978-3-938899-46-5",
      jahr: "25.01.2009",
      verlag: "ZEIT-Verlag",
      seiten: "200",
      sprache: "Deutsch",
      buchArt: "Buch Hardcover",
      buchKategorie: "Nicht verfügbar",
      verfuegbarkeit: "ausliehbar",
      kopien: new Random().nextInt(7) + 2
  ),
  Buch(
      titel: "Das kleine weiße Pferd",
      author: "Goudge, Elizabeth",
      iSBN10: "3-938899-46-8",
      iSBN13: "978-3-938899-46-5",
      jahr: "25.01.2009",
      verlag: "ZEIT-Verlag",
      seiten: "200",
      sprache: "Deutsch",
      buchArt: "Buch Hardcover",
      buchKategorie: "Nicht verfügbar",
      verfuegbarkeit: "ausliehbar",
      kopien: new Random().nextInt(7) + 2
  ),
  Buch(
      titel: "Das kleine weiße Pferd",
      author: "Goudge, Elizabeth",
      iSBN10: "3-938899-46-8",
      iSBN13: "978-3-938899-46-5",
      jahr: "25.01.2009",
      verlag: "ZEIT-Verlag",
      seiten: "200",
      sprache: "Deutsch",
      buchArt: "Buch Hardcover",
      buchKategorie: "Nicht verfügbar",
      verfuegbarkeit: "ausliehbar",
      kopien: new Random().nextInt(7) + 2
  ),
  Buch(
      titel: "Das kleine weiße Pferd",
      author: "Goudge, Elizabeth",
      iSBN10: "3-938899-46-8",
      iSBN13: "978-3-938899-46-5",
      jahr: "25.01.2009",
      verlag: "ZEIT-Verlag",
      seiten: "200",
      sprache: "Deutsch",
      buchArt: "Buch Hardcover",
      buchKategorie: "Nicht verfügbar",
      verfuegbarkeit: "entliehen",
      kopien: new Random().nextInt(7) + 2
  ),
  Buch(
      titel: "Das kleine weiße Pferd",
      author: "Goudge, Elizabeth",
      iSBN10: "3-938899-46-8",
      iSBN13: "978-3-938899-46-5",
      jahr: "25.01.2009",
      verlag: "ZEIT-Verlag",
      seiten: "200",
      sprache: "Deutsch",
      buchArt: "Buch Hardcover",
      buchKategorie: "Nicht verfügbar",
      verfuegbarkeit: "ausliehbar",
      kopien: new Random().nextInt(7) + 2
  ),
  Buch(
      titel: "Das kleine weiße Pferd",
      author: "Goudge, Elizabeth",
      iSBN10: "3-938899-46-8",
      iSBN13: "978-3-938899-46-5",
      jahr: "25.01.2009",
      verlag: "ZEIT-Verlag",
      seiten: "200",
      sprache: "Deutsch",
      buchArt: "Buch Hardcover",
      buchKategorie: "Nicht verfügbar",
      verfuegbarkeit: "ausliehbar",
      kopien: new Random().nextInt(7) + 2
  ),
  Buch(
      titel: "Das kleine weiße Pferd",
      author: "Goudge, Elizabeth",
      iSBN10: "3-938899-46-8",
      iSBN13: "978-3-938899-46-5",
      jahr: "25.01.2009",
      verlag: "ZEIT-Verlag",
      seiten: "200",
      sprache: "Deutsch",
      buchArt: "Buch Hardcover",
      buchKategorie: "Nicht verfügbar",
      verfuegbarkeit: "ausliehbar",
      kopien: new Random().nextInt(7) + 2
  ),
  Buch(
      titel: "Das kleine weiße Pferd",
      author: "Goudge, Elizabeth",
      iSBN10: "3-938899-46-8",
      iSBN13: "978-3-938899-46-5",
      jahr: "25.01.2009",
      verlag: "ZEIT-Verlag",
      seiten: "200",
      sprache: "Deutsch",
      buchArt: "Buch Hardcover",
      buchKategorie: "Nicht verfügbar",
      verfuegbarkeit: "entliehen",
      kopien: new Random().nextInt(7) + 2
  ),
  Buch(
      titel: "Das kleine weiße Pferd",
      author: "Goudge, Elizabeth",
      iSBN10: "3-938899-46-8",
      iSBN13: "978-3-938899-46-5",
      jahr: "25.01.2009",
      verlag: "ZEIT-Verlag",
      seiten: "200",
      sprache: "Deutsch",
      buchArt: "Buch Hardcover",
      buchKategorie: "Nicht verfügbar",
      verfuegbarkeit: "ausliehbar",
      kopien: new Random().nextInt(7) + 2
  ),
  Buch(
      titel: "Das kleine weiße Pferd",
      author: "Goudge, Elizabeth",
      iSBN10: "3-938899-46-8",
      iSBN13: "978-3-938899-46-5",
      jahr: "25.01.2009",
      verlag: "ZEIT-Verlag",
      seiten: "200",
      sprache: "Deutsch",
      buchArt: "Buch Hardcover",
      buchKategorie: "Nicht verfügbar",
      verfuegbarkeit: "ausliehbar",
      kopien: new Random().nextInt(7) + 2
  ),
  Buch(
      titel: "Das kleine weiße Pferd",
      author: "Goudge, Elizabeth",
      iSBN10: "3-938899-46-8",
      iSBN13: "978-3-938899-46-5",
      jahr: "25.01.2009",
      verlag: "ZEIT-Verlag",
      seiten: "200",
      sprache: "Deutsch",
      buchArt: "Buch Hardcover",
      buchKategorie: "Nicht verfügbar",
      verfuegbarkeit: "ausliehbar",
      kopien: new Random().nextInt(7) + 2
  ),
  Buch(
      titel: "Das kleine weiße Pferd",
      author: "Goudge, Elizabeth",
      iSBN10: "3-938899-46-8",
      iSBN13: "978-3-938899-46-5",
      jahr: "25.01.2009",
      verlag: "ZEIT-Verlag",
      seiten: "200",
      sprache: "Deutsch",
      buchArt: "Buch Hardcover",
      buchKategorie: "Nicht verfügbar",
      verfuegbarkeit: "entliehen",
      kopien: new Random().nextInt(7) + 2
  ),
  Buch(
      titel: "Das kleine weiße Pferd",
      author: "Goudge, Elizabeth",
      iSBN10: "3-938899-46-8",
      iSBN13: "978-3-938899-46-5",
      jahr: "25.01.2009",
      verlag: "ZEIT-Verlag",
      seiten: "200",
      sprache: "Deutsch",
      buchArt: "Buch Hardcover",
      buchKategorie: "Nicht verfügbar",
      verfuegbarkeit: "entliehen",
      kopien: new Random().nextInt(7) + 2
  ),
  Buch(
      titel: "Das kleine weiße Pferd",
      author: "Goudge, Elizabeth",
      iSBN10: "3-938899-46-8",
      iSBN13: "978-3-938899-46-5",
      jahr: "25.01.2009",
      verlag: "ZEIT-Verlag",
      seiten: "200",
      sprache: "Deutsch",
      buchArt: "Buch Hardcover",
      buchKategorie: "Nicht verfügbar",
      verfuegbarkeit: "ausliehbar",
      kopien: new Random().nextInt(7) + 2
  ),
  Buch(
      titel: "Das kleine weiße Pferd",
      author: "Goudge, Elizabeth",
      iSBN10: "3-938899-46-8",
      iSBN13: "978-3-938899-46-5",
      jahr: "25.01.2009",
      verlag: "ZEIT-Verlag",
      seiten: "200",
      sprache: "Deutsch",
      buchArt: "Buch Hardcover",
      buchKategorie: "Nicht verfügbar",
      verfuegbarkeit: "entliehen",
      kopien: new Random().nextInt(7) + 2
  ),
  Buch(
      titel: "Das kleine weiße Pferd",
      author: "Goudge, Elizabeth",
      iSBN10: "3-938899-46-8",
      iSBN13: "978-3-938899-46-5",
      jahr: "25.01.2009",
      verlag: "ZEIT-Verlag",
      seiten: "200",
      sprache: "Deutsch",
      buchArt: "Buch Hardcover",
      buchKategorie: "Nicht verfügbar",
      verfuegbarkeit: "ausliehbar",
      kopien: new Random().nextInt(7) + 2
  ),
  Buch(
      titel: "Das kleine weiße Pferd",
      author: "Goudge, Elizabeth",
      iSBN10: "3-938899-46-8",
      iSBN13: "978-3-938899-46-5",
      jahr: "25.01.2009",
      verlag: "ZEIT-Verlag",
      seiten: "200",
      sprache: "Deutsch",
      buchArt: "Buch Hardcover",
      buchKategorie: "Nicht verfügbar",
      verfuegbarkeit: "ausliehbar",
      kopien: new Random().nextInt(7) + 2
  ),
  Buch(
      titel: "Das kleine weiße Pferd",
      author: "Goudge, Elizabeth",
      iSBN10: "3-938899-46-8",
      iSBN13: "978-3-938899-46-5",
      jahr: "25.01.2009",
      verlag: "ZEIT-Verlag",
      seiten: "200",
      sprache: "Deutsch",
      buchArt: "Buch Hardcover",
      buchKategorie: "Nicht verfügbar",
      verfuegbarkeit: "ausliehbar",
      kopien: new Random().nextInt(7) + 2
  ),
  Buch(
      titel: "Das kleine weiße Pferd",
      author: "Goudge, Elizabeth",
      iSBN10: "3-938899-46-8",
      iSBN13: "978-3-938899-46-5",
      jahr: "25.01.2009",
      verlag: "ZEIT-Verlag",
      seiten: "200",
      sprache: "Deutsch",
      buchArt: "Buch Hardcover",
      buchKategorie: "Nicht verfügbar",
      verfuegbarkeit: "entliehen",
      kopien: new Random().nextInt(7) + 2
  )
];
