import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smart_fridge/src/features/onboarding/widgets/onboarding_controller.dart';

import '../widgets/page_indicator.dart';
import '../widgets/swipe_next_button.dart';
import '../widgets/swipe_previous_button.dart';

class AppOnboardingScreen extends StatelessWidget {
  const AppOnboardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = OnboardingController();

    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          PageView.builder(
            itemCount: controller.pages.length,
            controller: controller.pageController,
            onPageChanged: (int index) {
              controller.onPageChangeCallback(index);
            },
            itemBuilder: (context, index) {
              return controller.pages[index];
            },
          ),
          Obx(
            () => AppOnboardSwipePreviousButton(
              onPressed: () => controller.animateToPreviousPage(context),
              currentPageIndex: controller.currentPageIndex.value,
            ),
          ),
          Obx(
            () => AppOnboardPageIndicator(
              currentPageIndex: controller.currentPageIndex.value,
              onDotClicked: controller.onDotClicked,
            ),
          ),
          Obx(
            () => AppOnboardSwipeNextButton(
              onSignupPressed: () =>
                  controller.animateToNextPage(context, false),
              onLoginPressed: () => controller.animateToNextPage(context, true),
              currentPageIndex: controller.currentPageIndex.value,
            ),
          ),
        ],
      ),
    );
  }
}