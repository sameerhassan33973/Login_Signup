// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_signup/common_widgets/app_text.dart';
import 'package:login_signup/constants/colors.dart';
import 'package:login_signup/constants/image_strings.dart';
import 'package:login_signup/constants/text_strings.dart';
import 'package:login_signup/features/authentication/controllers/welcome_controller.dart';
import 'package:sizer/sizer.dart';

class WelcomeScreen extends StatelessWidget {
  WelcomeScreen({super.key});

  WelcomeController controller = Get.put(WelcomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 50.h,
              width: double.infinity,
              child: Image.asset(welcomeScreenImage),
            ),
            SizedBox(
              height: 2.h,
            ),
            AppText(
              text: appname,
              fontsize: 23.sp,
              weight: FontWeight.bold,
              isunderline: true,
            ),
            SizedBox(
              height: 1.h,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: AppText(
                text: welcomeSubtitle,
                fontsize: 13.sp,
                textAlignment: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Row(
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
            )
          ],
        ),
      ),
    );
  }
}
