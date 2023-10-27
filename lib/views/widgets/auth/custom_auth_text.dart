import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/constants/styles.dart';
class CustomAuthText extends StatelessWidget {
  const CustomAuthText({
    super.key, required this.text,
  });
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: GoogleFonts.ribeye(
          textStyle: Styles.textStyle32.copyWith(
              color: const Color(0xff646B85),
              fontWeight: FontWeight.w400),
        ));
  }
}