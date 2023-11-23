import 'package:get/get.dart';
import 'package:liquid_swipe/PageHelpers/LiquidController.dart';
import 'package:login_signup/constants/colors.dart';
import 'package:login_signup/constants/image_strings.dart';
import 'package:login_signup/constants/text_strings.dart';
import 'package:login_signup/features/authentication/models/onboarding_model.dart';
import 'package:login_signup/features/authentication/screens/onboarding_screen/onboarding_page_widget.dart';
import 'package:login_signup/utils/routes/route_config.dart';

class OnboardingController extends GetxController{
  final liquidController=LiquidController();
  RxInt currentPage=0.obs;



  final pages = [
    OnboardingPageWidget(
        model: OnboardingModel(
            image: onBoardingImage1,
            title: boardingTitle1,
            subtitle: boardingSubTitle1,
            counter: boardingCounter1,
            bgColor: onboardingPage1Color)),
    OnboardingPageWidget(
        model: OnboardingModel(
            image: onBoardingImage2,
            title: boardingTitle2,
            subtitle: boardingSubTitle2,
            counter: boardingCounter2,
            bgColor: onboardingPage2Color)),
    OnboardingPageWidget(
        model: OnboardingModel(
            image: onBoardingImage3,
            title: boardingTitle3,
            subtitle: boardingSubTitle3,
            counter: boardingCounter3,
            bgColor: onboardingPage3Color)),
  ];





onPageChangeCallback(int index){
  print("hjgehjg");
  currentPage(index);
}


skipPressed(){
Get.toNamed(Routes.main);
}
nextButtonPressed(){
     int nextPage=liquidController.currentPage+1;
     if(nextPage==3){
      Get.toNamed(Routes.main);
     }else{
          liquidController.animateToPage(page: nextPage);
}
}

}