import 'package:e_commerce/features/authentication/controllers/onboarding_controller.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/constraints/colors.dart';
import '../../../../../utils/constraints/sizes.dart';
import '../../../../../utils/device/device_utility.dart';


class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = SoobuHelperFunctions.isDarkMode(context);
    return Positioned(right: SoobuSizes.defaultSpace,
        bottom: SoobuDeviceUtils.getBottomNavigationBarHeight(),
        child: ElevatedButton(
            onPressed: () => OnBoardingController.instance.nextPage(),
            style: ElevatedButton.styleFrom(
                shape: const CircleBorder(),
                backgroundColor: dark? SoobuColors.primaryColor : Colors.black),
            child: const Icon(Iconsax.arrow_right_3))
    );
  }
}