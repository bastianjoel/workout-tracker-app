import 'package:flutter/foundation.dart';
import 'package:result_dart/result_dart.dart';

abstract class AuthRepository extends ChangeNotifier {
  /// Returns true when the user is logged in
  /// Returns [Future] because it will load a stored auth state the first time.
  Future<bool> get isAuthenticated;

  Future<Result<void>> login({required String email, required String password});

  Future<Result<void>> loginApi({required String apiKey});

  Future<Result<void>> logout();
}
