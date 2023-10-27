import 'package:flutter/material.dart';
import 'package:my_app/core/constants/colors.dart';
import 'package:my_app/core/constants/styles.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.controller,
    this.validator,
    this.onSaved,
    this.isPassword,
  });
  final TextEditingController controller;
  final String? Function(String?)? validator;
  final void Function(String?)? onSaved;
  final bool? isPassword;

  @override
  Widget build(BuildContext context) {
    return TextFormField(

      cursorColor: AppColors.darkGrey,
      obscureText: isPassword ?? false,
      textInputAction: TextInputAction.next,
      style: Styles.textStyle16.copyWith(color: AppColors.darkGrey),
      onSaved: onSaved,
      validator: validator,
      controller: controller,

      decoration: InputDecoration(
        contentPadding: const EdgeInsets.all(8),
        errorStyle: Styles.textStyle10.copyWith(color:AppColors.red,),
        border: buildUnderlineInputBorder(),
        focusedBorder: buildUnderlineInputBorder(),
        disabledBorder: buildUnderlineInputBorder(),
        enabledBorder: buildUnderlineInputBorder(),
        errorBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color:AppColors.red,


            ),

            borderRadius: BorderRadius.circular(8)),
        focusedErrorBorder:
             OutlineInputBorder(borderSide: const BorderSide(color:AppColors.red,),borderRadius: BorderRadius.circular(8)),
      ),
    );
  }

  UnderlineInputBorder buildUnderlineInputBorder() {
    return const UnderlineInputBorder(
      borderSide: BorderSide(color: Color(0xff847E7E)),
    );
  }
}
