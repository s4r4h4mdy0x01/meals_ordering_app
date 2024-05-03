import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meals_ordering_app/core/helpers/extensions.dart';
import 'package:meals_ordering_app/core/router/routes.dart';
import 'package:meals_ordering_app/core/string.dart';
import 'package:meals_ordering_app/core/theming/colors.dart';
import 'package:meals_ordering_app/core/theming/styles.dart';

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(ColorManager.primary),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        minimumSize: MaterialStateProperty.all(
          Size(double.infinity, 52.h),
        ),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
      ),
      onPressed: () {
        context.pushNamed(RoutesString.loginScreen);
      },
      child: Text(
        StringManager.getStartedOnboading,
        style: TextStyles.font16WhiteSemiBold,
      ),
    );
  }
}
