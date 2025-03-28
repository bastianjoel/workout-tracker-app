import 'package:workout_tracker_app/data/services/shared_preferences_service.dart';

import 'auth_repository.dart';

class AuthRepositoryRemote extends AuthRepository {
  AuthRepositoryRemote({
    required SharedPreferencesService sharedPreferencesService,
  }) : _sharedPreferencesService = sharedPreferencesService;

  final SharedPreferencesService _sharedPreferencesService;

  bool? _isAuthenticated;

  @override
  Future<bool> get isAuthenticated async {
    if (_isAuthenticated != null) {
      return _isAuthenticated!;
    }

    final apiKey = await _sharedPreferencesService.getApiKey();
    if (apiKey != null) {
      _isAuthenticated = true;
    }

    return _isAuthenticated ?? false;
  }

  @override
  Future<void> loginApi({
    required String apiKey,
  }) async {
    await _sharedPreferencesService.setApiKey(apiKey);
    _isAuthenticated = true;
  }

  @override
  Future<void> login({
    required String email,
    required String password,
  }) async {
    // Simulate a network request
    await Future.delayed(const Duration(seconds: 1));

    _isAuthenticated = true;
  }

  @override
  Future<void> logout() async {
    await _sharedPreferencesService.setApiKey(null);
    _isAuthenticated = false;
  }
}
