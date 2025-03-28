import 'package:workout_tracker_app/data/repositories/auth/auth_repository.dart';

class LoginViewModel {
  LoginViewModel({
    required AuthRepository authRepository 
  }) : _authRepository = authRepository;

  final AuthRepository _authRepository;

  Future<void> loginApi({
    required String apiKey,
  }) async {
    await _authRepository.loginApi(apiKey: apiKey);
  }
}
