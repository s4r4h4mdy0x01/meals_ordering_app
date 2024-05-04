import 'package:flutter/material.dart';
import 'package:meals_ordering_app/app.dart';
import 'package:meals_ordering_app/core/router/app_router.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
void main() {
   WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  runApp(MealsOrderingApp(
    appRouter: AppRouter(),
  ));
   FlutterNativeSplash.remove();
}

