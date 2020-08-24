import 'package:sba_web/pages/components/constants.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class AuthMethods {


  Future login(String benutzerNummer, String kennwort) async {
    String basicAuth = 'Basic ' + base64Encode(utf8.encode('$benutzerNummer:$kennwort'));
    print('basicAuth: ' + basicAuth);
    print('urlPath: ' + loginPath);
    try {
      http.Response response  = await http.post(
          Uri.encodeFull(loginPath),
          headers: <String, String>{'authorization': basicAuth});
      print('---------- Body response ----------------------------------------');
      print('Status code: ' + response.statusCode.toString());
      print(response.body);
      print('---------- response ----------------------------------------');
//      FirebaseUser firebaseUser = result.user;
//      return _userFromFirebaseUser(firebaseUser);
    } catch(e) {
      print('---------- Error response ----------------------------------------');
      print(e);

      print('---------- response ----------------------------------------');
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