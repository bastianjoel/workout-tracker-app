import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesService {
  static const _baseUrl = 'BASE_URL';
  static const _apiKey = 'API_KEY';
  static const _syncPedometer = 'SYNC_PEDOMETER';

  Future<void> setUrl(String? value) async {
    final prefs = await SharedPreferences.getInstance();
    if (value == null) {
      await prefs.remove(_baseUrl);
    } else {
      await prefs.setString(_baseUrl, value);
    }
  }

  Future<String?> getUrl() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(_baseUrl);
  }

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

  Future<void> setSyncPedometer(bool value) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(_syncPedometer, value);
  }

  Future<bool> getSyncPedometer() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getBool(_syncPedometer) ?? true;
  }
}
