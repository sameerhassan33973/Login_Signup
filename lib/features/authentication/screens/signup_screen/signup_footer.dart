import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_signup/common_widgets/app_text.dart';
import 'package:login_signup/constants/colors.dart';
import 'package:login_signup/constants/image_strings.dart';
import 'package:login_signup/constants/text_strings.dart';
import 'package:login_signup/utils/routes/route_config.dart';
import 'package:sizer/sizer.dart';

class SignUpFooterWidget extends StatelessWidget {
  const SignUpFooterWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 2.h),
        Center(
            child: AppText(
          text: "OR",
          fontsize: 13.sp,
          weight: FontWeight.bold,
        )),
        SizedBox(height: 2.h),
        Container(
          width: double.infinity,
          height: 8.h,
          child: OutlinedButton.icon(
            icon: Image.asset(googleIcon),
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                minimumSize: Size(40.w, 6.h),
                shape: RoundedRectangleBorder(),
                foregroundColor:
                    Theme.of(context).textTheme.headlineLarge!.color,
                side: BorderSide(
                    color: Theme.of(context).textTheme.headlineLarge!.color ??
                        darkColor)),
            label: AppText(
              text: googleSignupText,
              fontsize: 14.sp,
              weight: FontWeight.bold,
            ),
          ),
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: AppText(
                text: alreadyAccountText,
                fontsize: 12.sp,
              ),
            ),
            TextButton(
              onPressed: () {
                Get.toNamed(Routes.login);
              },
              child: AppText(
                text: loginText,
                weight: FontWeight.bold,
                color: Color.fromARGB(255, 40, 116, 202),
                fontsize: 16.sp,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
