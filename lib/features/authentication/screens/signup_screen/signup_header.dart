import 'package:flutter/material.dart';
import 'package:login_signup/common_widgets/app_text.dart';
import 'package:sizer/sizer.dart';

class FormHeaderWidget extends StatelessWidget {
  const FormHeaderWidget({
    Key? key,
    required this.image,
    required this.title,
    required this.subTitle,
    this.textAlign,
  }) : super(key: key);

  final String image, title, subTitle;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(height: 20.h, child: Image.asset(image)),
        SizedBox(height: 2.h),
        AppText(
          text: title,
          fontsize: 18.sp,
          weight: FontWeight.bold,
        ),
        SizedBox(height: 1.h),
        AppText(text: subTitle, fontsize: 12.sp, weight: FontWeight.bold),
      ],
    );
  }
}
