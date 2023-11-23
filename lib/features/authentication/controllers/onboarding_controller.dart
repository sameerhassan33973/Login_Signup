import 'package:get/get.dart';
import 'package:liquid_swipe/PageHelpers/LiquidController.dart';

class OnboardingController extends GetxController{
  final liquidController=LiquidController();
  RxInt currentPage=0.obs;


onPageChangeCallback(){
  currentPage.value=liquidController.currentPage;
}

}