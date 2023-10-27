import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../core/constants/colors.dart';
import '../../../core/constants/styles.dart';
import 'custom_button.dart';
import 'custom_auth_second_text.dart';
import 'custom_auth_text.dart';
import 'custom_text_form_field.dart';
import 'custom_text_widget.dart';

class CustomRegisterForm extends StatefulWidget {
  const CustomRegisterForm({
    super.key,
  });

  @override
  State<CustomRegisterForm> createState() => _CustomRegisterFormState();
}

class _CustomRegisterFormState extends State<CustomRegisterForm> {
  TextEditingController emailController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  AutovalidateMode autoValidateMode = AutovalidateMode.disabled;

  @override
  Widget build(BuildContext context) {
    return Form(
      autovalidateMode: autoValidateMode,
      key: formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomAuthText(text: 'Register'),
          const SizedBox(
            height: 29,
          ),
          const CustomAuthSecondText(text: 'Please enter your details to register :'),
          const SizedBox(
            height: 29,
          ),
          const CustomTextWidget(text: 'Name'),

          CustomTextFormField(
              controller: nameController,
              validator: (val) {
                if (val!.isEmpty) {
                  return 'Please Enter Your Name';
                }
                return null;
              }),
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
                }else if(val.length<8){
                  return 'Please choose a stronger password.Try a mix of letters numbers \n and symbols';

                }
                return null;
              },
              isPassword: true),
          const SizedBox(
            height: 29,
          ),
          const CustomTextWidget(text: 'Confirm Password'),
          CustomTextFormField(
              controller: confirmPasswordController,
              validator: (val) {
                if (val!.isEmpty) {
                  return 'Not Matched Password';
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
              buttonText: 'Register',
              onPressed: () {
                if (formKey.currentState!.validate()) {
                  formKey.currentState!.save();
                  debugPrint('hii');
                } else {
                  autoValidateMode = AutovalidateMode.always;
                  setState(() {});
                }
              }),
        ],
      ),
    );
  }
}
