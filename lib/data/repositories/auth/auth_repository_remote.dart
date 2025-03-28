import 'auth_repository.dart';

class AuthRepositoryRemote extends AuthRepository {
  bool? _isAuthenticated;

  @override
  Future<bool> get isAuthenticated async {
    if (_isAuthenticated != null) {
      return _isAuthenticated!;
    }

    return _isAuthenticated ?? false;
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
    // Simulate a network request
    await Future.delayed(const Duration(seconds: 1));

    _isAuthenticated = false;
  }
}
