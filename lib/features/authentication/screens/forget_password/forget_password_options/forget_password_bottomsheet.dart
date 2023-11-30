import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_signup/common_widgets/app_text.dart';
import 'package:login_signup/constants/text_strings.dart';
import 'package:login_signup/features/authentication/screens/forget_password/forget_password_options/botttom_sheet_button_widget.dart';
import 'package:login_signup/utils/routes/route_config.dart';
import 'package:sizer/sizer.dart';

class ForgetPasswordScreen {
  static Future<dynamic> buildShowModalBottomSheet(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      builder: (context) => Container(
        padding: EdgeInsets.all(2.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 2.h,
            ),
            AppText(
                text: forgetPasswordTitle,
                fontsize: 19.sp,
                weight: FontWeight.bold),
            SizedBox(height: 2.h),
            AppText(text: forgetPasswordSubtitle, fontsize: 13.sp),
            SizedBox(height: 5.h),
            ForgetPasswordBtnWidget(
              onTap: () {
                Navigator.pop(context);
                Get.toNamed(Routes.forget);
              },
              title: email,
              subTitle: resetEmail,
              btnIcon: Icons.mail_outline_rounded,
            ),
            SizedBox(height: 3.h),
            ForgetPasswordBtnWidget(
              onTap: () {},
              title: phoneno,
              subTitle: resetPhone,
              btnIcon: Icons.mobile_friendly_rounded,
            ),
          ],
        ),
      ),
    );
  }
}
