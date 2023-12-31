abstract class Routes {
  Routes._();

  static const splash = Paths.splash;
  static const main = Paths.main;
  static const welcome = Paths.welcome;
  static const login = Paths.login;
  static const signup = Paths.signup;
  static const forget = Paths.forget;
  static const otp = Paths.otp;
}

abstract class Paths {
  static const splash = '/splash';
  static const main = '/main';
  static const welcome = '/welcome';
  static const login = '/login';
  static const signup = '/signup';
  static const forget = '/forget';
  static const otp = '/otp';
}
