import 'package:flutter/material.dart';
import 'package:my_app/core/constants/colors.dart';
import 'package:my_app/core/constants/styles.dart';

class CustomAuthRow extends StatelessWidget {
  const CustomAuthRow({super.key, required this.textOne, required this.textTwo, required this.onTap});
  final String textOne;
  final String textTwo;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          textOne,
          style: Styles.textStyle16.copyWith(color: AppColors.lightGrey),
        ),
        const SizedBox(
          width: 0,
        ),
        GestureDetector(
          onTap: onTap,
          child:  Text(
            textTwo,
            style: Styles.textStyle16.copyWith(color: AppColors.darkPurple),
          ),
        ),
      ],
    );
  }
}
