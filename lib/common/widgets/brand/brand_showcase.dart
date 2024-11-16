import 'package:flutter/material.dart';

import '../../../utils/constraints/colors.dart';
import '../../../utils/constraints/sizes.dart';
import '../../../utils/helpers/helper_functions.dart';
import '../custon_shapes/containers/rounded_container.dart';
import 'brand_card.dart';

class SoobuBrandShowcase extends StatelessWidget {
  const SoobuBrandShowcase({
    super.key, required this.images,
  });
  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return SoobuRoundedContainer(
      showBorder: true,
      borderColor: SoobuColors.darkGrey,
      backgroundColor: Colors.transparent,
      margin: const EdgeInsets.only(bottom: SoobuSizes.spaceBtwItems),
      padding: const EdgeInsets.all(SoobuSizes.md),
      child: Column(
          children: [
            const SoobuBrandCard(showBorder: false),
            const SizedBox(height: SoobuSizes.spaceBtwItems,),
            Row(
                children:
                images.map((image) => brandTopProductImageWidget(image, context)).toList()
            ),
          ]
      ),
    );
  }
  Widget brandTopProductImageWidget(String image, context){
    return Expanded(child: SoobuRoundedContainer(
      height: 100,
      backgroundColor: SoobuHelperFunctions.isDarkMode(context)? SoobuColors.darkerGrey: SoobuColors.light,
      margin: const EdgeInsets.only(right: SoobuSizes.sm),
      padding: const EdgeInsets.all(SoobuSizes.md),
      child: Image(fit: BoxFit.contain, image: AssetImage(image)),
    ));
  }
}