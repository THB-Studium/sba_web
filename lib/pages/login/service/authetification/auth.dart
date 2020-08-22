import 'package:sba_web/models/user.dart';
import 'package:sba_web/pages/components/constants.dart';

class AuthMethods {


  Future login(String benutzerNummer, String kennwort) async {
    try {
      var result = await http.get(Uri.encodeFull(loginPath), headers: {'Accept': 'application/json'});
      FirebaseUser firebaseUser = result.user;
      return _userFromFirebaseUser(firebaseUser);
    } catch(e) {
      print(e);
    }
  }















//  final FirebaseAuth _auth = FirebaseAuth.instance;
//
//  Future signInWithBenutzerNummerAndKennwort(String benutzerNummer, String kennwort) async {
//    try {
//      AuthResult result = await _auth.signInWithEmailAndPassword(email: benutzerNummer, password: kennwort);
//      FirebaseUser firebaseUser = result.user;
//      return _userFromFirebaseUser(firebaseUser);
//    } catch(e) {
//      print(e);
//    }
//  }
//
//  Future signUpWithBenutzerNummerAndKennwort(String benutzerNummer, String kennwort) async {
//    try {
//      AuthResult result = await _auth.createUserWithEmailAndPassword(email: benutzerNummer, password: kennwort);
//      FirebaseUser firebaseUser = result.user;
//      return _userFromFirebaseUser(firebaseUser);
//    } catch(e) {
//      print(e);
//    }
//  }
//
//  Future signOut() async {
//    try {
//      return await _auth.signOut();
//    } catch(e) {
//      print(e);
//    }
//  }
//
//  User _userFromFirebaseUser(FirebaseUser user) {
//    return user != null ? User(id: user.uid) : null;
//  }
//
}