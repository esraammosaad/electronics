import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/constants/assets.dart';
class CustomContactMeRow extends StatelessWidget {
  const CustomContactMeRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(AppIcons.facebookIcon),
        const SizedBox(
          width: 18,
        ),
        Image.asset(AppIcons.instagramIcon),

        const SizedBox(
          width: 18,
        ),
        SvgPicture.asset(AppIcons.googleIcon),
      ],
    );
  }
}

