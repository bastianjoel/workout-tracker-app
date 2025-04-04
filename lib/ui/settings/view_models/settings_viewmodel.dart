import 'package:flutter_command/flutter_command.dart';
import 'package:result_dart/result_dart.dart';
import 'package:workout_tracker_app/data/repositories/auth/auth_repository.dart';

class SettingsViewModel {
  SettingsViewModel({required AuthRepository authRepository})
      : _authRepository = authRepository {
    logout = Command.createAsyncNoParam(_logout, initialValue: null);
  }

  final AuthRepository _authRepository;

  late Command<void, Result<void>?> logout;

  Future<Result<void>?> _logout() async {
    return await _authRepository.logout();
  }
}
