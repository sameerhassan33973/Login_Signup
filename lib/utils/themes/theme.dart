import 'package:flutter/material.dart';
import 'package:login_signup/utils/themes/theme_widget/text_theme.dart';
class AppTheme {
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    primarySwatch:const MaterialColor(0xffFFE200, <int,Color>{
        50:Color(0x1AFFE200),
        100:Color(0x33FFE200),
        200:Color(0x40FFE200),
        300:Color(0x66FFE200),
        400:Color(0xFFFFE200),
        500:Color(0x99FFE200),
        600:Color(0xB3FFE200),
        700:Color(0xCCFFE200),
        800:Color(0xE6FFE200),
       }),
  textTheme: MyTextTheme.lightTextTheme

  );



  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    textTheme: MyTextTheme.darkTextTheme
  );



}
