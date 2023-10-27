import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/constants/styles.dart';
class CustomAuthSecondText extends StatelessWidget {
  const CustomAuthSecondText({
    super.key, required this.text,
  });
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.roboto(
        textStyle: Styles.textStyle20.copyWith(
            color: Colors.black,
            fontWeight: FontWeight.w300),
      ),
    );
  }
}
