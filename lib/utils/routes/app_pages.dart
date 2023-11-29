import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:login_signup/features/authentication/screens/login_screen/login_screen.dart';
import 'package:login_signup/features/authentication/screens/signup_screen/signup_screen.dart';
import 'package:login_signup/features/authentication/screens/splash_screen/splash_screen.dart';
import 'package:login_signup/features/authentication/screens/welcome_screen/welcome_screen.dart';
import 'package:login_signup/features/main_ui/MainScreen.dart';
import 'package:login_signup/utils/routes/route_config.dart';

class AppPages {
  AppPages._();

  static const initial = Routes.splash;

  static final routes = [
    GetPage(name: Paths.splash, page: () => SplashScreen()),
    GetPage(name: Paths.main, page: () => const MainScreen()),
    GetPage(name: Paths.login, page: () =>  LoginScreen()),
    GetPage(name: Paths.signup, page: () => SignupScreen()),
    GetPage(name: Paths.welcome, page: () =>  WelcomeScreen()),

  ];
}
