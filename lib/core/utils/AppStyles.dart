import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppStyles {
  static TextStyle landingScreenViewTextStyle() {
    return TextStyle(
      fontFamily: 'Gecko',
      fontSize: 30.sp,
      color: Colors.white,
      overflow: TextOverflow.visible,
    );
  }

  static TextStyle subTitleTextStyle() {
    return TextStyle(
      fontFamily: 'Plaguard',
      fontSize: 25.sp,
      color: Colors.white,
      overflow: TextOverflow.visible,
    );
  }

  static TextStyle landingButtonTextStyle() {
    return TextStyle(
      fontFamily: 'MPLUSCodeLatin',
      fontWeight: FontWeight.bold,
      fontSize: 10.sp,
      color: Colors.deepPurple,
    );
  }

  static TextStyle dashboardViewTextStyle() {
    return TextStyle(
      fontFamily: 'Inter',
      fontSize: 28.sp,
      fontWeight: FontWeight.w500,
      color: Colors.white,
    );
  }

  static TextStyle personalDetailsTextStyle({required double fontSize}) {
    return TextStyle(
      fontFamily: 'Inter',
      color: Colors.black,
      fontSize: fontSize,
    );
  }

  static TextStyle drawerStyles() {
    return const TextStyle(
      fontFamily: 'Inter',
      color: Colors.white,
    );
  }
}
