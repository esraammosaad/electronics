import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controllers/on_boarding_controller_imp.dart';
import '../widgets/on_boarding/custom_on_boarding_page_controller.dart';
import '../widgets/on_boarding/custom_page_view.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(OnBoardingControllerImp());
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height*0.8 ,
              child: const CustomPageView(),
            ),
            const Spacer(flex: 2,),

            const CustomOnBoardingPageController(),
            const Spacer(),

          ],
        ),
      ),
    );
  }
}


