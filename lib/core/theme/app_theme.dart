import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami/core/app_color.dart';
import 'package:islami/modules/layout/screen/quran_screen/surah_details.dart';
class AppTheme{
  static const Color blackColor =  Color(0xff242424);
  static ThemeData lightTheme = ThemeData(
     primaryColor: AppColor.bageColor,
      scaffoldBackgroundColor: Colors.transparent,
      fontFamily: GoogleFonts.elMessiri().fontFamily,
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(
          color: AppColor.blackColor
        ),
        centerTitle: true,
        elevation: 0,
        titleTextStyle:
        TextStyle(
            fontSize: 30,color: Color(0xff242424)
        ),
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        type:BottomNavigationBarType.fixed ,
        backgroundColor: AppColor.bageColor,
        selectedItemColor: AppColor.blackColor,
        showUnselectedLabels: false,
        unselectedItemColor: AppColor.whiteColor,
      ),
    textTheme: const TextTheme(
      bodyLarge: TextStyle(
        color: AppColor.blackColor,
        fontSize: 30,
        fontWeight: FontWeight.bold
      ),
      bodyMedium: TextStyle(
          color: AppColor.blackColor,
          fontSize: 25,
          fontWeight: FontWeight.w700,
    ),
      bodySmall: TextStyle(
          color: AppColor.blackColor,
          fontSize: 22,
          fontWeight: FontWeight.bold
    ),
      titleLarge: TextStyle(
          color: AppColor.blackColor,
          fontSize: 20,
          fontWeight: FontWeight.w400
      ),
    ),
  );
  static ThemeData darkTheme = ThemeData(
    primaryColor: AppColor.darkColor,
    scaffoldBackgroundColor: Colors.transparent,
    fontFamily: GoogleFonts.elMessiri().fontFamily,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.transparent,
      iconTheme: IconThemeData(
        color: AppColor.whiteColor
      ),
      centerTitle: true,
      elevation: 0,
      titleTextStyle:
      TextStyle(
          fontSize: 30,color: AppColor.whiteColor
      ),
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      type:BottomNavigationBarType.fixed ,
      backgroundColor: AppColor.darkColor,
      selectedItemColor: AppColor.yellowColor,
      showUnselectedLabels: false,
      unselectedItemColor: AppColor.whiteColor,
    ),
    textTheme: const TextTheme(
      bodyLarge: TextStyle(
          color: AppColor.whiteColor,
          fontSize: 30,
          fontWeight: FontWeight.bold
      ),
      bodyMedium: TextStyle(
        color: AppColor.whiteColor,
        fontSize: 25,
        fontWeight: FontWeight.w700,
      ),
      bodySmall: TextStyle(
          color: AppColor.whiteColor,
          fontSize: 22,
          fontWeight: FontWeight.bold
      ),
      titleLarge: TextStyle(
          color: AppColor.whiteColor,
          fontSize: 20,
          fontWeight: FontWeight.w400
      ),
    ),
  );
}
