import 'package:sba_web/models/reservierung.dart';

import 'ausleihe.dart';
import 'buch.dart';

final ausleihe = [
  Ausleihe("1", buecher[0], new DateTime.now(),
      new DateTime(2020, new DateTime.now().month + 1, new DateTime.now().day)),
  Ausleihe(
      "1",
      buecher[1],
      new DateTime.now(),
      new DateTime(
          2020, new DateTime.now().month + 1, new DateTime.now().day + 5)),
  Ausleihe("1", buecher[2], new DateTime(2020, 7, 5), new DateTime(2020, 7, 20))
];

final reservierungen = [
  Reservierung("1", buecher[3], new DateTime.now(),
      new DateTime(2020, new DateTime.now().month, new DateTime.now().day + 3)),
  Reservierung("1", buecher[4], new DateTime.now(),
      new DateTime(2020, new DateTime.now().month, new DateTime.now().day + 3)),
];

final buecher = [
  Buch(
      buchId: "1",
      buchTitel: "Das kleine weiße Pferd",
      buchAuthor: "Goudge, Elizabeth",
      buchISBN10: "3-938899-46-8",
      buchISBN13: "978-3-938899-46-5",
      buchJahr: "25.01.2009",
      buchVerlag: "ZEIT-Verlag",
      buchSeiten: "200",
      buchSprache: "Deutsch",
      buchArt: "Buch Hardcover",
      buchKategorie: "Nicht verfügbar",
      verfuegbarkeit: "ausliehbar"),
  Buch(
      buchId: "2",
      buchTitel: "Sundjata Keita",
      buchAuthor: "Thomas Sankara",
      buchISBN10: "3-938899-46-8",
      buchISBN13: "978-3-938899-46-5",
      buchJahr: "25.01.2009",
      buchVerlag: "ZEIT-Verlag",
      buchSeiten: "200",
      buchSprache: "Deutsch",
      buchArt: "Buch Hardcover",
      buchKategorie: "Nicht verfügbar",
      verfuegbarkeit: "entliehen"),
  Buch(
      buchId: "3",
      buchTitel: "Bois d'ebene",
      buchAuthor: "Patrice Lumumba",
      buchISBN10: "3-938899-46-8",
      buchISBN13: "978-3-938899-46-5",
      buchJahr: "25.01.2009",
      buchVerlag: "ZEIT-Verlag",
      buchSeiten: "200",
      buchSprache: "Deutsch",
      buchArt: "Buch Hardcover",
      buchKategorie: "Nicht verfügbar",
      verfuegbarkeit: "entliehen"),
  Buch(
      buchId: "4",
      buchTitel: "Urgence de la pensée",
      buchAuthor: "Maurice Kamto",
      buchISBN10: "3-938899-46-8",
      buchISBN13: "978-3-938899-46-5",
      buchJahr: "25.01.2009",
      buchVerlag: "ZEIT-Verlag",
      buchSeiten: "200",
      buchSprache: "Deutsch",
      buchArt: "Buch Hardcover",
      buchKategorie: "Nicht verfügbar",
      verfuegbarkeit: "ausliehbar"),
  Buch(
      buchId: "5",
      buchTitel: "Il est temps que tu t'engages",
      buchAuthor: "Wilfried Ekanga",
      buchISBN10: "3-938899-46-8",
      buchISBN13: "978-3-938899-46-5",
      buchJahr: "25.01.2009",
      buchVerlag: "ZEIT-Verlag",
      buchSeiten: "200",
      buchSprache: "Deutsch",
      buchArt: "Buch Hardcover",
      buchKategorie: "Nicht verfügbar",
      verfuegbarkeit: "ausliehbar"),
  Buch(
      buchId: "6",
      buchTitel: "Das kleine weiße Pferd",
      buchAuthor: "Goudge, Elizabeth",
      buchISBN10: "3-938899-46-8",
      buchISBN13: "978-3-938899-46-5",
      buchJahr: "25.01.2009",
      buchVerlag: "ZEIT-Verlag",
      buchSeiten: "200",
      buchSprache: "Deutsch",
      buchArt: "Buch Hardcover",
      buchKategorie: "Nicht verfügbar",
      verfuegbarkeit: "entliehen"),
  Buch(
      buchId: "7",
      buchTitel: "Das kleine weiße Pferd",
      buchAuthor: "Goudge, Elizabeth",
      buchISBN10: "3-938899-46-8",
      buchISBN13: "978-3-938899-46-5",
      buchJahr: "25.01.2009",
      buchVerlag: "ZEIT-Verlag",
      buchSeiten: "200",
      buchSprache: "Deutsch",
      buchArt: "Buch Hardcover",
      buchKategorie: "Nicht verfügbar",
      verfuegbarkeit: "ausliehbar"),
  Buch(
      buchId: "8",
      buchTitel: "Das kleine weiße Pferd",
      buchAuthor: "Goudge, Elizabeth",
      buchISBN10: "3-938899-46-8",
      buchISBN13: "978-3-938899-46-5",
      buchJahr: "25.01.2009",
      buchVerlag: "ZEIT-Verlag",
      buchSeiten: "200",
      buchSprache: "Deutsch",
      buchArt: "Buch Hardcover",
      buchKategorie: "Nicht verfügbar",
      verfuegbarkeit: "ausliehbar"),
  Buch(
      buchId: "9",
      buchTitel: "Das kleine weiße Pferd",
      buchAuthor: "Goudge, Elizabeth",
      buchISBN10: "3-938899-46-8",
      buchISBN13: "978-3-938899-46-5",
      buchJahr: "25.01.2009",
      buchVerlag: "ZEIT-Verlag",
      buchSeiten: "200",
      buchSprache: "Deutsch",
      buchArt: "Buch Hardcover",
      buchKategorie: "Nicht verfügbar",
      verfuegbarkeit: "entliehen"),
  Buch(
      buchId: "10",
      buchTitel: "Das kleine weiße Pferd",
      buchAuthor: "Goudge, Elizabeth",
      buchISBN10: "3-938899-46-8",
      buchISBN13: "978-3-938899-46-5",
      buchJahr: "25.01.2009",
      buchVerlag: "ZEIT-Verlag",
      buchSeiten: "200",
      buchSprache: "Deutsch",
      buchArt: "Buch Hardcover",
      buchKategorie: "Nicht verfügbar",
      verfuegbarkeit: "ausliehbar"),
  Buch(
      buchTitel: "Das kleine weiße Pferd",
      buchAuthor: "Goudge, Elizabeth",
      buchISBN10: "3-938899-46-8",
      buchISBN13: "978-3-938899-46-5",
      buchJahr: "25.01.2009",
      buchVerlag: "ZEIT-Verlag",
      buchSeiten: "200",
      buchSprache: "Deutsch",
      buchArt: "Buch Hardcover",
      buchKategorie: "Nicht verfügbar",
      verfuegbarkeit: "entliehen"),
  Buch(
      buchTitel: "Das kleine weiße Pferd",
      buchAuthor: "Goudge, Elizabeth",
      buchISBN10: "3-938899-46-8",
      buchISBN13: "978-3-938899-46-5",
      buchJahr: "25.01.2009",
      buchVerlag: "ZEIT-Verlag",
      buchSeiten: "200",
      buchSprache: "Deutsch",
      buchArt: "Buch Hardcover",
      buchKategorie: "Nicht verfügbar",
      verfuegbarkeit: "entliehen"),
  Buch(
      buchTitel: "Das kleine weiße Pferd",
      buchAuthor: "Goudge, Elizabeth",
      buchISBN10: "3-938899-46-8",
      buchISBN13: "978-3-938899-46-5",
      buchJahr: "25.01.2009",
      buchVerlag: "ZEIT-Verlag",
      buchSeiten: "200",
      buchSprache: "Deutsch",
      buchArt: "Buch Hardcover",
      buchKategorie: "Nicht verfügbar",
      verfuegbarkeit: "ausliehbar"),
  Buch(
      buchTitel: "Das kleine weiße Pferd",
      buchAuthor: "Goudge, Elizabeth",
      buchISBN10: "3-938899-46-8",
      buchISBN13: "978-3-938899-46-5",
      buchJahr: "25.01.2009",
      buchVerlag: "ZEIT-Verlag",
      buchSeiten: "200",
      buchSprache: "Deutsch",
      buchArt: "Buch Hardcover",
      buchKategorie: "Nicht verfügbar",
      verfuegbarkeit: "ausliehbar"),
  Buch(
      buchTitel: "Das kleine weiße Pferd",
      buchAuthor: "Goudge, Elizabeth",
      buchISBN10: "3-938899-46-8",
      buchISBN13: "978-3-938899-46-5",
      buchJahr: "25.01.2009",
      buchVerlag: "ZEIT-Verlag",
      buchSeiten: "200",
      buchSprache: "Deutsch",
      buchArt: "Buch Hardcover",
      buchKategorie: "Nicht verfügbar",
      verfuegbarkeit: "ausliehbar"),
  Buch(
      buchTitel: "Das kleine weiße Pferd",
      buchAuthor: "Goudge, Elizabeth",
      buchISBN10: "3-938899-46-8",
      buchISBN13: "978-3-938899-46-5",
      buchJahr: "25.01.2009",
      buchVerlag: "ZEIT-Verlag",
      buchSeiten: "200",
      buchSprache: "Deutsch",
      buchArt: "Buch Hardcover",
      buchKategorie: "Nicht verfügbar",
      verfuegbarkeit: "ausliehbar"),
  Buch(
      buchTitel: "Das kleine weiße Pferd",
      buchAuthor: "Goudge, Elizabeth",
      buchISBN10: "3-938899-46-8",
      buchISBN13: "978-3-938899-46-5",
      buchJahr: "25.01.2009",
      buchVerlag: "ZEIT-Verlag",
      buchSeiten: "200",
      buchSprache: "Deutsch",
      buchArt: "Buch Hardcover",
      buchKategorie: "Nicht verfügbar",
      verfuegbarkeit: "entliehen"),
  Buch(
      buchTitel: "Das kleine weiße Pferd",
      buchAuthor: "Goudge, Elizabeth",
      buchISBN10: "3-938899-46-8",
      buchISBN13: "978-3-938899-46-5",
      buchJahr: "25.01.2009",
      buchVerlag: "ZEIT-Verlag",
      buchSeiten: "200",
      buchSprache: "Deutsch",
      buchArt: "Buch Hardcover",
      buchKategorie: "Nicht verfügbar",
      verfuegbarkeit: "ausliehbar"),
  Buch(
      buchTitel: "Das kleine weiße Pferd",
      buchAuthor: "Goudge, Elizabeth",
      buchISBN10: "3-938899-46-8",
      buchISBN13: "978-3-938899-46-5",
      buchJahr: "25.01.2009",
      buchVerlag: "ZEIT-Verlag",
      buchSeiten: "200",
      buchSprache: "Deutsch",
      buchArt: "Buch Hardcover",
      buchKategorie: "Nicht verfügbar",
      verfuegbarkeit: "ausliehbar"),
  Buch(
      buchTitel: "Das kleine weiße Pferd",
      buchAuthor: "Goudge, Elizabeth",
      buchISBN10: "3-938899-46-8",
      buchISBN13: "978-3-938899-46-5",
      buchJahr: "25.01.2009",
      buchVerlag: "ZEIT-Verlag",
      buchSeiten: "200",
      buchSprache: "Deutsch",
      buchArt: "Buch Hardcover",
      buchKategorie: "Nicht verfügbar",
      verfuegbarkeit: "ausliehbar"),
  Buch(
      buchTitel: "Das kleine weiße Pferd",
      buchAuthor: "Goudge, Elizabeth",
      buchISBN10: "3-938899-46-8",
      buchISBN13: "978-3-938899-46-5",
      buchJahr: "25.01.2009",
      buchVerlag: "ZEIT-Verlag",
      buchSeiten: "200",
      buchSprache: "Deutsch",
      buchArt: "Buch Hardcover",
      buchKategorie: "Nicht verfügbar",
      verfuegbarkeit: "entliehen"),
  Buch(
      buchTitel: "Das kleine weiße Pferd",
      buchAuthor: "Goudge, Elizabeth",
      buchISBN10: "3-938899-46-8",
      buchISBN13: "978-3-938899-46-5",
      buchJahr: "25.01.2009",
      buchVerlag: "ZEIT-Verlag",
      buchSeiten: "200",
      buchSprache: "Deutsch",
      buchArt: "Buch Hardcover",
      buchKategorie: "Nicht verfügbar",
      verfuegbarkeit: "ausliehbar"),
  Buch(
      buchTitel: "Das kleine weiße Pferd",
      buchAuthor: "Goudge, Elizabeth",
      buchISBN10: "3-938899-46-8",
      buchISBN13: "978-3-938899-46-5",
      buchJahr: "25.01.2009",
      buchVerlag: "ZEIT-Verlag",
      buchSeiten: "200",
      buchSprache: "Deutsch",
      buchArt: "Buch Hardcover",
      buchKategorie: "Nicht verfügbar",
      verfuegbarkeit: "ausliehbar"),
  Buch(
      buchTitel: "Das kleine weiße Pferd",
      buchAuthor: "Goudge, Elizabeth",
      buchISBN10: "3-938899-46-8",
      buchISBN13: "978-3-938899-46-5",
      buchJahr: "25.01.2009",
      buchVerlag: "ZEIT-Verlag",
      buchSeiten: "200",
      buchSprache: "Deutsch",
      buchArt: "Buch Hardcover",
      buchKategorie: "Nicht verfügbar",
      verfuegbarkeit: "ausliehbar"),
  Buch(
      buchTitel: "Das kleine weiße Pferd",
      buchAuthor: "Goudge, Elizabeth",
      buchISBN10: "3-938899-46-8",
      buchISBN13: "978-3-938899-46-5",
      buchJahr: "25.01.2009",
      buchVerlag: "ZEIT-Verlag",
      buchSeiten: "200",
      buchSprache: "Deutsch",
      buchArt: "Buch Hardcover",
      buchKategorie: "Nicht verfügbar",
      verfuegbarkeit: "entliehen"),
  Buch(
      buchTitel: "Das kleine weiße Pferd",
      buchAuthor: "Goudge, Elizabeth",
      buchISBN10: "3-938899-46-8",
      buchISBN13: "978-3-938899-46-5",
      buchJahr: "25.01.2009",
      buchVerlag: "ZEIT-Verlag",
      buchSeiten: "200",
      buchSprache: "Deutsch",
      buchArt: "Buch Hardcover",
      buchKategorie: "Nicht verfügbar",
      verfuegbarkeit: "ausliehbar"),
  Buch(
      buchTitel: "Das kleine weiße Pferd",
      buchAuthor: "Goudge, Elizabeth",
      buchISBN10: "3-938899-46-8",
      buchISBN13: "978-3-938899-46-5",
      buchJahr: "25.01.2009",
      buchVerlag: "ZEIT-Verlag",
      buchSeiten: "200",
      buchSprache: "Deutsch",
      buchArt: "Buch Hardcover",
      buchKategorie: "Nicht verfügbar",
      verfuegbarkeit: "ausliehbar"),
  Buch(
      buchTitel: "Das kleine weiße Pferd",
      buchAuthor: "Goudge, Elizabeth",
      buchISBN10: "3-938899-46-8",
      buchISBN13: "978-3-938899-46-5",
      buchJahr: "25.01.2009",
      buchVerlag: "ZEIT-Verlag",
      buchSeiten: "200",
      buchSprache: "Deutsch",
      buchArt: "Buch Hardcover",
      buchKategorie: "Nicht verfügbar",
      verfuegbarkeit: "ausliehbar"),
  Buch(
      buchTitel: "Das kleine weiße Pferd",
      buchAuthor: "Goudge, Elizabeth",
      buchISBN10: "3-938899-46-8",
      buchISBN13: "978-3-938899-46-5",
      buchJahr: "25.01.2009",
      buchVerlag: "ZEIT-Verlag",
      buchSeiten: "200",
      buchSprache: "Deutsch",
      buchArt: "Buch Hardcover",
      buchKategorie: "Nicht verfügbar",
      verfuegbarkeit: "entliehen"),
  Buch(
      buchTitel: "Das kleine weiße Pferd",
      buchAuthor: "Goudge, Elizabeth",
      buchISBN10: "3-938899-46-8",
      buchISBN13: "978-3-938899-46-5",
      buchJahr: "25.01.2009",
      buchVerlag: "ZEIT-Verlag",
      buchSeiten: "200",
      buchSprache: "Deutsch",
      buchArt: "Buch Hardcover",
      buchKategorie: "Nicht verfügbar",
      verfuegbarkeit: "entliehen"),
  Buch(
      buchTitel: "Das kleine weiße Pferd",
      buchAuthor: "Goudge, Elizabeth",
      buchISBN10: "3-938899-46-8",
      buchISBN13: "978-3-938899-46-5",
      buchJahr: "25.01.2009",
      buchVerlag: "ZEIT-Verlag",
      buchSeiten: "200",
      buchSprache: "Deutsch",
      buchArt: "Buch Hardcover",
      buchKategorie: "Nicht verfügbar",
      verfuegbarkeit: "ausliehbar"),
  Buch(
      buchTitel: "Das kleine weiße Pferd",
      buchAuthor: "Goudge, Elizabeth",
      buchISBN10: "3-938899-46-8",
      buchISBN13: "978-3-938899-46-5",
      buchJahr: "25.01.2009",
      buchVerlag: "ZEIT-Verlag",
      buchSeiten: "200",
      buchSprache: "Deutsch",
      buchArt: "Buch Hardcover",
      buchKategorie: "Nicht verfügbar",
      verfuegbarkeit: "entliehen"),
  Buch(
      buchTitel: "Das kleine weiße Pferd",
      buchAuthor: "Goudge, Elizabeth",
      buchISBN10: "3-938899-46-8",
      buchISBN13: "978-3-938899-46-5",
      buchJahr: "25.01.2009",
      buchVerlag: "ZEIT-Verlag",
      buchSeiten: "200",
      buchSprache: "Deutsch",
      buchArt: "Buch Hardcover",
      buchKategorie: "Nicht verfügbar",
      verfuegbarkeit: "ausliehbar"),
  Buch(
      buchTitel: "Das kleine weiße Pferd",
      buchAuthor: "Goudge, Elizabeth",
      buchISBN10: "3-938899-46-8",
      buchISBN13: "978-3-938899-46-5",
      buchJahr: "25.01.2009",
      buchVerlag: "ZEIT-Verlag",
      buchSeiten: "200",
      buchSprache: "Deutsch",
      buchArt: "Buch Hardcover",
      buchKategorie: "Nicht verfügbar",
      verfuegbarkeit: "ausliehbar"),
  Buch(
      buchTitel: "Das kleine weiße Pferd",
      buchAuthor: "Goudge, Elizabeth",
      buchISBN10: "3-938899-46-8",
      buchISBN13: "978-3-938899-46-5",
      buchJahr: "25.01.2009",
      buchVerlag: "ZEIT-Verlag",
      buchSeiten: "200",
      buchSprache: "Deutsch",
      buchArt: "Buch Hardcover",
      buchKategorie: "Nicht verfügbar",
      verfuegbarkeit: "ausliehbar"),
  Buch(
      buchTitel: "Das kleine weiße Pferd",
      buchAuthor: "Goudge, Elizabeth",
      buchISBN10: "3-938899-46-8",
      buchISBN13: "978-3-938899-46-5",
      buchJahr: "25.01.2009",
      buchVerlag: "ZEIT-Verlag",
      buchSeiten: "200",
      buchSprache: "Deutsch",
      buchArt: "Buch Hardcover",
      buchKategorie: "Nicht verfügbar",
      verfuegbarkeit: "entliehen")
];