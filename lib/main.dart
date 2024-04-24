import 'package:flutter/material.dart';
import 'package:meals_ordering_app/core/router/app_router.dart';
import 'package:meals_ordering_app/core/router/routes.dart';

void main() {
  runApp(const MealsOrderingApp());
}

class MealsOrderingApp extends StatelessWidget {
  const MealsOrderingApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     debugShowCheckedModeBanner: false,  
    
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.orange),
        useMaterial3: true,
      ),
   onGenerateRoute: AppRouter.onGenerate,
   initialRoute:  RoutesString.homeScrean,
    );
  }
}

