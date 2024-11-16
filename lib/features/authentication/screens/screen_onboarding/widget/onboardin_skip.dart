import 'package:e_commerce/features/authentication/controllers/onboarding_controller.dart';
import 'package:e_commerce/utils/constraints/sizes.dart';
import 'package:e_commerce/utils/device/device_utility.dart';
import 'package:flutter/material.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: SoobuDeviceUtils.getAppBarHeight(),
        right: SoobuSizes.defaultSpace,
        child: TextButton(onPressed: () => OnBoardingController.instance.skipPage, child: const Text('Skip')
        )
    );
  }
}
