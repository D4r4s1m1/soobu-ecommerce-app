import 'package:e_commerce/common/widgets/images/circular_image.dart';
import 'package:e_commerce/common/widgets/text/brand_title_with_verification.dart';
import 'package:e_commerce/common/widgets/text/product_price.dart';
import 'package:e_commerce/common/widgets/text/product_title.dart';
import 'package:e_commerce/utils/constraints/enums.dart';
import 'package:e_commerce/utils/constraints/image_strings.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

import '../../../../../common/widgets/custon_shapes/containers/rounded_container.dart';
import '../../../../../utils/constraints/colors.dart';
import '../../../../../utils/constraints/sizes.dart';

class SoobuProductMetaData extends StatelessWidget {
  const SoobuProductMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            SoobuRoundedContainer(
              radius: SoobuSizes.sm,
              backgroundColor: SoobuColors.secondaryColor.withOpacity(0.8),
              padding: const EdgeInsets.symmetric(
                  horizontal: SoobuSizes.sm, vertical: SoobuSizes.xs),
              child: Text('25%', style: Theme.of(context).textTheme.labelLarge!.apply(color: SoobuColors.black),),
            ),
            const SizedBox(width: SoobuSizes.spaceBtwItems,),
            Text('\$ 20', style: Theme.of(context).textTheme.titleSmall!.apply(decoration: TextDecoration.lineThrough),),
            const SizedBox(width: SoobuSizes.spaceBtwItems,),
            const SoobuProductPriceText(price: '15', isLarge: true,),
          ],
        ),
        const SizedBox(height: SoobuSizes.spaceBtwItems/1.5,),
        const SoobuProductTitle(title: 'Round Neck'),
        const SizedBox(height: SoobuSizes.spaceBtwItems/1.5,),
        Row(
          children: [
            const SoobuProductTitle(title: 'Status'),
            const SizedBox(width: SoobuSizes.spaceBtwItems/1.5,),
            Text('In Stock', style: Theme.of(context).textTheme.titleMedium,)
          ],
        ),
        const SizedBox(height: SoobuSizes.spaceBtwItems,),
        Row(
          children: [
            SoobuCircularImage(image: SoobuImages.google, width: 18, height: 18, overlayColor: SoobuHelperFunctions.isDarkMode(context)? SoobuColors.light : SoobuColors.dark,),
            SizedBox(width: SoobuSizes.spaceBtwItems,),
            const SoobuBrandTitleWithVerification(title: 'Perfect Square', brandTextSize: TextSizes.medium,),
          ],
        )
      ],
    );
  }
}
