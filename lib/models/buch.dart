class Buch {
  final String buchId;

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

  final String mediaTyp;
  final String verfuegbarkeit;

  const Buch({
      this.buchId,
      this.buchTitel,
      this.buchAuthor,
      this.buchISBN10,
      this.buchISBN13,
      this.buchJahr,
      this.buchVerlag,
      this.buchSeiten,
      this.buchSprache,
      this.buchArt,
      this.buchKategorie,
      this.mediaTyp,
      this.verfuegbarkeit});

  Map<String, dynamic> toMap() {
    return {
      'buchId': buchId,
      'buchTitel': buchTitel,
      'buchAuthor': buchAuthor,
      'buchISBN10': buchISBN10,
      'buchISBN13': buchISBN13,
      'buchJahr': buchJahr,
      'buchVerlag': buchVerlag,
      'buchSeiten': buchSeiten,
      'buchSprache': buchSprache,
      'buchArt': buchArt,
      'buchKategorie': buchKategorie,
      'mediaTyp': mediaTyp,
      'verfuegbarkeit': verfuegbarkeit
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
