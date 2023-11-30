import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:login_signup/features/authentication/screens/splash_screen/splash_screen.dart';
import 'package:login_signup/utils/routes/app_pages.dart';
import 'package:login_signup/utils/themes/theme.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Doc Time',
        theme: AppTheme.lightTheme,
        darkTheme: AppTheme.darkTheme,
        themeMode: ThemeMode.system, 
        defaultTransition:Transition.rightToLeft,
        transitionDuration: Duration(milliseconds: 1000),
        home:  SplashScreen(),
        initialRoute: AppPages.initial,
        getPages: AppPages.routes,
      );
    });
  }
}
