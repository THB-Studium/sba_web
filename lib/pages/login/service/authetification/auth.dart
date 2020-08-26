import 'package:sba_web/pages/components/constants.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:sba_web/pages/login/service/authetification/helper-function.dart';

class AuthMethods {


  Future login(String benutzerNummer, String kennwort) async {
    String basicAuth = 'Basic ' + base64Encode(utf8.encode('$benutzerNummer:$kennwort'));
    try {
      http.Response response  = await http.post(
          Uri.encodeFull(loginPath),
          headers: <String, String>{
            'Authorization': basicAuth,
            'Accept': 'application/json'
          });

      print('----- Body response --------');
      if (response.statusCode.toString() == '200') {
          print('Status code: ' + response.statusCode.toString());
          print(response.body);

          HelperFunktions.saveBenutzernummer(benutzerNummer);
//          HelperFunktions.saveThoken(response.body.['access_token']);
//          HelperFunktions.saveCurrentUserId(response.body.['id']);
      }
    } catch(e) {
      print('---- Error response -------');
      print(e);
    }
  }

  Future logout() async {
    try {
      http.Response response  = await http.delete(
          Uri.encodeFull(loginPath + '/${HelperFunktions.getThoken()}'),
          headers: <String, String>{
            'Authorization': HelperFunktions.getThoken().toString(),
            'Accept': 'application/json'
          });

      print('----- Body response --------');
      if (response.statusCode.toString() == '200') {
        print('Status code: ' + response.statusCode.toString());
        print(response.body);

//        HelperFunktions.saveBenutzernummer(benutzerNummer);
//          HelperFunktions.saveThoken(response.body['Token']);
      }
    } catch(e) {
      print('---- Error response -------');
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