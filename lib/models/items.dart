// To parse this JSON data, do
//
//     final items = itemsFromJson(jsonString);

import 'dart:convert';

List<Items> itemsFromJson(String str) => List<Items>.from(json.decode(str).map((x) => Items.fromJson(x)));

String itemsToJson(List<Items> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Items {
  Items({
    this.titel,
    this.autor,
    this.verlag,
    this.erscheinungsjahr,
    this.isbn,
    this.isbn13,
    this.medienart,
    this.medienart2,
    this.seiten2,
    this.zustand,
    this.anmerkungen,
  });

  String titel;
  String autor;
  String verlag;
  String erscheinungsjahr;
  String isbn;
  String isbn13;
  String medienart;
  Medienart2 medienart2;
  String seiten2;
  String zustand;
  String anmerkungen;

  factory Items.fromJson(Map<String, dynamic> json) => Items(
    titel: json["Titel"],
    autor: json["Autor"],
    verlag: json["Verlag"],
    erscheinungsjahr: json["Erscheinungsjahr"],
    isbn: json["ISBN"],
    isbn13: json["ISBN-13"],
    medienart: json["Medienart"],
    medienart2: medienart2Values.map[json["Medienart2"]],
    seiten2: json["Seiten2"],
    zustand: json["Zustand"],
    anmerkungen: json["Anmerkungen"],
  );

  Map<String, dynamic> toJson() => {
    "Titel": titel,
    "Autor": autor,
    "Verlag": verlag,
    "Erscheinungsjahr": erscheinungsjahr,
    "ISBN": isbn,
    "ISBN-13": isbn13,
    "Medienart": medienart,
    "Medienart2": medienart2Values.reverse[medienart2],
    "Seiten2": seiten2,
    "Zustand": zustand,
    "Anmerkungen": anmerkungen,
  };
}

enum Medienart2 { DE, THE_9782092525487 }

final medienart2Values = EnumValues({
  "DE": Medienart2.DE,
  "978-2-09-252548-7": Medienart2.THE_9782092525487
});

class EnumValues<T> {
  Map<String, T> map;
  Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    if (reverseMap == null) {
      reverseMap = map.map((k, v) => new MapEntry(v, k));
    }
    return reverseMap;
  }
}
