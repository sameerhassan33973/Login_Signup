// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_signup/common_widgets/app_text.dart';
import 'package:login_signup/constants/colors.dart';
import 'package:login_signup/constants/image_strings.dart';
import 'package:login_signup/constants/text_strings.dart';
import 'package:login_signup/features/authentication/controllers/splash_screen_controller.dart';
import 'package:sizer/sizer.dart';

class SplashScreen extends StatelessWidget {
    SplashScreen({super.key});

final splashController=Get.put(SplashScreenController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(gradient: gradient1),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 15.h,
            ),
            Container(
              height: 40.h,
              width: 100.w,
              child: Image.asset(heartDoctor),
            ),
             SizedBox(
              height: 3.h,
            ),
            AppText(
             text:appMemo,
            textAlignment: TextAlign.center,
            fontsize: 12.sp,
            weight: FontWeight.w700,
            color: whiteColor,
            ),
            SizedBox(
              height: 15.h,
            ),
            const Center(
              child: CircularProgressIndicator(
                color: whiteColor,
              ),
            )
          ],
        ),
      ),
    );
  }
}
