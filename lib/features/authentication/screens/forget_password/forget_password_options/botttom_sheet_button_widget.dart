import 'package:flutter/material.dart';
import 'package:login_signup/common_widgets/app_text.dart';
import 'package:sizer/sizer.dart';

class ForgetPasswordBtnWidget extends StatelessWidget {
  const ForgetPasswordBtnWidget({
    required this.btnIcon,
    required this.title,
    required this.subTitle,
    required this.onTap,
    Key? key,
  }) : super(key: key);

  final IconData btnIcon;
  final String title, subTitle;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 3.h, horizontal: 5.w),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: Theme.of(context).primaryColorDark.withOpacity(0.2),
        ),
        child: Row(
          children: [
            Icon(
              btnIcon,
              size: 7.h,
            ),
            SizedBox(width: 4.w),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppText(
                  text: title,
                  fontsize: 14.sp,
                  weight: FontWeight.bold,
                ),
                AppText(
                  text: subTitle,
                  fontsize: 12.sp,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
