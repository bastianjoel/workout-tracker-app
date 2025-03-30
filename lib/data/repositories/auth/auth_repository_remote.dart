import 'package:result_dart/result_dart.dart';
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
  Future<Result<void>> loginApi({
    required String apiKey,
  }) async {
    try {
      await _sharedPreferencesService.setApiKey(apiKey);
      _isAuthenticated = true;
      return Success(0);
    } on Exception catch (e) {
      return Failure(e);
    }
  }

  @override
  Future<Result<void>> login({
    required String email,
    required String password,
  }) async {
    try {
      // Simulate a network request
      await Future.delayed(const Duration(seconds: 1));

      _isAuthenticated = true;
      return Success(0);
    } on Exception catch (e) {
      return Failure(e);
    }
  }

  @override
  Future<Result<void>> logout() async {
    try {
      await _sharedPreferencesService.setApiKey(null);
      _isAuthenticated = false;
      return Success(0);
    } on Exception catch (e) {
      return Failure(e);
    }
  }
}
