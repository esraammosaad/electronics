import 'package:flutter/material.dart';
class CustomAuthBg extends StatelessWidget {
  const CustomAuthBg({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(color: Colors.white.withOpacity(0.6)),
    );
  }
}
