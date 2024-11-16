import 'package:e_commerce/common/widgets/success_screen/success_screen.dart';
import 'package:e_commerce/features/authentication/screens/login/login.dart';
import 'package:e_commerce/utils/constraints/text_strings.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/constraints/image_strings.dart';
import '../../../../utils/constraints/sizes.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () => Get.back(),
              icon: const Icon(CupertinoIcons.clear))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(SoobuSizes.defaultSpace),
          child: Column(
            children: [
              /// Image
              Image(
                image: const AssetImage(SoobuImages.deliverEmailIllustration),
                width: SoobuHelperFunctions.screenWidth() * 0.6,
              ),
              const SizedBox(
                height: SoobuSizes.spaceBtwSections,
              ),

              /// Title and Subtitle
              Text(
                SoobuText.confirmEmail,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: SoobuSizes.spaceBtwItems,
              ),
              Text(
                'iaiieainternational.com',
                style: Theme.of(context).textTheme.labelLarge,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: SoobuSizes.spaceBtwItems,
              ),
              Text(
                SoobuText.confirmEmailSubtitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: SoobuSizes.spaceBtwSections,
              ),

              /// Buttons
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () => Get.to(() => SuccessScreen(
                          image: SoobuImages.successIllustration,
                          title: SoobuText.yourAccountCreatedTitle,
                          subTitle: SoobuText.yourAccountCreatedSubtitle,
                          onPressed: () => Get.to(() => const LoginScreen()),
                        )),
                    child: const Text(SoobuText.continues)),
              ),
              const SizedBox(
                height: SoobuSizes.spaceBtwItems,
              ),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                    onPressed: () {}, child: const Text(SoobuText.resendEmail,)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
