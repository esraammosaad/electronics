import 'package:flutter/material.dart';
class CustomAuthBgImage extends StatelessWidget {
  const CustomAuthBgImage({
    super.key, required this.image,
  });
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration:  BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                image,
              ),
              fit: BoxFit.fill)),
    );
  }
}
