import 'package:get/get.dart';
import 'package:login_signup/features/authentication/screens/onboarding_screen/onboarding_screen.dart';

class FadeInAnimationController extends GetxController {
  static FadeInAnimationController get find => Get.find();
  RxBool animate = false.obs;

  startSplashAnimation() async {
    await Future.delayed(Duration(milliseconds: 500));
    animate.value = true;
    await Future.delayed(Duration(milliseconds: 5000));
    animate.value = false;
    await Future.delayed(Duration(milliseconds: 2000));
    Get.offAll(() => OnboardingScreen());
  }

  startAnimation() async {
    await Future.delayed(Duration(milliseconds: 500));
    animate.value = true;
  }

}
