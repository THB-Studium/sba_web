import 'package:shared_preferences/shared_preferences.dart';

class HelperFunktions {

  static String sharedThoken = 'thoken';
  static String sharedBenutzernummer = 'benutzernummer';
  static String sharedCurrentUserId = 'currentUserId';
  static String sharedLoggedInKey = 'LoggedInKey';


  // to save data to SharedPreference...................

  /// to save sharedLoggedInKey
  static Future<void> saveLoggedUserInfos(bool isLoggedIn) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return await prefs.setBool(sharedLoggedInKey, isLoggedIn);
  }

  /// to save sharedBenutzernummer
  static Future<void> saveBenutzernummer(String benutzernummer) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return await prefs.setString(sharedLoggedInKey, benutzernummer);
  }

  /// to save sharedCurrentUserId
  static Future<void> saveCurrentUserId(String currentUserId) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return await prefs.setString(sharedLoggedInKey, currentUserId);
  }

  /// to save sharedThoken
  static Future<void> saveThoken(String thoken) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return await prefs.setString(sharedLoggedInKey, thoken);
  }


  // to get data from SharedPreference..............

  /// to get sharedLoggedInKey
  static Future<bool> getLoggedUserInfos() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return await prefs.getBool(sharedLoggedInKey);
  }

  /// to get sharedBenutzernummer
  static Future<String> getBenutzernummer() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return await prefs.getString(sharedLoggedInKey);
  }

  /// to get sharedCurrentUserId
  static Future<String> getCurrentUserId() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return await prefs.getString(sharedLoggedInKey);
  }

  /// to get sharedThoken
  static Future<String> getThoken() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return await prefs.getString(sharedLoggedInKey);
  }

}