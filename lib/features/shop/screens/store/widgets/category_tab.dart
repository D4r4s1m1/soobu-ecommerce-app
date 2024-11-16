import 'package:e_commerce/common/widgets/layout/grid_layout.dart';
import 'package:e_commerce/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:e_commerce/common/widgets/text/section_heading.dart';
import 'package:flutter/material.dart';

import '../../../../../common/widgets/brand/brand_showcase.dart';
import '../../../../../utils/constraints/image_strings.dart';
import '../../../../../utils/constraints/sizes.dart';

class SoobuCategoryTab extends StatelessWidget {
  const SoobuCategoryTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        Padding(padding: const EdgeInsets.all(SoobuSizes.defaultSpace),
        child: Column(
          children: [
            /// Brands
            const SoobuBrandShowcase(images: [SoobuImages.product3, SoobuImages.product4, SoobuImages.product5],),
            /// Product
            SoobuSectionHeading(title: 'You might like', onPressed: (){},),
            const SizedBox(height: SoobuSizes.spaceBtwItems,),
            SoobuGridviewLayout(itemCount: 4, itemBuilder: (_, index) => const SoobuProductCardVertical())
          ],

        ),
      ),]
    );
  }
}
