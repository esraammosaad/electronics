import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controllers/on_boarding_controller_imp.dart';
import '../../../core/constants/colors.dart';
import '../../../data/data_source/static/on_boarding_data.dart';

class CustomOnBoardingPageController extends GetView<OnBoardingControllerImp> {
  const CustomOnBoardingPageController({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnBoardingControllerImp>(
      builder: (OnBoardingControllerImp controller) {
        return Padding(
          padding: const EdgeInsets.only(left: 43,right: 24),
          child: Row(children: [
            ...List.generate(
                onBoardingList.length,
                (index) => AnimatedContainer(
                      margin: const EdgeInsets.symmetric(horizontal: 3),
                      duration: const Duration(milliseconds: 900),
                      width: controller.currentPage==index?8:5,
                      height: controller.currentPage==index?8:5,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: controller.currentPage == index
                            ? AppColors.kPrimaryColor
                            : AppColors.lightGrey,
                      ),
                    )),
            const Spacer(),
            CircleAvatar(
              radius: MediaQuery.of(context).size.width * 0.09,
              backgroundColor: AppColors.kPrimaryColor,
              child: IconButton(
                  onPressed: () {
                    controller.next();

                  },
                  icon: Icon(
                    Icons.arrow_forward,
                    color: AppColors.kScaffoldColor,
                    size: MediaQuery.of(context).size.width * 0.1,
                  )),
            )
          ]),
        );
      },
    );
  }
}
