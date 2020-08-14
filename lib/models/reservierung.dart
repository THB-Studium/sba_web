import 'buch.dart';

class Reservierung {
  String userId;
  Buch buch;
  DateTime von;
  DateTime bis;

  Reservierung(this.userId, this.buch, this.von, this.bis);
}
