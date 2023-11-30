// ignore_for_file: must_be_immutable
import 'package:flutter/material.dart';
import 'package:login_signup/common_widgets/app_text.dart';
import 'package:login_signup/common_widgets/text_form_field/textFormField.dart';
import 'package:login_signup/constants/text_strings.dart';
import 'package:login_signup/features/authentication/screens/forget_password/forget_password_options/forget_password_bottomsheet.dart';
import 'package:sizer/sizer.dart';

class LoginForm extends StatelessWidget {
  LoginForm({super.key});

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 6.w),
      child: Form(
        child: Container(
          child: Column(
            children: [
              MyTextFormField(
                icon: Icon(Icons.email),
                hintText: email,
                controller: emailController,
              ),
              SizedBox(height: 2.h),
              MyTextFormField(
                icon: Icon(Icons.fingerprint),
                hintText: password,
                ispassword: true,
                controller: passwordController,
              ),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {
                    ForgetPasswordScreen.buildShowModalBottomSheet(context);
                  },
                  child: AppText(
                    text: forgotPassword,
                    color: Color.fromARGB(255, 40, 116, 202),
                    fontsize: 14.sp,
                  ),
                ),
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
                        text: loginText,
                        color: Theme.of(context).primaryColorLight,
                        weight: FontWeight.bold,
                        fontsize: 20.sp,
                      )))
            ],
          ),
        ),
      ),
    );
  }
}
