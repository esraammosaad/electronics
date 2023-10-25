import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import '../../../controllers/on_boarding_controller_imp.dart';
import 'custom_page_view_item.dart';
class CustomPageView extends GetView<OnBoardingControllerImp> {
  const CustomPageView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: controller.pageController,
        onPageChanged: (val) {
          controller.onPageChanged(val);
        },
        itemBuilder: (context, index) => CustomPageViewItem(
          index: index,
        ));
  }
}