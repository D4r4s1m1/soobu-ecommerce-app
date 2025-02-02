import 'package:e_commerce/common/styles/spacing_styles.dart';
import 'package:e_commerce/utils/constraints/sizes.dart';
import 'package:e_commerce/utils/constraints/text_strings.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key, required this.image, required this.title, required this.subTitle, required this.onPressed});

  final String image,title, subTitle;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: SoobuSpacingStyle.paddingWithAppBarHeight * 2,
        child: Column(
          children: [
            /// Image
            Image(
              image: AssetImage(image),
              width: SoobuHelperFunctions.screenWidth() * 0.6,
            ),
            const SizedBox(
              height: SoobuSizes.spaceBtwSections,
            ),

            /// Title and Subtitle
            Text(
              title,
              style: Theme.of(context).textTheme.headlineMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: SoobuSizes.spaceBtwItems,
            ),
            Text(
              subTitle,
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
                  onPressed: onPressed,
                  child: const Text(SoobuText.continues)),
            )
          ],
        ),
      ),
    );
  }
}
