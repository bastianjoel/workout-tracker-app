abstract final class Routes {
  static const home = '/';
  static const login = '/login';
  static const workout = '/$workoutRelative';
  static const workoutRelative = 'workout';
  static String workoutWithId(int id) => '$workout/$id';
}
