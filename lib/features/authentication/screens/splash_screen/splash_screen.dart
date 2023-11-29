// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_signup/common_widgets/app_text.dart';
import 'package:login_signup/common_widgets/fade_in_animation/animation.dart';
import 'package:login_signup/common_widgets/fade_in_animation/fade_in_animation_controller.dart';
import 'package:login_signup/common_widgets/fade_in_animation/fade_in_animation_model.dart';
import 'package:login_signup/constants/colors.dart';
import 'package:login_signup/constants/image_strings.dart';
import 'package:login_signup/constants/text_strings.dart';
import 'package:sizer/sizer.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({super.key});

  final fadeInAnimationController = Get.put(FadeInAnimationController());

  @override
  Widget build(BuildContext context) {
    fadeInAnimationController.startSplashAnimation();
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(gradient: gradient1),
        child: Stack(
          children: [
            FadeInAnimation(
              durationInMilliSeconds: 1600,
              animationmodel: AnimatePosition(
                  topBefore: -70,
                  topAfter: 10.h,
                  leftBefore: -30,
                  leftAfter: 10),
              child: Container(
                height: 40.h,
                width: 100.w,
                child: Image.asset(heartDoctor),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 13.h),
              child: Center(
                child: AppText(
                  text: appMemo,
                  textAlignment: TextAlign.center,
                  fontsize: 12.sp,
                  weight: FontWeight.w700,
                  color: whiteColor,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 70.h),
              child: const Center(
                child: CircularProgressIndicator(
                  color: whiteColor,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
