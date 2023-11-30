import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:login_signup/common_widgets/app_text.dart';
import 'package:login_signup/constants/text_strings.dart';
import 'package:sizer/sizer.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(2.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AppText(
              text: otpTitle,
              fontsize: 26.sp,
              weight: FontWeight.bold,
              isunderline: true,
            ),
            SizedBox(height: 1.5.h),
            AppText(
              text: "$otpMessage support@codingwitht.com",
              textAlignment: TextAlign.center,
              fontsize: 14.sp,
            ),
            SizedBox(height: 7.h),
            OtpTextField(
                mainAxisAlignment: MainAxisAlignment.center,
                numberOfFields: 5,
                fieldWidth: 15.w,
                textStyle: TextStyle(fontSize: 20.sp),
                onSubmit: (code) => print("OTP is => $code")),
            SizedBox(height: 9.h),
            Container(
                width: double.infinity,
                height: 7.h,
                child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Theme.of(context).primaryColorDark),
                    child: AppText(
                      text: "Next",
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
