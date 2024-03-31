import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smart_fridge/src/config/themes/app_theme.dart';
import 'package:smart_fridge/src/features/authentication/presentation/screen.dart';
import 'package:smart_fridge/src/features/onboarding/widgets/onboarding_page_widget.dart';

import '../../../../core/util/color.dart';
import '../../authentication/data/models/onboarding/onboarding_model.dart';

class OnboardingController extends GetxController {
  final PageController pageController = PageController();
  RxInt currentPageIndex = 0.obs; // used with set state, make observable.
  RxBool isLastPage = false.obs;

  final pages = [
  OnboardingPageWidget(
    model: OnboardingModel(
      title: "Meal Suggestions",
      description:
          "Get personalized meal recommendations based on what's in your fridge right now. Our AI analyzes your fridge's contents to suggest delicious, nutritious meals you can prepare today.",
      no: "1/2",
      bgColors: [
        HexColor("#FFE979"), // A warm, inviting yellow
        AppTheme.nearlyWhite,
      ],
    ),
  ),
  OnboardingPageWidget(
    model: OnboardingModel(
      title: "Eye in the Fridge",
      description:
          "With our advanced AI model, keep a real-time inventory of your fridge's contents. Know what you have, what you need to make better decisions",
      no: "2/2",
      bgColors: [
        HexColor("#95FAFF"), // A cool, refreshing blue
        AppTheme.nearlyWhite,
      ],
    ),
  ),
];

void onDotClicked(int index) {
  currentPageIndex.value = index;
  pageController.jumpToPage(index);
}

void animateToPreviousPage(BuildContext context) {
  int previousPageIndex = currentPageIndex.value - 1;
  animatedToPage(previousPageIndex);
}

void animateToNextPage(BuildContext context, bool isLogin) {
  if (currentPageIndex.value == 1) { // Update index based on the new total number of pages
    Get.offAll(() => AppAuthScreen(isLogin: isLogin));
    if (!isLastPage.value) {
      isLastPage.value = true;
    }
    return;
  }
  if (isLastPage.value) {
    isLastPage.value = false;
  }

  int nextPage = currentPageIndex.value + 1;
  animatedToPage(nextPage);
}

void animatedToPage(int page) {
  pageController.animateToPage(
    page,
    duration: Duration(milliseconds: 600),
    curve: Curves.ease,
  );
}

void onPageChangeCallback(int index) {
  currentPageIndex.value = index;
}

void skipPage() {}
}