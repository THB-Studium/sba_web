class Buch {
  final String buchTitel;
  final String buchAuthor;
  final String buchISBN10;
  final String buchISBN13;
  final String buchJahr;
  final String buchVerlag;
  final String buchSeiten;
  final String buchSprache;
  final String buchArt;
  final String buchKategorie;

  const Buch(
      {this.buchTitel,
      this.buchAuthor,
      this.buchISBN10,
      this.buchISBN13,
      this.buchJahr,
      this.buchVerlag,
      this.buchSeiten,
      this.buchSprache,
      this.buchArt,
      this.buchKategorie});

  Map<String, dynamic> toMap() {
    return {
      'buchTitel': buchTitel,
      'buchAuthor': buchAuthor,
      'buchISBN10': buchISBN10,
      'buchISBN13': buchISBN13,
      'buchJahr': buchJahr,
      'buchVerlag': buchVerlag,
      'buchSeiten': buchSeiten,
      'buchSprache': buchSprache,
      'buchArt': buchArt,
      'buchKategorie': buchKategorie
    };
  }

  factory Buch.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return Buch(
        buchTitel: json['buchTitel'] as String,
        buchAuthor: json['buchAuthor'] as String,
        buchISBN10: json['buchISBN10'] as String,
        buchISBN13: json['buchISBN13'] as String,
        buchJahr: json['buchJahr'] as String,
        buchVerlag: json['buchVerlag'] as String,
        buchSeiten: json['buchSeiten'] as String,
        buchSprache: json['buchSprache'] as String,
        buchArt: json['buchArt'] as String,
        buchKategorie: json['buchKategorie'] as String);
  }
}

class Ausleihe {
  String userId;
  Buch buch;
  DateTime von;
  DateTime bis;

  Ausleihe(this.userId, this.buch, this.von, this.bis);
}

class Reservierung {
  String userId;
  Buch buch;
  DateTime von;
  DateTime bis;

  Reservierung(this.userId, this.buch, this.von, this.bis);
}

final ausleihe = [
  Ausleihe("1", buecher[0], new DateTime.now(),  new DateTime(2020, new DateTime.now().month + 1, new DateTime.now().day)),
  Ausleihe("1", buecher[0], new DateTime.now(),  new DateTime(2020, new DateTime.now().month + 1, new DateTime.now().day + 5)),
  Ausleihe("1", buecher[0], new DateTime(2020,7,5),  new DateTime(2020,7,20))
];

final reservierungen = [
  Reservierung("1", buecher[0], new DateTime.now(),  new DateTime(2020, new DateTime.now().month, new DateTime.now().day + 3)),
  Reservierung("1", buecher[0], new DateTime.now(),  new DateTime(2020, new DateTime.now().month, new DateTime.now().day + 3)),
];


final buecher = [
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
      buchKategorie: "Nicht verfügbar"
  ),Buch(
      buchTitel: "Das kleine weiße Pferd",
      buchAuthor: "Goudge, Elizabeth",
      buchISBN10: "3-938899-46-8",
      buchISBN13: "978-3-938899-46-5",
      buchJahr: "25.01.2009",
      buchVerlag: "ZEIT-Verlag",
      buchSeiten: "200",
      buchSprache: "Deutsch",
      buchArt: "Buch Hardcover",
      buchKategorie: "Nicht verfügbar"
  ),Buch(
      buchTitel: "Das kleine weiße Pferd",
      buchAuthor: "Goudge, Elizabeth",
      buchISBN10: "3-938899-46-8",
      buchISBN13: "978-3-938899-46-5",
      buchJahr: "25.01.2009",
      buchVerlag: "ZEIT-Verlag",
      buchSeiten: "200",
      buchSprache: "Deutsch",
      buchArt: "Buch Hardcover",
      buchKategorie: "Nicht verfügbar"
  ),Buch(
      buchTitel: "Das kleine weiße Pferd",
      buchAuthor: "Goudge, Elizabeth",
      buchISBN10: "3-938899-46-8",
      buchISBN13: "978-3-938899-46-5",
      buchJahr: "25.01.2009",
      buchVerlag: "ZEIT-Verlag",
      buchSeiten: "200",
      buchSprache: "Deutsch",
      buchArt: "Buch Hardcover",
      buchKategorie: "Nicht verfügbar"
  ),Buch(
      buchTitel: "Das kleine weiße Pferd",
      buchAuthor: "Goudge, Elizabeth",
      buchISBN10: "3-938899-46-8",
      buchISBN13: "978-3-938899-46-5",
      buchJahr: "25.01.2009",
      buchVerlag: "ZEIT-Verlag",
      buchSeiten: "200",
      buchSprache: "Deutsch",
      buchArt: "Buch Hardcover",
      buchKategorie: "Nicht verfügbar"
  ),Buch(
      buchTitel: "Das kleine weiße Pferd",
      buchAuthor: "Goudge, Elizabeth",
      buchISBN10: "3-938899-46-8",
      buchISBN13: "978-3-938899-46-5",
      buchJahr: "25.01.2009",
      buchVerlag: "ZEIT-Verlag",
      buchSeiten: "200",
      buchSprache: "Deutsch",
      buchArt: "Buch Hardcover",
      buchKategorie: "Nicht verfügbar"
  ),Buch(
      buchTitel: "Das kleine weiße Pferd",
      buchAuthor: "Goudge, Elizabeth",
      buchISBN10: "3-938899-46-8",
      buchISBN13: "978-3-938899-46-5",
      buchJahr: "25.01.2009",
      buchVerlag: "ZEIT-Verlag",
      buchSeiten: "200",
      buchSprache: "Deutsch",
      buchArt: "Buch Hardcover",
      buchKategorie: "Nicht verfügbar"
  ),Buch(
      buchTitel: "Das kleine weiße Pferd",
      buchAuthor: "Goudge, Elizabeth",
      buchISBN10: "3-938899-46-8",
      buchISBN13: "978-3-938899-46-5",
      buchJahr: "25.01.2009",
      buchVerlag: "ZEIT-Verlag",
      buchSeiten: "200",
      buchSprache: "Deutsch",
      buchArt: "Buch Hardcover",
      buchKategorie: "Nicht verfügbar"
  ),Buch(
      buchTitel: "Das kleine weiße Pferd",
      buchAuthor: "Goudge, Elizabeth",
      buchISBN10: "3-938899-46-8",
      buchISBN13: "978-3-938899-46-5",
      buchJahr: "25.01.2009",
      buchVerlag: "ZEIT-Verlag",
      buchSeiten: "200",
      buchSprache: "Deutsch",
      buchArt: "Buch Hardcover",
      buchKategorie: "Nicht verfügbar"
  ),Buch(
      buchTitel: "Das kleine weiße Pferd",
      buchAuthor: "Goudge, Elizabeth",
      buchISBN10: "3-938899-46-8",
      buchISBN13: "978-3-938899-46-5",
      buchJahr: "25.01.2009",
      buchVerlag: "ZEIT-Verlag",
      buchSeiten: "200",
      buchSprache: "Deutsch",
      buchArt: "Buch Hardcover",
      buchKategorie: "Nicht verfügbar"
  ),Buch(
      buchTitel: "Das kleine weiße Pferd",
      buchAuthor: "Goudge, Elizabeth",
      buchISBN10: "3-938899-46-8",
      buchISBN13: "978-3-938899-46-5",
      buchJahr: "25.01.2009",
      buchVerlag: "ZEIT-Verlag",
      buchSeiten: "200",
      buchSprache: "Deutsch",
      buchArt: "Buch Hardcover",
      buchKategorie: "Nicht verfügbar"
  ),Buch(
      buchTitel: "Das kleine weiße Pferd",
      buchAuthor: "Goudge, Elizabeth",
      buchISBN10: "3-938899-46-8",
      buchISBN13: "978-3-938899-46-5",
      buchJahr: "25.01.2009",
      buchVerlag: "ZEIT-Verlag",
      buchSeiten: "200",
      buchSprache: "Deutsch",
      buchArt: "Buch Hardcover",
      buchKategorie: "Nicht verfügbar"
  ),Buch(
      buchTitel: "Das kleine weiße Pferd",
      buchAuthor: "Goudge, Elizabeth",
      buchISBN10: "3-938899-46-8",
      buchISBN13: "978-3-938899-46-5",
      buchJahr: "25.01.2009",
      buchVerlag: "ZEIT-Verlag",
      buchSeiten: "200",
      buchSprache: "Deutsch",
      buchArt: "Buch Hardcover",
      buchKategorie: "Nicht verfügbar"
  ),Buch(
      buchTitel: "Das kleine weiße Pferd",
      buchAuthor: "Goudge, Elizabeth",
      buchISBN10: "3-938899-46-8",
      buchISBN13: "978-3-938899-46-5",
      buchJahr: "25.01.2009",
      buchVerlag: "ZEIT-Verlag",
      buchSeiten: "200",
      buchSprache: "Deutsch",
      buchArt: "Buch Hardcover",
      buchKategorie: "Nicht verfügbar"
  ),Buch(
      buchTitel: "Das kleine weiße Pferd",
      buchAuthor: "Goudge, Elizabeth",
      buchISBN10: "3-938899-46-8",
      buchISBN13: "978-3-938899-46-5",
      buchJahr: "25.01.2009",
      buchVerlag: "ZEIT-Verlag",
      buchSeiten: "200",
      buchSprache: "Deutsch",
      buchArt: "Buch Hardcover",
      buchKategorie: "Nicht verfügbar"
  ),Buch(
      buchTitel: "Das kleine weiße Pferd",
      buchAuthor: "Goudge, Elizabeth",
      buchISBN10: "3-938899-46-8",
      buchISBN13: "978-3-938899-46-5",
      buchJahr: "25.01.2009",
      buchVerlag: "ZEIT-Verlag",
      buchSeiten: "200",
      buchSprache: "Deutsch",
      buchArt: "Buch Hardcover",
      buchKategorie: "Nicht verfügbar"
  ),Buch(
      buchTitel: "Das kleine weiße Pferd",
      buchAuthor: "Goudge, Elizabeth",
      buchISBN10: "3-938899-46-8",
      buchISBN13: "978-3-938899-46-5",
      buchJahr: "25.01.2009",
      buchVerlag: "ZEIT-Verlag",
      buchSeiten: "200",
      buchSprache: "Deutsch",
      buchArt: "Buch Hardcover",
      buchKategorie: "Nicht verfügbar"
  ),Buch(
      buchTitel: "Das kleine weiße Pferd",
      buchAuthor: "Goudge, Elizabeth",
      buchISBN10: "3-938899-46-8",
      buchISBN13: "978-3-938899-46-5",
      buchJahr: "25.01.2009",
      buchVerlag: "ZEIT-Verlag",
      buchSeiten: "200",
      buchSprache: "Deutsch",
      buchArt: "Buch Hardcover",
      buchKategorie: "Nicht verfügbar"
  ),Buch(
      buchTitel: "Das kleine weiße Pferd",
      buchAuthor: "Goudge, Elizabeth",
      buchISBN10: "3-938899-46-8",
      buchISBN13: "978-3-938899-46-5",
      buchJahr: "25.01.2009",
      buchVerlag: "ZEIT-Verlag",
      buchSeiten: "200",
      buchSprache: "Deutsch",
      buchArt: "Buch Hardcover",
      buchKategorie: "Nicht verfügbar"
  ),Buch(
      buchTitel: "Das kleine weiße Pferd",
      buchAuthor: "Goudge, Elizabeth",
      buchISBN10: "3-938899-46-8",
      buchISBN13: "978-3-938899-46-5",
      buchJahr: "25.01.2009",
      buchVerlag: "ZEIT-Verlag",
      buchSeiten: "200",
      buchSprache: "Deutsch",
      buchArt: "Buch Hardcover",
      buchKategorie: "Nicht verfügbar"
  ),Buch(
      buchTitel: "Das kleine weiße Pferd",
      buchAuthor: "Goudge, Elizabeth",
      buchISBN10: "3-938899-46-8",
      buchISBN13: "978-3-938899-46-5",
      buchJahr: "25.01.2009",
      buchVerlag: "ZEIT-Verlag",
      buchSeiten: "200",
      buchSprache: "Deutsch",
      buchArt: "Buch Hardcover",
      buchKategorie: "Nicht verfügbar"
  ),Buch(
      buchTitel: "Das kleine weiße Pferd",
      buchAuthor: "Goudge, Elizabeth",
      buchISBN10: "3-938899-46-8",
      buchISBN13: "978-3-938899-46-5",
      buchJahr: "25.01.2009",
      buchVerlag: "ZEIT-Verlag",
      buchSeiten: "200",
      buchSprache: "Deutsch",
      buchArt: "Buch Hardcover",
      buchKategorie: "Nicht verfügbar"
  ),Buch(
      buchTitel: "Das kleine weiße Pferd",
      buchAuthor: "Goudge, Elizabeth",
      buchISBN10: "3-938899-46-8",
      buchISBN13: "978-3-938899-46-5",
      buchJahr: "25.01.2009",
      buchVerlag: "ZEIT-Verlag",
      buchSeiten: "200",
      buchSprache: "Deutsch",
      buchArt: "Buch Hardcover",
      buchKategorie: "Nicht verfügbar"
  ),Buch(
      buchTitel: "Das kleine weiße Pferd",
      buchAuthor: "Goudge, Elizabeth",
      buchISBN10: "3-938899-46-8",
      buchISBN13: "978-3-938899-46-5",
      buchJahr: "25.01.2009",
      buchVerlag: "ZEIT-Verlag",
      buchSeiten: "200",
      buchSprache: "Deutsch",
      buchArt: "Buch Hardcover",
      buchKategorie: "Nicht verfügbar"
  ),Buch(
      buchTitel: "Das kleine weiße Pferd",
      buchAuthor: "Goudge, Elizabeth",
      buchISBN10: "3-938899-46-8",
      buchISBN13: "978-3-938899-46-5",
      buchJahr: "25.01.2009",
      buchVerlag: "ZEIT-Verlag",
      buchSeiten: "200",
      buchSprache: "Deutsch",
      buchArt: "Buch Hardcover",
      buchKategorie: "Nicht verfügbar"
  ),Buch(
      buchTitel: "Das kleine weiße Pferd",
      buchAuthor: "Goudge, Elizabeth",
      buchISBN10: "3-938899-46-8",
      buchISBN13: "978-3-938899-46-5",
      buchJahr: "25.01.2009",
      buchVerlag: "ZEIT-Verlag",
      buchSeiten: "200",
      buchSprache: "Deutsch",
      buchArt: "Buch Hardcover",
      buchKategorie: "Nicht verfügbar"
  ),Buch(
      buchTitel: "Das kleine weiße Pferd",
      buchAuthor: "Goudge, Elizabeth",
      buchISBN10: "3-938899-46-8",
      buchISBN13: "978-3-938899-46-5",
      buchJahr: "25.01.2009",
      buchVerlag: "ZEIT-Verlag",
      buchSeiten: "200",
      buchSprache: "Deutsch",
      buchArt: "Buch Hardcover",
      buchKategorie: "Nicht verfügbar"
  ),Buch(
      buchTitel: "Das kleine weiße Pferd",
      buchAuthor: "Goudge, Elizabeth",
      buchISBN10: "3-938899-46-8",
      buchISBN13: "978-3-938899-46-5",
      buchJahr: "25.01.2009",
      buchVerlag: "ZEIT-Verlag",
      buchSeiten: "200",
      buchSprache: "Deutsch",
      buchArt: "Buch Hardcover",
      buchKategorie: "Nicht verfügbar"
  ),Buch(
      buchTitel: "Das kleine weiße Pferd",
      buchAuthor: "Goudge, Elizabeth",
      buchISBN10: "3-938899-46-8",
      buchISBN13: "978-3-938899-46-5",
      buchJahr: "25.01.2009",
      buchVerlag: "ZEIT-Verlag",
      buchSeiten: "200",
      buchSprache: "Deutsch",
      buchArt: "Buch Hardcover",
      buchKategorie: "Nicht verfügbar"
  ),Buch(
      buchTitel: "Das kleine weiße Pferd",
      buchAuthor: "Goudge, Elizabeth",
      buchISBN10: "3-938899-46-8",
      buchISBN13: "978-3-938899-46-5",
      buchJahr: "25.01.2009",
      buchVerlag: "ZEIT-Verlag",
      buchSeiten: "200",
      buchSprache: "Deutsch",
      buchArt: "Buch Hardcover",
      buchKategorie: "Nicht verfügbar"
  ),Buch(
      buchTitel: "Das kleine weiße Pferd",
      buchAuthor: "Goudge, Elizabeth",
      buchISBN10: "3-938899-46-8",
      buchISBN13: "978-3-938899-46-5",
      buchJahr: "25.01.2009",
      buchVerlag: "ZEIT-Verlag",
      buchSeiten: "200",
      buchSprache: "Deutsch",
      buchArt: "Buch Hardcover",
      buchKategorie: "Nicht verfügbar"
  ),Buch(
      buchTitel: "Das kleine weiße Pferd",
      buchAuthor: "Goudge, Elizabeth",
      buchISBN10: "3-938899-46-8",
      buchISBN13: "978-3-938899-46-5",
      buchJahr: "25.01.2009",
      buchVerlag: "ZEIT-Verlag",
      buchSeiten: "200",
      buchSprache: "Deutsch",
      buchArt: "Buch Hardcover",
      buchKategorie: "Nicht verfügbar"
  ),Buch(
      buchTitel: "Das kleine weiße Pferd",
      buchAuthor: "Goudge, Elizabeth",
      buchISBN10: "3-938899-46-8",
      buchISBN13: "978-3-938899-46-5",
      buchJahr: "25.01.2009",
      buchVerlag: "ZEIT-Verlag",
      buchSeiten: "200",
      buchSprache: "Deutsch",
      buchArt: "Buch Hardcover",
      buchKategorie: "Nicht verfügbar"
  ),Buch(
      buchTitel: "Das kleine weiße Pferd",
      buchAuthor: "Goudge, Elizabeth",
      buchISBN10: "3-938899-46-8",
      buchISBN13: "978-3-938899-46-5",
      buchJahr: "25.01.2009",
      buchVerlag: "ZEIT-Verlag",
      buchSeiten: "200",
      buchSprache: "Deutsch",
      buchArt: "Buch Hardcover",
      buchKategorie: "Nicht verfügbar"
  ),Buch(
      buchTitel: "Das kleine weiße Pferd",
      buchAuthor: "Goudge, Elizabeth",
      buchISBN10: "3-938899-46-8",
      buchISBN13: "978-3-938899-46-5",
      buchJahr: "25.01.2009",
      buchVerlag: "ZEIT-Verlag",
      buchSeiten: "200",
      buchSprache: "Deutsch",
      buchArt: "Buch Hardcover",
      buchKategorie: "Nicht verfügbar"
  ),Buch(
      buchTitel: "Das kleine weiße Pferd",
      buchAuthor: "Goudge, Elizabeth",
      buchISBN10: "3-938899-46-8",
      buchISBN13: "978-3-938899-46-5",
      buchJahr: "25.01.2009",
      buchVerlag: "ZEIT-Verlag",
      buchSeiten: "200",
      buchSprache: "Deutsch",
      buchArt: "Buch Hardcover",
      buchKategorie: "Nicht verfügbar"
  ),Buch(
      buchTitel: "Das kleine weiße Pferd",
      buchAuthor: "Goudge, Elizabeth",
      buchISBN10: "3-938899-46-8",
      buchISBN13: "978-3-938899-46-5",
      buchJahr: "25.01.2009",
      buchVerlag: "ZEIT-Verlag",
      buchSeiten: "200",
      buchSprache: "Deutsch",
      buchArt: "Buch Hardcover",
      buchKategorie: "Nicht verfügbar"
  ),Buch(
      buchTitel: "Das kleine weiße Pferd",
      buchAuthor: "Goudge, Elizabeth",
      buchISBN10: "3-938899-46-8",
      buchISBN13: "978-3-938899-46-5",
      buchJahr: "25.01.2009",
      buchVerlag: "ZEIT-Verlag",
      buchSeiten: "200",
      buchSprache: "Deutsch",
      buchArt: "Buch Hardcover",
      buchKategorie: "Nicht verfügbar"
  ),Buch(
      buchTitel: "Das kleine weiße Pferd",
      buchAuthor: "Goudge, Elizabeth",
      buchISBN10: "3-938899-46-8",
      buchISBN13: "978-3-938899-46-5",
      buchJahr: "25.01.2009",
      buchVerlag: "ZEIT-Verlag",
      buchSeiten: "200",
      buchSprache: "Deutsch",
      buchArt: "Buch Hardcover",
      buchKategorie: "Nicht verfügbar"
  ),Buch(
      buchTitel: "Das kleine weiße Pferd",
      buchAuthor: "Goudge, Elizabeth",
      buchISBN10: "3-938899-46-8",
      buchISBN13: "978-3-938899-46-5",
      buchJahr: "25.01.2009",
      buchVerlag: "ZEIT-Verlag",
      buchSeiten: "200",
      buchSprache: "Deutsch",
      buchArt: "Buch Hardcover",
      buchKategorie: "Nicht verfügbar"
  ),Buch(
      buchTitel: "Das kleine weiße Pferd",
      buchAuthor: "Goudge, Elizabeth",
      buchISBN10: "3-938899-46-8",
      buchISBN13: "978-3-938899-46-5",
      buchJahr: "25.01.2009",
      buchVerlag: "ZEIT-Verlag",
      buchSeiten: "200",
      buchSprache: "Deutsch",
      buchArt: "Buch Hardcover",
      buchKategorie: "Nicht verfügbar"
  ),Buch(
      buchTitel: "Das kleine weiße Pferd",
      buchAuthor: "Goudge, Elizabeth",
      buchISBN10: "3-938899-46-8",
      buchISBN13: "978-3-938899-46-5",
      buchJahr: "25.01.2009",
      buchVerlag: "ZEIT-Verlag",
      buchSeiten: "200",
      buchSprache: "Deutsch",
      buchArt: "Buch Hardcover",
      buchKategorie: "Nicht verfügbar"
  ),Buch(
      buchTitel: "Das kleine weiße Pferd",
      buchAuthor: "Goudge, Elizabeth",
      buchISBN10: "3-938899-46-8",
      buchISBN13: "978-3-938899-46-5",
      buchJahr: "25.01.2009",
      buchVerlag: "ZEIT-Verlag",
      buchSeiten: "200",
      buchSprache: "Deutsch",
      buchArt: "Buch Hardcover",
      buchKategorie: "Nicht verfügbar"
  ),Buch(
      buchTitel: "Das kleine weiße Pferd",
      buchAuthor: "Goudge, Elizabeth",
      buchISBN10: "3-938899-46-8",
      buchISBN13: "978-3-938899-46-5",
      buchJahr: "25.01.2009",
      buchVerlag: "ZEIT-Verlag",
      buchSeiten: "200",
      buchSprache: "Deutsch",
      buchArt: "Buch Hardcover",
      buchKategorie: "Nicht verfügbar"
  )
];