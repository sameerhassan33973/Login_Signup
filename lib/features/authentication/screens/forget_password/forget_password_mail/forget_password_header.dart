// ignore_for_file: must_be_immutable
import 'package:flutter/material.dart';
import 'package:login_signup/common_widgets/app_text.dart';
import 'package:login_signup/constants/image_strings.dart';
import 'package:login_signup/constants/text_strings.dart';
import 'package:sizer/sizer.dart';

class ForgetPasswordHeader extends StatelessWidget {
  ForgetPasswordHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 2.h,
        ),
        Container(
          height: 35.h,
          width: 100.w,
          child: Image.asset(forgetPasswordImage),
        ),
        SizedBox(
          height: 2.h,
        ),
        AppText(
          text: forgetPassword,
          fontsize: 23.sp,
          weight: FontWeight.bold,
          textAlignment: TextAlign.center,
        ),
        SizedBox(
          height: 2.h,
        ),
        Center(
            child: AppText(
          text: mailverification,
          fontsize: 13.sp,
          textAlignment: TextAlign.center,
          weight: FontWeight.w500,
        ))
      ],
    );
  }
}
