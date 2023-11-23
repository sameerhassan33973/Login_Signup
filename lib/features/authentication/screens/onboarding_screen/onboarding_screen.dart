import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:login_signup/common_widgets/app_text.dart';
import 'package:login_signup/constants/colors.dart';
import 'package:login_signup/constants/image_strings.dart';
import 'package:login_signup/constants/text_strings.dart';
import 'package:login_signup/features/authentication/controllers/onboarding_controller.dart';
import 'package:login_signup/features/authentication/models/onboarding_model.dart';
import 'package:login_signup/features/authentication/screens/onboarding_screen/onboarding_page_widget.dart';
import 'package:sizer/sizer.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatelessWidget {
  OnboardingScreen({super.key});

 OnboardingController bcontroller = Get.put(OnboardingController());

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



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          alignment: Alignment.center,
          children: [
            LiquidSwipe(
              pages: pages,
              liquidController:bcontroller.liquidController,
              enableSideReveal: true,
              onPageChangeCallback: bcontroller.onPageChangeCallback(),
              slideIconWidget:const Icon(Icons.arrow_back_ios),
            ),
            Positioned(
                bottom: 60.0,
                child: OutlinedButton(
                  onPressed: () {
                    int nextPage=bcontroller.liquidController.currentPage+1;
                    bcontroller.liquidController.animateToPage(page: nextPage);
                  },
                  style: ElevatedButton.styleFrom(
                    side: const BorderSide(color: Colors.black26),
                    shape: const CircleBorder(),
                    padding: EdgeInsets.all(3.h),
                    onPrimary: whiteColor,
                  ),
                  child: Container(
                    height: 6.h,
                    width: 12.w,
                    decoration: const BoxDecoration(
                        color: darkColor, shape: BoxShape.circle),
                    child: const Icon(Icons.arrow_forward_ios),
                  ),
                )),
            Positioned(
              bottom: 10.0,
              child: AnimatedSmoothIndicator(
                count: 3,
                activeIndex: bcontroller.liquidController.currentPage,
                effect: WormEffect(
                  activeDotColor: darkColor,
                  dotHeight: 2.h
                ),
              ),
               ),
             Positioned(
              top: 1,
              right: 20,
              child: TextButton(
                onPressed: (){
                  bcontroller.liquidController.jumpToPage(page: 2);
                },
                child: AppText(text:"Skip",weight: FontWeight.w500,color: Colors.black45,fontsize: 14.sp,)),
             )  
          ],
        ),
      ),
    );
  }


}
