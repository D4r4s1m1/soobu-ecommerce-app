import 'package:e_commerce/features/authentication/screens/password_configuration/reset_password.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constraints/sizes.dart';
import '../../../../utils/constraints/text_strings.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
          padding: const EdgeInsets.all(SoobuSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// Headings
              Text(
                SoobuText.forgetPasswordTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(
                height: SoobuSizes.spaceBtwItems,
              ),
              Text(
                SoobuText.forgetPasswordSubtitle,
                style: Theme.of(context).textTheme.labelMedium,
              ),
              const SizedBox(
                height: SoobuSizes.spaceBtwItems * 2,
              ),

              /// Text field
              TextFormField(
                decoration: const InputDecoration(
                    labelText: SoobuText.email,
                    prefixIcon: Icon(Iconsax.direct_right)),
              ),
              const SizedBox(height: SoobuSizes.spaceBtwSections ),

              /// Submit Button
              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () => Get.off(() => const ResetPassword()),
                      child: const Text(SoobuText.submit)
                  )
              )
            ],
          )),
    );
  }
}
