import 'package:flutter/material.dart';

import '../../utils/constraints/colors.dart';
import '../../utils/constraints/image_strings.dart';
import '../../utils/constraints/sizes.dart';

class SoobuSocialButtons extends StatelessWidget {
  const SoobuSocialButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: SoobuColors.grey),
              borderRadius: BorderRadius.circular(100)),
          child: IconButton(
            onPressed: () {},
            icon: const Image(
                width: SoobuSizes.iconMd,
                height: SoobuSizes.iconMd,
                image: AssetImage(SoobuImages.google)
            ),
          ),
        ),
        const SizedBox(width: SoobuSizes.spaceBtwItems,),
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: SoobuColors.grey),
              borderRadius: BorderRadius.circular(100)),
          child: IconButton(
            onPressed: () {},
            icon: const Image(
                width: SoobuSizes.iconMd,
                height: SoobuSizes.iconMd,
                image: AssetImage(SoobuImages.facebook)
            ),
          ),
        ),
      ],
    );
  }
}
