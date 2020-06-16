// To parse this JSON data, do
//
//     final booksDescription = booksDescriptionFromJson(jsonString);

import 'dart:convert';

List<BooksDescription> booksDescriptionFromJson(String str) => List<BooksDescription>.from(json.decode(str).map((x) => BooksDescription.fromJson(x)));

String booksDescriptionToJson(List<BooksDescription> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class BooksDescription {
  BooksDescription({
    this.id,
    this.titel,
    this.autor,
    this.verlag,
    this.erscheinungsjahr,
    this.datum,
    this.isbn13,
    this.medienart,
    this.medienart2,
    this.seiten2,
    this.zustand,
    this.anmerkungen,
  });

  int id;
  String titel;
  String autor;
  String verlag;
  String erscheinungsjahr;
  String datum;
  String isbn13;
  String medienart;
  String medienart2;
  String seiten2;
  String zustand;
  String anmerkungen;

  factory BooksDescription.fromJson(Map<String, dynamic> json) => BooksDescription(
    id: json["id"] as int,
    titel: json["Titel"] as String,
    autor: json["Autor"] as String,
    verlag: json["Verlag"] as String,
    erscheinungsjahr: json["Erscheinungsjahr"] as String,
    datum: json["Datum"] as String,
    isbn13: json["ISBN-13"] as String,
    medienart: json["Medienart"] as String,
    medienart2: json["Medienart2"] as String,
    seiten2: json["Seiten2"] as String,
    zustand: json["Zustand"] as String,
    anmerkungen: json["Anmerkungen"] as String,
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "Titel": titel,
    "Autor": autor,
    "Verlag": verlag,
    "Erscheinungsjahr": erscheinungsjahr,
    "Datum": datum,
    "ISBN-13": isbn13,
    "Medienart": medienart,
    "Medienart2": medienart2,
    "Seiten2": seiten2,
    "Zustand": zustand,
    "Anmerkungen": anmerkungen,
  };
}
