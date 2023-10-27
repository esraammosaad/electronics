import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_app/core/constants/routes.dart';
import 'package:my_app/views/screens/landing_view.dart';
import 'package:my_app/views/screens/auth/login_view.dart';
import 'package:my_app/views/screens/on_boarding_view.dart';
import 'package:my_app/views/screens/auth/register_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      routes: {
        AppRoutes.onBoardingView:(context)=>const OnBoardingView(),
        AppRoutes.loginView:(context)=>const LoginView(),
        AppRoutes.registerView:(context)=>const RegisterView(),
        AppRoutes.landingView:(context)=>const LandingView(),
      },


      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: GoogleFonts.robotoCondensedTextTheme(ThemeData.dark().textTheme),
        brightness: Brightness.dark,
        useMaterial3: true,
      ),
    );
  }
}
