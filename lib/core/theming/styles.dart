import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meals_ordering_app/core/theming/colors.dart';

class TextStyles {
  static TextStyle font24BlackBold = TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeight.w700,
    color: Colors.black,
  );
  static TextStyle font32OriginBold = TextStyle(
    fontSize: 32.sp,
    fontWeight: FontWeight.bold,
    color: ColorManager.primary,
  );
   static TextStyle font24Origin = TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeight.w600,
    color: ColorManager.primary,
  );
}
