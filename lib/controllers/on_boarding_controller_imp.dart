import 'package:flutter/cupertino.dart';
import 'on_boarding_controller.dart';

class OnBoardingControllerImp extends OnBoardingController {
  int currentPage = 0;
  late PageController pageController;
  @override
  next() {
    pageController.nextPage(
        duration: const Duration(milliseconds: 300), curve: Curves.easeInExpo);
  }

  @override
  onPageChanged(int index) {
    currentPage = index;
    update();
  }


  @override
  void onInit() {
    pageController =PageController();
    super.onInit();
  }

  @override
  void onClose() {
    pageController.dispose();
    super.onClose();
  }
}
