import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_app/controllers/auth/auth_controller_imp.dart';
import 'package:my_app/core/constants/styles.dart';
import '../../../core/constants/colors.dart';
import 'custom_button.dart';
import 'custom_auth_second_text.dart';
import 'custom_auth_text.dart';
import 'custom_text_form_field.dart';
import 'custom_text_widget.dart';

class CustomLoginForm extends StatefulWidget {
  const CustomLoginForm({
    super.key,
  });

  @override
  State<CustomLoginForm> createState() => _CustomLoginFormState();
}

class _CustomLoginFormState extends State<CustomLoginForm> {
  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  AutovalidateMode autoValidateMode = AutovalidateMode.disabled;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AuthControllerImp>(
      builder: (AuthControllerImp controller) {
        return controller.isLoading
            ? const Center(child: CircularProgressIndicator())
            : Form(
                autovalidateMode: autoValidateMode,
                key: formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const CustomAuthText(text: 'Login'),
                    const SizedBox(
                      height: 29,
                    ),
                    const CustomAuthSecondText(
                        text: 'Please Login to your account'),
                    const SizedBox(
                      height: 29,
                    ),
                    const CustomTextWidget(text: 'Email'),
                    CustomTextFormField(
                        controller: emailController,
                        validator: (val) {
                          if (val!.isEmpty) {
                            return 'Please Enter Your Email';
                          }
                          return null;
                        }),
                    const SizedBox(
                      height: 29,
                    ),
                    const CustomTextWidget(text: 'Password'),
                    CustomTextFormField(
                        controller: passwordController,
                        validator: (val) {
                          if (val!.isEmpty) {
                            return 'Please Enter Your Password';
                          }
                          return null;
                        },
                        isPassword: true),
                    const SizedBox(
                      height: 29,
                    ),
                    CustomButton(
                        buttonTextStyle: GoogleFonts.roboto(
                            textStyle: Styles.textStyle20.copyWith(
                                color: AppColors.kPrimaryColor,
                                fontWeight: FontWeight.w500)),
                        buttonColor: AppColors.kButtonColor,
                        buttonText: 'LOGIN',
                        onPressed: () async {
                          if (formKey.currentState!.validate()) {
                            formKey.currentState!.save();
                            await controller.userLogin(
                                email: emailController.text,
                                password: passwordController.text);
                          } else {
                            autoValidateMode = AutovalidateMode.always;
                            setState(() {});
                          }
                        }),
                  ],
                ),
              );
      },
    );
  }
}
