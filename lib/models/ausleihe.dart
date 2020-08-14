import 'buch.dart';

class Ausleihe {
  String userId;
  Buch buch;
  DateTime von;
  DateTime bis;

  Ausleihe(this.userId, this.buch, this.von, this.bis);
}
