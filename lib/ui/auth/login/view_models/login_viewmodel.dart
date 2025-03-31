import 'package:result_dart/result_dart.dart';
import 'package:flutter_command/flutter_command.dart';
import 'package:workout_tracker_app/data/repositories/auth/auth_repository.dart';

class LoginViewModel {
  LoginViewModel({required AuthRepository authRepository})
      : _authRepository = authRepository {
    loginApi = Command.createAsync<String, Result<void>?>(_loginApi,
        initialValue: null);
  }

  final AuthRepository _authRepository;

  late Command<String, Result<void>?> loginApi;

  Future<Result<void>> _loginApi(String apiKey) async {
    final result = await _authRepository.loginApi(apiKey: apiKey);
    return result;
  }
}
