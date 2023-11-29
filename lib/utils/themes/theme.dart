import 'package:flutter/material.dart';
import 'package:login_signup/utils/themes/theme_widget/text_theme.dart';
class AppTheme {
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
   primaryColorDark:Colors.black ,    
   primaryColorLight:Colors.white ,    

  textTheme: MyTextTheme.lightTextTheme

  );



  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    textTheme: MyTextTheme.darkTextTheme,
     primaryColorDark:Colors.white ,  
     primaryColorLight:Colors.black ,    

  );



}
