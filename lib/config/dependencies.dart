import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'package:workout_tracker_app/data/services/api/api_client.dart';
import 'package:workout_tracker_app/data/services/shared_preferences_service.dart';

import '../data/repositories/auth/auth_repository.dart';
import '../data/repositories/auth/auth_repository_remote.dart';

/// Configure dependencies for remote data.
/// This dependency list uses repositories that connect to a remote server.
List<SingleChildWidget> get providersRemote {
  return [
    Provider(create: (context) => ApiClient()),
    Provider(create: (context) => SharedPreferencesService()),
    ChangeNotifierProvider(create: (context) => AuthRepositoryRemote(sharedPreferencesService: context.read()) as AuthRepository),
  ];
}
