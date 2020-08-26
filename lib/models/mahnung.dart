import 'buch.dart';
import 'buch-items.dart';

class Mahnung {
  String userId;
  List<Buch> buecher;
  double amount;
  DateTime startdate;
  DateTime endate;

  Mahnung(this.userId, this.buecher, this.amount, this.startdate,this.endate);
}

/*final mahnung = [
  Mahnung(
      userId: "1",
      buch:[buecher[0]],
      amount: 0.15,
      startdate: new DateTime.now(),
      endate:new DateTime(2020, new DateTime.now().month + 1, new DateTime.now().day)),

  Mahnung(
      userId: "2",
      buch:[buecher[1], buecher[1], buecher[2]],
      amount: 0.15,
      startdate: new DateTime.now(),
      endate:new DateTime(2020, new DateTime.now().month + 1, new DateTime.now().day)),

  Mahnung(
      userId: "1",
      buch:[buecher[1]],
      amount: 0.15,
      startdate: new DateTime.now(),
      endate:new DateTime(2020, new DateTime.now().month + 1, new DateTime.now().day)),

  Mahnung(
      userId: "1",
      buch:[buecher[3], buecher[4]],
      amount: 0.15,
      startdate: new DateTime.now(),
      endate:new DateTime(2020, new DateTime.now().month + 1, new DateTime.now().day)),

];*/
