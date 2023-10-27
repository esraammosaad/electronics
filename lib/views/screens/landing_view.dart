import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_app/core/constants/assets.dart';
import 'package:my_app/core/constants/colors.dart';
import 'package:my_app/core/constants/routes.dart';
import 'package:my_app/core/constants/styles.dart';
import 'package:my_app/views/widgets/auth/custom_auth_bg_image.dart';
import 'package:my_app/views/widgets/auth/custom_button.dart';

class LandingView extends StatelessWidget {
  const LandingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const CustomAuthBgImage(image: AppImages.landingBg),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 64.0),
            child: Column(

              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const Spacer(flex: 10,),

                CustomButton(
                    buttonText: 'Get Started',
                    onPressed: () {
                      Get.toNamed(AppRoutes.onBoardingView);
                    },
                    buttonColor: AppColors.purple,
                    borderRadius: 29,
                    buttonTextStyle: GoogleFonts.inter(
                        textStyle: Styles.textStyle24.copyWith(
                            color: AppColors.kScaffoldColor,
                            fontWeight: FontWeight.w700))),
                const SizedBox(
                  height: 33,
                ),
                CustomButton(
                  buttonText: 'login',
                  onPressed: () {
                    Get.toNamed(AppRoutes.loginView);
                  },
                  buttonColor: AppColors.kPrimaryColor,
                  borderRadius: 29,
                  buttonTextStyle: GoogleFonts.inter(
                      textStyle: Styles.textStyle24.copyWith(
                          color: AppColors.kScaffoldColor,
                          fontWeight: FontWeight.w700)),
                ),
                const Spacer(flex: 1,)
              ],
            ),
          )
        ],
      ),
    );
  }
}
