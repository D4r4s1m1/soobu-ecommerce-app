import 'package:flutter/material.dart';

import '../../../../../utils/constraints/image_strings.dart';
import '../../../../../utils/constraints/sizes.dart';
import '../../../../../utils/constraints/text_strings.dart';

class SoobuLoginHeader extends StatelessWidget {
  const SoobuLoginHeader({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
            height: 150,
            image: AssetImage(dark
                ? SoobuImages.darkAppLogo
                : SoobuImages.lightAppLogo)),
        Text(
          SoobuText.loginTitle,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        const SizedBox(
          height: SoobuSizes.sm,
        ),
        Text(
          SoobuText.loginSubtitle,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ],
    );
  }
}