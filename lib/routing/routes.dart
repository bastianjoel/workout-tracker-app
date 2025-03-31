abstract final class Routes {
  static const home = '/';
  static const login = '/login';
  static const workouts = '/$workoutRelative';
  static const workoutRelative = 'workout';
  static String workoutWithId(int id) => '$workouts/$id';
  static const record = '/record';
  static const stats = '/statistics';
  static const settings = '/settings';
}
