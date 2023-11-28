// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:login_signup/common_widgets/app_text.dart';
import 'package:login_signup/constants/colors.dart';
import 'package:login_signup/features/authentication/controllers/onboarding_controller.dart';
import 'package:sizer/sizer.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatelessWidget {
  OnboardingScreen({super.key});

  OnboardingController bcontroller = Get.put(OnboardingController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          alignment: Alignment.center,
          children: [
            LiquidSwipe(
              pages: bcontroller.pages,
              liquidController: bcontroller.liquidController,
              enableSideReveal: true,
              enableLoop: false,
              onPageChangeCallback: (currentpage) {
                bcontroller.onPageChangeCallback(currentpage);
              },
              slideIconWidget: const Icon(Icons.arrow_back_ios),
            ),
            Positioned(
                bottom: 60.0,
                child: OutlinedButton(
                  onPressed: bcontroller.nextButtonPressed,
                  style: ElevatedButton.styleFrom(
                    foregroundColor: whiteColor,
                    side: const BorderSide(color: Colors.black26),
                    shape: const CircleBorder(),
                    padding: EdgeInsets.all(3.h),
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
              child: Obx(
                () => AnimatedSmoothIndicator(
                  count: 3,
                  activeIndex: bcontroller.currentPage.value,
                  effect: WormEffect(activeDotColor: darkColor, dotHeight: 2.h),
                ),
              ),
            ),
            Positioned(
              top: 1,
              right: 20,
              child: TextButton(
                  onPressed: bcontroller.skipPressed,
                  child: AppText(
                    text: "Skip",
                    weight: FontWeight.w500,
                    color: Colors.black45,
                    fontsize: 14.sp,
                  )),
            )
          ],
        ),
      ),
    );
  }
}
