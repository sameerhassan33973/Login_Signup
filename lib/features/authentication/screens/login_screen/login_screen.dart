import 'package:flutter/material.dart';
import 'package:login_signup/features/authentication/screens/login_screen/login_footer.dart';
import 'package:login_signup/features/authentication/screens/login_screen/login_form_widget.dart';
import 'package:login_signup/features/authentication/screens/login_screen/login_header.dart';
import 'package:sizer/sizer.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 5.h),
            LoginHeader(),
            SizedBox(height: 5.h),
            LoginForm(),
            SizedBox(height: 2.h),
            LoginFooter(),
          ],
        ),
      ),
    );
  }
}
