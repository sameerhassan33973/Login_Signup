// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_signup/common_widgets/app_text.dart';
import 'package:login_signup/common_widgets/fade_in_animation/animation.dart';
import 'package:login_signup/common_widgets/fade_in_animation/fade_in_animation_controller.dart';
import 'package:login_signup/common_widgets/fade_in_animation/fade_in_animation_model.dart';
import 'package:login_signup/constants/colors.dart';
import 'package:login_signup/constants/image_strings.dart';
import 'package:login_signup/constants/text_strings.dart';
import 'package:login_signup/features/authentication/controllers/welcome_controller.dart';
import 'package:sizer/sizer.dart';

class WelcomeScreen extends StatelessWidget {
  WelcomeScreen({super.key});

  WelcomeController controller = Get.put(WelcomeController());
  final fadeInAnimationController = Get.put(FadeInAnimationController());

  @override
  Widget build(BuildContext context) {
    fadeInAnimationController.startAnimation();
    return Scaffold(
      body: Stack(
        children: [
          FadeInAnimation(
              durationInMilliSeconds: 1600,
        animationmodel: AnimatePosition(
            topBefore: -70,
            topAfter: 4.h,
            leftBefore: -30,
            leftAfter: 10),
            child: Container(
              height: 50.h,
              width: 100.w,
              child: Image.asset(welcomeScreenImage),
            ),
          ),
          
          Padding(
           padding: EdgeInsets.only(top:5.h),
            child: Center(
              child: AppText(
                text: appname,
                fontsize: 23.sp,
                weight: FontWeight.bold,
                isunderline: true,
              ),
            ),
          ),
         
          Padding(
            padding:  EdgeInsets.only(top:29.h),
            child: Center(
              child: AppText(
                text: welcomeSubtitle,
                fontsize: 13.sp,
                textAlignment: TextAlign.center,
              ),
            ),
          ),
         
          Padding(
            padding:  EdgeInsets.only(top: 74.h),
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  OutlinedButton(
                    onPressed: () {
                      controller.onLoginPress();
                    },
                    style: ElevatedButton.styleFrom(
                        minimumSize: Size(40.w, 6.h),
                        shape: RoundedRectangleBorder(),
                        foregroundColor:
                            Theme.of(context).textTheme.headlineLarge!.color,
                        side: BorderSide(
                            color: Theme.of(context)
                                    .textTheme
                                    .headlineLarge!
                                    .color ??
                                darkColor)),
                    child: AppText(text: loginText),
                  ),
                  OutlinedButton(
                    onPressed: () {
                      controller.onSignupPress();
                    },
                    style: ElevatedButton.styleFrom(
                        minimumSize: Size(40.w, 6.h),
                        shape: RoundedRectangleBorder(),
                        foregroundColor: Theme.of(context).primaryColorLight,
                        backgroundColor: Theme.of(context).primaryColorDark,
                        side: BorderSide(
                            color: Theme.of(context)
                                    .textTheme
                                    .headlineLarge!
                                    .color ??
                                darkColor)),
                    child: AppText(
                      text: signupText.toUpperCase(),
                      fontsize: 15.sp,
                      color: Theme.of(context).primaryColorLight,
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
