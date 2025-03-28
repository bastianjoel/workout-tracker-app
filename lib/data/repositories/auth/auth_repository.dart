import 'package:flutter/foundation.dart';

abstract class AuthRepository extends ChangeNotifier {
  /// Returns true when the user is logged in
  /// Returns [Future] because it will load a stored auth state the first time.
  Future<bool> get isAuthenticated;

  Future<void> login({required String email, required String password});

  Future<void> loginApi({required String apiKey});

  Future<void> logout();
}
