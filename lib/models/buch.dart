class Buch {
  final String id;

  final String titel;
  final String author;
  final String iSBN10;
  final String iSBN13;
  final String jahr;
  final String verlag;
  final String seiten;
  final String sprache;
  final String buchArt;
  final String buchKategorie;

  final String mediaTyp;
  final String verfuegbarkeit;
  final int kopien;

  const Buch({
      this.id,
      this.titel,
      this.author,
      this.iSBN10,
      this.iSBN13,
      this.jahr,
      this.verlag,
      this.seiten,
      this.sprache,
      this.buchArt,
      this.buchKategorie,
      this.mediaTyp,
      this.verfuegbarkeit,
      this.kopien
  });

  Map<String, dynamic> toMap() {
    return {
      'buchId': id,
      'buchTitel': titel,
      'buchAuthor': author,
      'buchISBN10': iSBN10,
      'buchISBN13': iSBN13,
      'buchJahr': jahr,
      'buchVerlag': verlag,
      'buchSeiten': seiten,
      'buchSprache': sprache,
      'buchArt': buchArt,
      'buchKategorie': buchKategorie,
      'mediaTyp': mediaTyp,
      'verfuegbarkeit': verfuegbarkeit,
      'kopien': kopien
    };
  }

  factory Buch.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return Buch(
        titel: json['buchTitel'] as String,
        author: json['buchAuthor'] as String,
        iSBN10: json['buchISBN10'] as String,
        iSBN13: json['buchISBN13'] as String,
        jahr: json['buchJahr'] as String,
        verlag: json['buchVerlag'] as String,
        seiten: json['buchSeiten'] as String,
        sprache: json['buchSprache'] as String,
        buchArt: json['buchArt'] as String,
        buchKategorie: json['buchKategorie'] as String);
  }
}
