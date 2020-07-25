// To parse this JSON data, do
//
//     final booksDescription = booksDescriptionFromJson(jsonString);

import 'dart:convert';

List<BooksDescription> booksDescriptionFromJson(String str) =>
    List<BooksDescription>.from(
        json.decode(str).map((x) => BooksDescription.fromJson(x)));

String booksDescriptionToJson(List<BooksDescription> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class BooksDescription {
  BooksDescription({
    this.id,
    this.title,
    this.author,
    this.authorId,
    this.authorBio,
    this.authors,
    this.titleSlug,
    this.authorSlug,
    this.isbn13,
    this.isbn10,
    this.price,
    this.format,
    this.publisher,
    this.pubdate,
    this.edition,
    this.subjects,
    this.lexile,
    this.pages,
    this.dimensions,
    this.overview,
    this.excerpt,
    this.synopsis,
    this.toc,
    this.editorialReviews,
  });

  int id;
  String title;
  String author;
  int authorId;
  String authorBio;
  String authors;
  dynamic titleSlug;
  String authorSlug;
  int isbn13;
  dynamic isbn10;
  String price;
  Format format;
  String publisher;
  String pubdate;
  dynamic edition;
  String subjects;
  Lexile lexile;
  dynamic pages;
  String dimensions;
  String overview;
  String excerpt;
  String synopsis;
  String toc;
  String editorialReviews;

  factory BooksDescription.fromJson(Map<String, dynamic> json) =>
      BooksDescription(
        id: json["id"],
        title: json["title"],
        author: json["author"],
        authorId: json["author_id"],
        authorBio: json["author_bio"],
        authors: json["authors"],
        titleSlug: json["title_slug"],
        authorSlug: json["author_slug"],
        isbn13: json["isbn13"],
        isbn10: json["isbn10"],
        price: json["price"],
        format: formatValues.map[json["format"]],
        publisher: json["publisher"],
        pubdate: json["pubdate"],
        edition: json["edition"],
        subjects: json["subjects"],
        lexile: lexileValues.map[json["lexile"]],
        pages: json["pages"],
        dimensions: json["dimensions"],
        overview: json["overview"],
        excerpt: json["excerpt"],
        synopsis: json["synopsis"],
        toc: json["toc"],
        editorialReviews: json["editorial_reviews"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "author": author,
        "author_id": authorId,
        "author_bio": authorBio,
        "authors": authors,
        "title_slug": titleSlug,
        "author_slug": authorSlug,
        "isbn13": isbn13,
        "isbn10": isbn10,
        "price": price,
        "format": formatValues.reverse[format],
        "publisher": publisher,
        "pubdate": pubdate,
        "edition": edition,
        "subjects": subjects,
        "lexile": lexileValues.reverse[lexile],
        "pages": pages,
        "dimensions": dimensions,
        "overview": overview,
        "excerpt": excerpt,
        "synopsis": synopsis,
        "toc": toc,
        "editorial_reviews": editorialReviews,
      };

  List<BooksDescription> bd;

  static BooksDescription filterList(
      BooksDescription bds, String filterString) {
    BooksDescription tempBooks = bds;
    List<BooksDescription> _books = tempBooks.bd
        .where((u) =>
            (u.title.toLowerCase().contains(filterString.toLowerCase())) ||
            (u.pubdate.toLowerCase().contains(filterString.toLowerCase())) ||
            (u.titleSlug.toLowerCase().contains(filterString.toLowerCase())) ||
            (u.isbn13
                .toString()
                .toLowerCase()
                .contains(filterString.toLowerCase())) ||
            (u.isbn10
                .toString()
                .toLowerCase()
                .contains(filterString.toLowerCase())) ||
            (u.author.toLowerCase().contains(filterString.toLowerCase())))
        .toList();
    bds.bd = _books;
    return bds;
  }
}

enum Format {
  PAPERBACK,
  HARDCOVER,
  LIBRARY_BINDING,
  COMPACT_DISC,
  MASS_MARKET_PAPERBACK,
  OTHER_FORMAT,
  MULTIMEDIA
}

final formatValues = EnumValues({
  "Compact Disc": Format.COMPACT_DISC,
  "Hardcover": Format.HARDCOVER,
  "Library Binding": Format.LIBRARY_BINDING,
  "Mass Market Paperback": Format.MASS_MARKET_PAPERBACK,
  "Multimedia": Format.MULTIMEDIA,
  "Other Format": Format.OTHER_FORMAT,
  "Paperback": Format.PAPERBACK
});

enum Lexile { EMPTY, THE_1260_L, THE_1300_L, THE_1210_L, THE_840_L }

final lexileValues = EnumValues({
  "": Lexile.EMPTY,
  "1210L": Lexile.THE_1210_L,
  "1260L": Lexile.THE_1260_L,
  "1300L": Lexile.THE_1300_L,
  "840L": Lexile.THE_840_L
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
