import 'dart:async';

import 'package:get/get.dart';
import 'package:login_signup/features/authentication/screens/onboarding_screen/onboarding_screen.dart';

class SplashScreenController extends GetxController{
  static SplashScreenController get find =>Get.find();

@override
  void onInit() {
      Timer(const Duration(seconds: 10), () async {
   //  Get.toNamed(Routes.main);
   Get.to(OnboardingScreen());
   });
    super.onInit();
  }
}