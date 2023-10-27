import 'package:flutter/cupertino.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:my_app/core/constants/routes.dart';
import 'on_boarding_controller.dart';

class OnBoardingControllerImp extends OnBoardingController {
  int currentPage = 0;
  late PageController pageController;
  @override
  next() {
    if (currentPage < 2) {
      pageController.nextPage(
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeInExpo);
    } else {
      Get.toNamed(AppRoutes.loginView);
    }
  }

  @override
  onPageChanged(int index) {

      currentPage = index;
      update();

  }

  @override
  void onInit() {
    pageController = PageController();
    super.onInit();
  }

  @override
  void onClose() {
    pageController.dispose();
    super.onClose();
  }
}
