import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meals_ordering_app/core/string.dart';
import 'package:meals_ordering_app/core/theming/styles.dart';
import 'package:meals_ordering_app/features/onboarding/widgets/get_started_button.dart';
import 'package:meals_ordering_app/features/onboarding/widgets/meals_icon_name.dart';
import 'package:meals_ordering_app/features/onboarding/widgets/meals_image_text.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(top: 30.h, bottom: 30.h),
              child: Column(
                children: [
                  const MealsIconAndName(),
                  SizedBox(
                    height: 60.h,
                  ),
                  const MealImageAndText(),
                  SizedBox(height: 90.h),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30.w),
                    child: Column(
                      children: [
                        Text(
                          StringManager.subTitleOnboading,
                          textAlign: TextAlign.center,
                          style: TextStyles.font13GraySemiBold,
                        ),
                        SizedBox(height: 30.h),
                        const GetStartedButton(),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
