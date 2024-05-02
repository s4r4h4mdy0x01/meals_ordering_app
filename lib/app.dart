import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meals_ordering_app/core/router/app_router.dart';
import 'package:meals_ordering_app/core/router/routes.dart';
import 'package:meals_ordering_app/core/theming/colors.dart';

class MealsOrderingApp extends StatelessWidget {
 final AppRouter appRouter;
  const MealsOrderingApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812) ,
      splitScreenMode : true,

      minTextAdapt: true,
      child: MaterialApp(

        debugShowCheckedModeBanner: false,
        title: 'Meals Ordering',
        theme: ThemeData(
          primaryColor:  ColorManager.primary,
          scaffoldBackgroundColor:  ColorManager.white,
        ),
        onGenerateRoute: AppRouter.onGenerate,
        initialRoute: RoutesString.onboardingScrean,
      ),
    );
  }
}
