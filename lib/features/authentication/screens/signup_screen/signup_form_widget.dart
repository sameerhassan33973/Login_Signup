// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:login_signup/common_widgets/app_text.dart';
import 'package:login_signup/common_widgets/text_form_field/textFormField.dart';
import 'package:login_signup/constants/text_strings.dart';
import 'package:sizer/sizer.dart';

class SignUpFormWidget extends StatelessWidget {
  SignUpFormWidget({
    Key? key,
  }) : super(key: key);
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController phonenoController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Form(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 3.h),
            MyTextFormField(
              controller: nameController,
              hintText: fullname,
            ),
            SizedBox(height: 2.h),
            MyTextFormField(
              controller: emailController,
              hintText: email,
            ),
            SizedBox(height: 2.h),
            MyTextFormField(
              controller: phonenoController,
              hintText: phoneno,
            ),
            SizedBox(height: 2.h),
            MyTextFormField(
              controller: phonenoController,
              hintText: password,
            ),
            SizedBox(height: 2.h),
            Container(
                width: double.infinity,
                height: 8.h,
                child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Theme.of(context).primaryColorDark),
                    child: AppText(
                      text: signupText,
                      color: Theme.of(context).primaryColorLight,
                      weight: FontWeight.bold,
                      fontsize: 20.sp,
                    )))
          ],
        ),
      ),
    );
  }
}
