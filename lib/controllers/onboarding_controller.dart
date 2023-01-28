import 'package:get/state_manager.dart';
import 'package:liquid_swipe/PageHelpers/LiquidController.dart';

import '../models/onboading_model.dart';
import '../screen/constant/colors.dart';
import '../screen/constant/image_string.dart';
import '../screen/constant/text_string.dart';
import '../screen/onboarding-screen/components/onboading_widget.dart';

class OnboardingController extends GetxController {
  final controller = LiquidController();

  RxInt currentPage = 0.obs;

  final pages = [
    OnboardingPageWidget(
        model: OnBoardingModel(
      tOnboardindImage1,
      tOnboardingTitle1,
      tOnboardingSubTitle1,
      tOnboardingCounter1,
      tOnboardingScreen1Colors,
    )),
    OnboardingPageWidget(
        model: OnBoardingModel(
      tOnboardindImage2,
      tOnboardingTitle2,
      tOnboardingSubTitle2,
      tOnboardingCounter2,
      tOnboardingScreen2Colors,
    )),
    OnboardingPageWidget(
        model: OnBoardingModel(
      tOnboardindImage3,
      tOnboardingTitle3,
      tOnboardingSubTitle3,
      tOnboardingCounter3,
      tOnboardingScreen3Colors,
    )),
  ];
  skip() => controller.jumpToPage(page: 2);
  animateToNextSlide() {
    int nextPage = controller.currentPage + 1;
    controller.animateToPage(page: nextPage);
  }

  // ignore: non_constant_identifier_names
  OnPageChangedCallback(int activePageIndex) =>
      currentPage.value = activePageIndex;
}
