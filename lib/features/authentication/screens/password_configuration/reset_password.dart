import 'package:e_commerce/utils/constraints/image_strings.dart';
import 'package:e_commerce/utils/constraints/sizes.dart';
import 'package:e_commerce/utils/constraints/text_strings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

import '../../../../utils/helpers/helper_functions.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(onPressed: () => Get.back(), icon: const Icon(CupertinoIcons.clear))
        ],
      ),
      body:  SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.all(SoobuSizes.defaultSpace),
          child: Column(
            children: [
              /// Image with 60% of the Screen
              Image(
                image: const AssetImage(SoobuImages.deliverEmailIllustration),
                width: SoobuHelperFunctions.screenWidth() * 0.6,
              ),
              const SizedBox(
                height: SoobuSizes.spaceBtwSections,
              ),

              /// Title and Subtitle
              Text(
                SoobuText.changeYourPasswordTitle,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: SoobuSizes.spaceBtwItems,
              ),
              Text(
                SoobuText.changeYourPasswordSubTitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: SoobuSizes.spaceBtwSections,
              ),
              /// Buttons
              SizedBox(width: double.infinity, child: ElevatedButton(onPressed: (){}, child: const Text(SoobuText.done))),
              const SizedBox(height: SoobuSizes.spaceBtwItems,),
              TextButton(onPressed: (){}, child: const Text(SoobuText.resendEmail))

            ],
          ),
        ),
      ),
    );
  }
}
