import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_app/views/widgets/auth/custom_register_form.dart';
import '../../../core/constants/assets.dart';
import '../../widgets/auth/custom_auth_bg.dart';
import '../../widgets/auth/custom_auth_bg_image.dart';
import '../../widgets/auth/custom_auth_row.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      body: SafeArea(
        child: Stack(
          children: [
            const CustomAuthBgImage(image: AppImages.registerBg),
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
                      child: const CustomRegisterForm(),
                    ),
                    const SizedBox(
                      height: 29,
                    ),



                    CustomAuthRow(
                        textOne: "I already have an account?",
                        textTwo: 'login',
                        onTap: () {

                          Get.back();
                        }),
                    const SizedBox(
                      height: 29,
                    ),
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
