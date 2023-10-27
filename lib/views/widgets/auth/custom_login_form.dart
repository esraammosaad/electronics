import 'package:flutter/material.dart';
import '../on_boarding/custom_button.dart';
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
    return Form(
      autovalidateMode: autoValidateMode,
      key: formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomAuthText(text: 'Login'),
          const SizedBox(
            height: 29,
          ),
          const CustomAuthSecondText(text: 'Please Login to your account'),
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
              buttonText: 'LOGIN',
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
