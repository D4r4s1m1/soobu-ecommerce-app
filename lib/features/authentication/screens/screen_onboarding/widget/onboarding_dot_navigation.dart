import 'package:e_commerce/features/authentication/controllers/onboarding_controller.dart';
import 'package:e_commerce/utils/constraints/colors.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../../utils/constraints/sizes.dart';
import '../../../../../utils/device/device_utility.dart';

class OnboardingDotNavigation extends StatelessWidget {
  const OnboardingDotNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController.instance;
    final dark = SoobuHelperFunctions.isDarkMode(context);

    return Positioned(
        bottom: SoobuDeviceUtils.getBottomNavigationBarHeight() + 25,
        left: SoobuSizes.defaultSpace,
        child: SmoothPageIndicator(
            controller: controller.pageController,
            onDotClicked: controller.dotNavigationClick,
            count: 3,
            effect: ExpandingDotsEffect(
                activeDotColor: dark ? SoobuColors.light : SoobuColors.dark,
                dotHeight: 6,
            )
        )
    );
  }
}
