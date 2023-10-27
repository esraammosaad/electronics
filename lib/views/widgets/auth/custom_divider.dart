import 'package:flutter/material.dart';

import '../../../core/constants/colors.dart';
import '../../../core/constants/styles.dart';
class CustomDivider extends StatelessWidget {
  const CustomDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          color: AppColors.grey,
          height: 1,
          width: MediaQuery.of(context).size.width * 0.35,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22.0),
          child: Text(
            'OR',
            style: Styles.textStyle20.copyWith(
                color: AppColors.grey,
                fontWeight: FontWeight.w200),
          ),
        ),
        Container(
          color: AppColors.grey,
          height: 1,
          width: MediaQuery.of(context).size.width * 0.35,
        ),
      ],
    );
  }
}
