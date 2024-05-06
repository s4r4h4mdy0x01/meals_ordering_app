import 'package:flutter/material.dart';
import 'package:meals_ordering_app/core/theming/styles.dart';

class AlreadyHaveAccount extends StatelessWidget {
  const AlreadyHaveAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
        text: TextSpan(children: [
      TextSpan(
          text: 'Already have an account?', style: TextStyles.font13Regular),
      TextSpan(
          text: 'Sign Up',
          style: TextStyles.font13OrangSemiBold),
    ]));
  }
}
