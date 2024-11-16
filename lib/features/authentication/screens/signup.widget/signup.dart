import 'package:e_commerce/common/widgets.login.signup/form_divider.dart';
import 'package:e_commerce/common/widgets.login.signup/social_buttons.dart';
import 'package:e_commerce/features/authentication/screens/signup.widget/signup_widget/signup_form.dart';
import 'package:e_commerce/utils/constraints/sizes.dart';
import 'package:e_commerce/utils/constraints/text_strings.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';



class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final dark = SoobuHelperFunctions.isDarkMode(context);

    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(padding: const EdgeInsets.all(SoobuSizes.defaultSpace),
            child: Column(
              children: [
                /// Title
                Center(child: Text(SoobuText.signupTitle, style: Theme.of(context).textTheme.headlineMedium)),
                const SizedBox(height: SoobuSizes.spaceBtwSections,),

                /// Form
                SoobuSignupForm(dark: dark),
                const SizedBox(height: SoobuSizes.spaceBtwSections),
                SoobuLoginDivide(dividerText: SoobuText.signUpWith.capitalize!),
                const SizedBox(height: SoobuSizes.spaceBtwSections),

                /// Socials Buttons
                const SoobuSocialButtons()
              ],
        ),
        ),
      ),
    );
  }
}

