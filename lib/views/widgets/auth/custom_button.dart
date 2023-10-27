import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key, required this.buttonText, required this.onPressed, required this.buttonColor, this.borderRadius, required this.buttonTextStyle,
  });
  final String buttonText;
  final VoidCallback onPressed;
  final Color buttonColor;
  final TextStyle buttonTextStyle;
  final double ? borderRadius ;


  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: MediaQuery.of(context).size.width,
        child: MaterialButton(
          padding: const EdgeInsets.all(16),
          shape: OutlineInputBorder(
              borderRadius: BorderRadius.circular(borderRadius??7),
              borderSide:  BorderSide(color: buttonColor)),
          onPressed: onPressed,
          
          color: buttonColor,
          child: Text(
           buttonText,
            style: buttonTextStyle),
          ),
        );
  }
}
