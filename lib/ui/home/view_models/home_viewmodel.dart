import 'package:workout_tracker_app/data/repositories/auth/auth_repository.dart';

class HomeViewModel {
  HomeViewModel({
    required AuthRepository authRepository 
  }) : _authRepository = authRepository;

  final AuthRepository _authRepository;

  Future<void> logout() async {
    await _authRepository.logout();
  }
}
