import 'package:flutter/material.dart';
import '../../../core/constants/colors.dart';
import '../../../core/constants/styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key, required this.buttonText, required this.onPressed,
  });
  final String buttonText;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: MediaQuery.of(context).size.width,
        child: MaterialButton(
          padding: const EdgeInsets.all(10),
          shape: OutlineInputBorder(
              borderRadius: BorderRadius.circular(7),
              borderSide: const BorderSide(color: AppColors.kButtonColor)),
          onPressed: onPressed,
          
          color: AppColors.kButtonColor,
          child: Text(
           buttonText,
            style: Styles.textStyle20.copyWith(color: Colors.white,fontWeight: FontWeight.w500),
          ),
        ));
  }
}
