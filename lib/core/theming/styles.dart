import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meals_ordering_app/core/theming/colors.dart';
import 'package:meals_ordering_app/core/theming/font_weight.dart';

class TextStyles {
  static TextStyle font24BlackBold = TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeightManager.bold,
    color: Colors.black,
  );
   static TextStyle font13OrangSemiBold = TextStyle(
    fontSize: 13.sp,
    fontWeight: FontWeightManager.semiBold,
    color: ColorManager.primary,
  );
  static TextStyle font32orangBold = TextStyle(
    fontSize: 32.sp,
    fontWeight: FontWeightManager.bold,
    color: ColorManager.primary,
  );
  static TextStyle font116orangRegular = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeightManager.regular,
    color: ColorManager.primary,
  );
  static TextStyle font13GrayRegular = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeightManager.regular,
    color: ColorManager.grey,
  );
  //? todo
   static TextStyle font13Regular = TextStyle(
    fontSize: 13.sp,
    fontWeight: FontWeightManager.regular,
    color: ColorManager.black,
  );
  static TextStyle font16WhiteMedium = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeightManager.medium,
    color: Colors.white,
  );
  static TextStyle font24Orang = TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeightManager.bold,
    color: ColorManager.primary,
  );
  static TextStyle font24DarkGreyRegular = TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeightManager.regular,
    color: ColorManager.darkGrey,
  );
   static TextStyle font14DarkBlueMedium = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeightManager.medium,
    color: ColorManager.darkPrimary,
  );
}
