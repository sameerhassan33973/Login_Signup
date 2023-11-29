import 'package:flutter/material.dart';
import 'package:login_signup/constants/image_strings.dart';
import 'package:login_signup/features/authentication/screens/signup_screen/signup_footer.dart';
import 'package:login_signup/features/authentication/screens/signup_screen/signup_form_widget.dart';
import 'package:login_signup/features/authentication/screens/signup_screen/signup_header.dart';
import 'package:sizer/sizer.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(5.h),
            child: Column(
              children: [
                FormHeaderWidget(
                  image: welcomeScreenImage,
                  title: "Get on Board",
                  subTitle: "Create your profile to start your journey",
                ),
                SignUpFormWidget(),
                SignUpFooterWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
