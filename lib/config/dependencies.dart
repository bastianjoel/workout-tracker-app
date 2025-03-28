import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

import '../data/repositories/auth/auth_repository.dart';
import '../data/repositories/auth/auth_repository_remote.dart';

/// Configure dependencies for remote data.
/// This dependency list uses repositories that connect to a remote server.
List<SingleChildWidget> get providersRemote {
  return [
    ChangeNotifierProvider(create: (_) => AuthRepositoryRemote() as AuthRepository),
  ];
}
