// ignore_for_file: must_be_immutable
import 'package:flutter/material.dart';
import 'package:login_signup/common_widgets/app_text.dart';
import 'package:login_signup/constants/image_strings.dart';
import 'package:login_signup/constants/text_strings.dart';
import 'package:sizer/sizer.dart';

class LoginHeader extends StatelessWidget {
  LoginHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 20.h,
          width: 100.w,
          child: Image.asset(welcomeScreenImage),
        ),
        SizedBox(
          height: 2.h,
        ),
        AppText(
          text: loginTitle,
          fontsize: 18.sp,
          weight: FontWeight.bold,
          textAlignment: TextAlign.center,
        ),
        SizedBox(
          height: 1.h,
        ),
        Center(
            child: AppText(
          text: loginSubtitle,
          fontsize: 13.sp,
          weight: FontWeight.w500,
        ))
      ],
    );
  }
}
