import 'package:e_commerce/features/authentication/screens/signup.widget/verify_email.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/constraints/sizes.dart';
import '../../../../../utils/constraints/text_strings.dart';
import 'terms_and_conditions.dart';

class SoobuSignupForm extends StatelessWidget {
  const SoobuSignupForm({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Form(child: Column(
      children: [
        Row(
          children: [
            Expanded(
              child: TextFormField(
                expands: false,
                decoration: const InputDecoration(
                    labelText: SoobuText.firstName,
                    prefixIcon: Icon(Iconsax.user),
                    border: OutlineInputBorder()
                ),
              ),
            ),
            const SizedBox(width:SoobuSizes.spaceBtwInputField,),
            Expanded(
              child: TextFormField(
                expands: false,
                decoration: const InputDecoration(
                    labelText: SoobuText.lastName,
                    prefixIcon: Icon(Iconsax.user),
                    border: OutlineInputBorder()
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: SoobuSizes.spaceBtwInputField,),
        TextFormField(
          expands: false,
          decoration: const InputDecoration(
              labelText: SoobuText.userName,
              prefixIcon: Icon(Iconsax.user_edit),
              border: OutlineInputBorder()
          ),
        ),
        const SizedBox(height: SoobuSizes.spaceBtwInputField,),
        TextFormField(
          expands: false,
          decoration: const InputDecoration(
              labelText: SoobuText.email,
              prefixIcon: Icon(Iconsax.direct),
              border: OutlineInputBorder()
          ),
        ),
        const SizedBox(height: SoobuSizes.spaceBtwInputField,),
        TextFormField(
          expands: false,
          decoration: const InputDecoration(
              labelText: SoobuText.phoneNo,
              prefixIcon: Icon(Iconsax.call),
              border: OutlineInputBorder()
          ),
        ),
        const SizedBox(height: SoobuSizes.spaceBtwInputField,),
        TextFormField(
          expands: false,
          decoration: const InputDecoration(
              labelText: SoobuText.password,
              prefixIcon: Icon(Iconsax.password_check),
              suffixIcon: Icon(Iconsax.slash),
              border: OutlineInputBorder()
          ),
        ),
        const SizedBox(height: SoobuSizes.spaceBtwSections),

        /// Terms and Conditions checkbox
        const SoobuTermsAndConditionCheckbox(),
        const SizedBox(height: SoobuSizes.spaceBtwSections),
        /// Signup Button
        SizedBox(width: double.infinity, child: ElevatedButton(onPressed: () => Get.to(()=> const VerifyEmailScreen()), child: const Text(SoobuText.signUp)))
      ],
    ));
  }
}

