import 'package:e_commerce/features/authentication/controllers/onboarding_controller.dart';
import 'package:e_commerce/features/authentication/screens/screen_onboarding/widget/on_boarding_button.dart';
import 'package:e_commerce/features/authentication/screens/screen_onboarding/widget/onboardin_skip.dart';
import 'package:e_commerce/features/authentication/screens/screen_onboarding/widget/onboarding_dot_navigation.dart';
import 'package:e_commerce/features/authentication/screens/screen_onboarding/widget/onboarding_page.dart';
import 'package:e_commerce/utils/constraints/image_strings.dart';
import 'package:e_commerce/utils/constraints/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());
    return Scaffold(
      body: Stack(
        children: [

          /// Horizontal scrollable page
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoardingPage(
                image: SoobuImages.onBoardingImage1,
                title: SoobuText.onBoardingTitle1,
                subTitle: SoobuText.onBoardingSubTitle1,
              ),
              OnBoardingPage(
                image: SoobuImages.onBoardingImage2,
                title: SoobuText.onBoardingTitle2,
                subTitle: SoobuText.onBoardingSubTitle2,
              ),
              OnBoardingPage(
                image: SoobuImages.onBoardingImage3,
                title: SoobuText.onBoardingTitle3,
                subTitle: SoobuText.onBoardingSubTitle3,
              )
            ],
          ),

          /// skip Button
          const OnBoardingSkip(),

          /// Dot navigation SmoothPageIndicator
          const OnboardingDotNavigation(),

          /// circular Button
          const OnBoardingNextButton()
        ],
      ),
    );
  }
}






