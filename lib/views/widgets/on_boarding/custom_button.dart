import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_app/controllers/on_boarding_controller_imp.dart';
import '../../../core/constants/colors.dart';
import '../../../core/constants/styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, right: 16, bottom: 16),
      child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: GetBuilder<OnBoardingControllerImp>(
            builder: (OnBoardingControllerImp controller) { return MaterialButton(
              shape: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: const BorderSide(color: AppColors.kPrimaryColor)),
              onPressed: () {

                controller.next();
              },
              color: AppColors.kPrimaryColor,
              child: Text(
                controller.currentPage==0?"Let's go":'Continue',
                style: Styles.textStyle16.copyWith(color: Colors.white),
              ),
            ); },

          )),
    );
  }
}
