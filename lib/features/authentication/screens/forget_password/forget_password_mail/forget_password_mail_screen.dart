import 'package:flutter/material.dart';
import 'package:login_signup/common_widgets/app_text.dart';
import 'package:login_signup/common_widgets/text_form_field/textFormField.dart';
import 'package:login_signup/constants/text_strings.dart';
import 'package:login_signup/features/authentication/screens/forget_password/forget_password_mail/forget_password_header.dart';
import 'package:login_signup/utils/routes/route_config.dart';
import 'package:sizer/sizer.dart';
import 'package:get/get.dart';

class ForgetPasswordMailScreen extends StatelessWidget {
  const ForgetPasswordMailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(2.h),
            child: Column(
              children: [
                SizedBox(height: 2.h),
                ForgetPasswordHeader(),
                SizedBox(height: 5.h),
                Form(
                  child: Column(
                    children: [
                      MyTextFormField(
                        hintText: email,
                        icon: Icon(Icons.mail_outline_rounded),
                      ),
                      SizedBox(height: 5.h),
                      Container(
                          width: double.infinity,
                          height: 7.h,
                          child: ElevatedButton(
                              onPressed: () {
                                Get.toNamed(Routes.otp);
                              },
                              style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                      Theme.of(context).primaryColorDark),
                              child: AppText(
                                text: "Next",
                                color: Theme.of(context).primaryColorLight,
                                weight: FontWeight.bold,
                                fontsize: 20.sp,
                              )))
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
