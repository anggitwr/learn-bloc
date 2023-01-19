import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppFont{
  static TextStyle get hero => TextStyle(
    fontSize: 54.sp,
    fontWeight: FontWeight.w700,
    color: Colors.black
  );

  static TextStyle get paragraf1 => TextStyle(
      fontSize: 36.sp,
      fontWeight: FontWeight.w400,
      color: Colors.black
  );

  static TextStyle get title => TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeight.bold,
    color: Colors.black
  );

  static TextStyle get textnormal => TextStyle(
      fontSize: 15.sp,
      fontWeight: FontWeight.w400,
      color: Colors.black
  );

  static TextStyle get smallBold => TextStyle(
    fontSize: 15.sp,
    fontWeight: FontWeight.bold,
    color: Colors.black
  );
}