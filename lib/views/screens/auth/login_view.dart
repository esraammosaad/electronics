import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_app/core/constants/assets.dart';
import 'package:my_app/core/constants/routes.dart';
import 'package:my_app/core/constants/styles.dart';
import '../../widgets/auth/custom_auth_bg.dart';
import '../../widgets/auth/custom_auth_bg_image.dart';
import '../../widgets/auth/custom_auth_row.dart';
import '../../widgets/auth/custom_contact_me_row.dart';
import '../../widgets/auth/custom_divider.dart';
import '../../widgets/auth/custom_login_form.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            const CustomAuthBgImage(image: AppImages.loginBg),
            const CustomAuthBg(),
            Align(
              alignment: Alignment.center,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width * 0.1,
                          right: MediaQuery.of(context).size.width * 0.1),
                      child: const CustomLoginForm(),
                    ),
                    const SizedBox(
                      height: 29,
                    ),
                    const CustomDivider(),
                    const SizedBox(
                      height: 29,
                    ),
                    Text(
                      'Contact Me:',
                      style: GoogleFonts.inter(
                          textStyle: Styles.textStyle16.copyWith(
                              color: Colors.black,
                              fontWeight: FontWeight.w600)),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                     const CustomContactMeRow(),
                    const SizedBox(
                      height: 29,
                    ),
                    CustomAuthRow(
                        textOne: "Don't have any account?",
                        textTwo: 'Register',
                        onTap: () {

                          Get.toNamed(AppRoutes.registerView);
                        }),

                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

