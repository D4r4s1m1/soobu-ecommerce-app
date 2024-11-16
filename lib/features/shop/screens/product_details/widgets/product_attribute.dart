import 'package:e_commerce/common/widgets/custon_shapes/containers/rounded_container.dart';
import 'package:e_commerce/common/widgets/text/product_price.dart';
import 'package:e_commerce/common/widgets/text/product_title.dart';
import 'package:e_commerce/common/widgets/text/section_heading.dart';
import 'package:e_commerce/utils/constraints/colors.dart';
import 'package:e_commerce/utils/constraints/sizes.dart';
import 'package:e_commerce/utils/constraints/text_strings.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

import '../../../../../common/widgets/chip/choice_chip.dart';

class SoobuProductAttribute extends StatelessWidget {
  const SoobuProductAttribute({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = SoobuHelperFunctions.isDarkMode(context);
    return Column(
      children: [
        SoobuRoundedContainer(
            backgroundColor: dark ? SoobuColors.darkerGrey : SoobuColors.grey,
            padding: EdgeInsets.all(SoobuSizes.md),
            child: Column(
              children: [
                Row(
                  children: [
                    SoobuProductTitle(title: 'Variations'),
                    SizedBox(width: SoobuSizes.spaceBtwItems),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text('Price:'),
                            const SizedBox(width: SoobuSizes.spaceBtwItems,),
                            Text('\$20', style: Theme
                                .of(context)
                                .textTheme
                                .titleMedium!
                                .apply(decoration: TextDecoration
                                .lineThrough),),
                            const SizedBox(width: SoobuSizes.spaceBtwItems,),
                            const SoobuProductPriceText(price: '15',),
                          ],
                        ),

                        Row(
                          children: [
                            const SoobuProductTitle(title: 'Status:'),
                            const SizedBox(
                              width: SoobuSizes.spaceBtwItems / 1.5,),
                            Text('In Stock', style: Theme.of(context).textTheme.titleMedium,)
                          ],
                        )
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: SoobuSizes.spaceBtwItems,),
                const Text(
                  SoobuText.productAttribute1, overflow: TextOverflow.ellipsis,
                  maxLines: 3,),
              ],
            )

        ),
        const SizedBox(height: SoobuSizes.spaceBtwItems,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SoobuSectionHeading(title: 'Colors', showActionButton: false,),
            SizedBox(height: SoobuSizes.spaceBtwItems,),
            Wrap(
              spacing: 8,
                children: [
                  SoobuChoiceChip(label: 'Green', selected: false, onSelected: (value){},),
                  SoobuChoiceChip(label: 'Blue', selected: true, onSelected: (value){}),
                  SoobuChoiceChip(label: 'Red', selected: false, onSelected: (value){})
            ]
            )
          ],
        ),
        const SizedBox(height: SoobuSizes.spaceBtwItems,),
        Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SoobuSectionHeading(title: 'Size', showActionButton: false,),
            SizedBox(height: SoobuSizes.spaceBtwItems,),
            Wrap(
              spacing: 8,
                children:
            [
              SoobuChoiceChip(label: 'EU 12', selected: true, onSelected: (value){}),
              SoobuChoiceChip(label: 'EU 14', selected: false, onSelected: (value){}),
              SoobuChoiceChip(label: 'EU 16', selected: false, onSelected: (value){})
            ]
            )
          ],
        )
      ],
    );
  }
}


