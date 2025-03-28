import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesService {
  static const _apiKey = 'API_KEY';

  Future<void> setApiKey(String? value) async {
    final prefs = await SharedPreferences.getInstance();
    if (value == null) {
      await prefs.remove(_apiKey);
    } else {
      await prefs.setString(_apiKey, value);
    }
  }

  Future<String?> getApiKey() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(_apiKey);
  }
}
