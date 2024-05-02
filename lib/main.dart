import 'package:flutter/material.dart';
import 'package:meals_ordering_app/app.dart';
import 'package:meals_ordering_app/core/router/app_router.dart';
import 'package:meals_ordering_app/core/router/routes.dart';

void main() {
  runApp(MealsOrderingApp(
    appRouter: AppRouter(),
  ));
}
