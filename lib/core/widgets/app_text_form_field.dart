import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meals_ordering_app/core/theming/colors.dart';
import 'package:meals_ordering_app/core/theming/styles.dart';

class AppTextFormField extends StatelessWidget {
  const AppTextFormField(
      {super.key,
      this.contentPadding,
      this.suffixIcon,
      this.fillColorBackground,
      this.hintStyle,
      this.obscureText,
      this.controller,
      this.keyboardType,
      required this.hintText,
      this.focusedBorder,
      this.enabledBorder});
  final EdgeInsetsGeometry? contentPadding;
  final Color? fillColorBackground;
  final Widget? suffixIcon;
  final String hintText;
  final TextStyle? hintStyle;
  final InputBorder? focusedBorder;
  final InputBorder? enabledBorder;
  final bool? obscureText;
  final TextInputType? keyboardType;
  final TextEditingController? controller;
//  final Function(String?) validator;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obscureText ?? false,
      keyboardType: keyboardType ?? TextInputType.none,
      decoration: InputDecoration(
        isDense: true,
        contentPadding: contentPadding ??
            EdgeInsets.symmetric(vertical: 20.h, horizontal: 18.w),
        filled: true,
        fillColor: fillColorBackground ?? ColorManager.lightGrey,
        enabledBorder: enabledBorder ??
            OutlineInputBorder(
                borderRadius: BorderRadius.circular(16.0),
                borderSide: BorderSide(color: ColorManager.grey)),
        focusedBorder: focusedBorder ??
            OutlineInputBorder(
                borderRadius: BorderRadius.circular(16.0),
                borderSide: BorderSide(color: ColorManager.primary)),
        errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16.0),
            borderSide: BorderSide(color: ColorManager.error, width: 1.3)),
        hintText: hintText,
        hintStyle: TextStyles.font13GrayRegular,
        suffixIcon: suffixIcon,
      ),
      style: TextStyles.font14DarkBlueMedium,
    );
  }
}
