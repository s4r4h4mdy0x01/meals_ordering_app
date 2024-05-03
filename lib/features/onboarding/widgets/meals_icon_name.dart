import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meals_ordering_app/core/string.dart';
import 'package:meals_ordering_app/core/theming/colors.dart';
import 'package:meals_ordering_app/core/theming/styles.dart';

class MealsIconAndName extends StatelessWidget {
  const MealsIconAndName({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.fastfood,
          color: ColorManager.primary,
          size: 24.sp,
        ),
        SizedBox(
          width: 6.w, 
        ),
        Text(
          StringManager.titleApp,
          style: TextStyles.font24BlackBold,
        ),
      ],
    );
  }
}
