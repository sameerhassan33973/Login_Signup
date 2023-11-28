import 'package:get/get.dart';
import 'package:login_signup/features/main_ui/MainScreen.dart';

class FadeInAnimationController extends GetxController {
  static FadeInAnimationController get find => Get.find();
  RxBool animate = false.obs;

  startAnimation() async {
    await Future.delayed(Duration(milliseconds: 500));
    animate.value = true;
    await Future.delayed(Duration(milliseconds: 5000));
    animate.value = true;
    await Future.delayed(Duration(milliseconds: 200));
    Get.offAll(() => MainScreen());
  }
}
