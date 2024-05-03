import 'package:flutter/material.dart';
import 'package:meals_ordering_app/core/string.dart';
import 'package:meals_ordering_app/core/theming/colors.dart';
import 'package:meals_ordering_app/core/theming/styles.dart';

class MealImageAndText extends StatelessWidget {
  const MealImageAndText({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          foregroundDecoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [
                  ColorManager.white,
                  ColorManager.white.withOpacity(0.0),
                ],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                stops: const [0.14, 0.4]),
          ),
          child: Image.asset(StringManager.imageOnboading),
        ),
        Positioned(
          bottom: 22,
          left: 0,
          right: 0,
          child: Text(
            StringManager.titleBestApp,
            textAlign: TextAlign.center,
            style: TextStyles.font32orangBold.copyWith(
              height: 1.3,
            ),
          ),
        ),
      ],
    );
  }
}
