// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class AppText extends StatelessWidget {
  String text;
  double? fontsize;
  Color? color;
  FontWeight? weight;
  TextAlign? textAlignment;
  bool? isunderline;
   AppText({super.key,required this.text,this.fontsize,this.textAlignment,this.weight,this.color,this.isunderline=false});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,style: TextStyle(
        fontSize: fontsize ?? 18.sp,
        color: color??Theme.of(context).textTheme.bodyLarge?.color,
        fontWeight: weight??FontWeight.w400,
decoration:isunderline!?TextDecoration.underline:null
 ),
 textAlign:textAlignment?? TextAlign.left,
 );
  }
}

