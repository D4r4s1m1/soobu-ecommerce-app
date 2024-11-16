import 'package:e_commerce/features/authentication/screens/password_configuration/forget_password.dart';
import 'package:e_commerce/features/authentication/screens/signup.widget/signup.dart';
import 'package:e_commerce/navigation_menu.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/constraints/sizes.dart';
import '../../../../../utils/constraints/text_strings.dart';

class SoobuLoginForm extends StatelessWidget {
  const SoobuLoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          ///Email
          TextFormField(
            decoration: const InputDecoration(
              prefixIcon: Icon(Iconsax.direct_right),
              labelText: SoobuText.email,
            ),
          ),

          const SizedBox(
            height: SoobuSizes.spaceBtwInputField,
          ),

          /// Password
          TextFormField(
            decoration: const InputDecoration(
              prefixIcon: Icon(Iconsax.password_check),
              labelText: SoobuText.password,
              suffixIcon: Icon(Iconsax.slash),
            ),
          ),
          const SizedBox(height: SoobuSizes.spaceBtwInputField / 2),

          /// Remember me & Forget password
          Padding(
            padding: const EdgeInsets.symmetric(
                vertical: SoobuSizes.spaceBtwSections),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    ///Remember me
                    Checkbox(value: true, onChanged: (value) {}),
                    const Text(SoobuText.rememberMe),
                  ],
                ),

                /// Forget Password
                TextButton(
                  onPressed: () => Get.to(() => const ForgetPassword()),
                  child: const Text(SoobuText.forgetPasswordTitle),
                )
              ],
            ),
          ),

          /// Sign In Button
          SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () => Get.to(() => const NavigationMenu()),
                  child: const Text(SoobuText.signIn))),
          const SizedBox(
            height: SoobuSizes.spaceBtwSections,
          ),

          /// Create Account
          SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                  onPressed: () => Get.to(()=> const SignupScreen()),
                  child: const Text(SoobuText.createAccount))),
          const SizedBox(
            height: SoobuSizes.spaceBtwSections,
          ),
        ],
      ),
    );
  }
}

