import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meals_ordering_app/core/helpers/spacing.dart';
import 'package:meals_ordering_app/core/string.dart';
import 'package:meals_ordering_app/core/theming/styles.dart';
import 'package:meals_ordering_app/core/widgets/app_text_button.dart';
import 'package:meals_ordering_app/core/widgets/app_text_form_field.dart';
import 'package:meals_ordering_app/features/login/ui/already_have_account.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isObscure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 30.h, horizontal: 30.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                verticalSpace(100),
                Text(
                  StringManager.login,
                  style: TextStyles.font24BlackBold,
                ),
                verticalSpace(20),
                Column(
                  children: [
                    const AppTextFormField(
                      hintText: 'Email',
                      keyboardType: TextInputType.emailAddress,
                    ),
                    verticalSpace(8),
                    AppTextFormField(
                      hintText: 'Password',
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: isObscure,
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            isObscure = !isObscure;
                          });
                        },
                        icon: Icon(
                          isObscure ? Icons.visibility_off : Icons.visibility,
                        ),
                      ),
                    ),
                    verticalSpace(12),
                    AppTextButton(
                      buttonText: 'Login',
                      textStyle: TextStyles.font16WhiteMedium,
                      onPressed: () {},
                    ),
                    verticalSpace(10),
                    //? todo
                    Align(
                      alignment: Alignment.topRight,
                      child: GestureDetector(
                        child: Text(
                          'Forgot Password?',
                          style: TextStyles.font116orangRegular,
                        ),
                      ),
                    ),
                    verticalSpace(70),
                    const AlreadyHaveAccount(),
                    verticalSpace(70),
                  ],
                ),
              ],
            ),
            
          ),
        ),
      ),
    );
  }
}
