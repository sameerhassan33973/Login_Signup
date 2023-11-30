// ignore_for_file: must_be_immutable, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:login_signup/common_widgets/app_text.dart';
import 'package:login_signup/features/authentication/models/onboarding_model.dart';
import 'package:sizer/sizer.dart';

class OnboardingPageWidget extends StatelessWidget {
  OnboardingModel model;

  OnboardingPageWidget({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            LiquidSwipe(pages: [
              Container(
                color: model.bgColor,
                child: Column(children: [
                  SizedBox(
                    height: 5.h,
                  ),
                  Container(
                    height: 30.h,
                    child: Image.asset(model.image),
                  ),
                  SizedBox(
                    height: 13.h,
                  ),
                  Column(children: [
                    Container(
                        height: 6.h,
                        child: AppText(
                          text: model.title,
                          fontsize: 14.sp,
                          textAlignment: TextAlign.center,
                          weight: FontWeight.w800,
                        )),
                    Container(
                        height: 17.h,
                        child: AppText(
                          text: model.subtitle,
                          fontsize: 12.sp,
                          textAlignment: TextAlign.center,
                        )),
                    AppText(
                      text: model.counter,
                      fontsize: 12.sp,
                      textAlignment: TextAlign.center,
                    ),
                  ]),
                ]),
              ),
            ])
          ],
        ),
      ),
    );
  }
}
