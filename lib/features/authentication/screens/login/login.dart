import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../common/styles/spacing_styles.dart';
import '../../../../common/widgets.login.signup/form_divider.dart';
import '../../../../common/widgets.login.signup/social_buttons.dart';
import '../../../../utils/constraints/sizes.dart';
import '../../../../utils/constraints/text_strings.dart';
import 'login_widget/login_form.dart';
import 'login_widget/login_header.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = SoobuHelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
          child: Padding(
        padding: SoobuSpacingStyle.paddingWithAppBarHeight,
        child: Column(
          children: [

            /// Header
            SoobuLoginHeader(dark: dark),

            /// Form
            const SoobuLoginForm(),

            /// Divider
            SoobuLoginDivide(dividerText: SoobuText.orSignInWith.capitalize!),
            const SizedBox(height: SoobuSizes.spaceBtwSections,),

            /// Footer
            const SoobuSocialButtons()
          ],
        ),
      )),
    );
  }
}

