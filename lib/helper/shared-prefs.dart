import 'package:shared_preferences/shared_preferences.dart';

class SFP{
  static Future save(String key, String value) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(key, value);
    print('Saved : ' + key + " Value : " + value);
  }
  static Future getToken() async {
    final prefs = await SharedPreferences.getInstance();
    String token = prefs.getString('token');
    return token;
  }
}