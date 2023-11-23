import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class MyTextTheme{
static  TextTheme lightTextTheme=TextTheme(
     headlineLarge: GoogleFonts.montserrat(
      color: Colors.black,
      fontSize:35.sp,
      fontWeight: FontWeight.bold,
     ),
      headlineMedium: GoogleFonts.montserrat(
      color: Colors.black,
      fontSize:23.sp,
      fontWeight: FontWeight.bold,
     ),
      headlineSmall: GoogleFonts.montserrat(
      color: Colors.black,
      fontSize:18.sp,
      fontWeight: FontWeight.bold,
     ),
     bodySmall: GoogleFonts.montserrat(
      color: Colors.black,
      fontSize:14.sp,
      fontWeight: FontWeight.w500,
     ),
     bodyMedium: GoogleFonts.montserrat(
      color: Colors.black,
      fontSize:17.sp,
      fontWeight: FontWeight.w500,
     ),
     bodyLarge: GoogleFonts.montserrat(
      color: Colors.black,
      fontSize:20.sp,
      fontWeight: FontWeight.w500,
     ),
 );

static TextTheme darkTextTheme=TextTheme(
     headlineLarge: GoogleFonts.montserrat(
      color: Colors.white,
      fontSize:35.sp,
      fontWeight: FontWeight.bold,
     ),
      headlineMedium: GoogleFonts.montserrat(
      color: Colors.white,
      fontSize:23.sp,
      fontWeight: FontWeight.bold,
     ),
      headlineSmall: GoogleFonts.montserrat(
      color: Colors.white,
      fontSize:18.sp,
      fontWeight: FontWeight.bold,
     ),
     bodySmall: GoogleFonts.montserrat(
      color: Colors.white,
      fontSize:14.sp,
      fontWeight: FontWeight.w500,
     ),
     bodyMedium: GoogleFonts.montserrat(
      color: Colors.white,
      fontSize:17.sp,
      fontWeight: FontWeight.w500,
     ),
     bodyLarge: GoogleFonts.montserrat(
      color: Colors.white,
      fontSize:20.sp,
      fontWeight: FontWeight.w500,
     ),
 );

}