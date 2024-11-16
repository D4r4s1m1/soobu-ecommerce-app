import 'package:e_commerce/common/widgets/custon_shapes/containers/rounded_container.dart';
import 'package:e_commerce/features/shop/screens/product_details/product_details.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constraints/colors.dart';
import '../../../../utils/constraints/image_strings.dart';
import '../../../../utils/constraints/sizes.dart';
import '../../../styles/shadow.dart';
import '../../custon_shapes/icons/circular_icon.dart';
import '../../images/round_image.dart';
import '../../text/brand_title_with_verification.dart';
import '../../text/product_price.dart';
import '../../text/product_title.dart';

class SoobuProductCardVertical extends StatelessWidget {
  const SoobuProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = SoobuHelperFunctions.isDarkMode(context);

    /// Container with side paddings, color, edges, radius and shadow
    return GestureDetector(
      onTap: () => Get.to(const ProductDetails()),
      child: Container(
        width: 180,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
            boxShadow: [SoobuShadowStyle.verticalProductShadow],
            borderRadius: BorderRadius.circular(SoobuSizes.productImageRadius),
            color: dark ? SoobuColors.darkGrey : SoobuColors.white),
        child: Column(children: [
          /// Thumbnail, wishlist, discount tag
          SoobuRoundedContainer(
              height: 180,
              padding: const EdgeInsets.all(SoobuSizes.md),
              backgroundColor: dark ? SoobuColors.dark : SoobuColors.light,
              child: Stack(alignment: Alignment.center,
                children: [
                  const SoobuRoundImage(
                    imageUrl: SoobuImages.product1,
                    applyImageRadius: true,
                  ),

                  ///Discount tag
                  Positioned(
                    top: 12,
                    left: 0,
                    child: SoobuRoundedContainer(
                      radius: SoobuSizes.sm,
                      backgroundColor:
                          SoobuColors.secondaryColor.withOpacity(0.8),
                      padding: const EdgeInsets.symmetric(
                          horizontal: SoobuSizes.sm, vertical: SoobuSizes.xs),
                      child: Text(
                        '25%',
                        style: Theme.of(context)
                            .textTheme
                            .labelLarge!
                            .apply(color: SoobuColors.black),
                      ),
                    ),
                  ),
                  const Positioned(
                      top: 0,
                      right: 0,
                      child: SoobuCircularIcon(
                        icon: Iconsax.heart5,
                        color: Colors.red,
                      ))
                ],
              )),
          const SizedBox(
            height: SoobuSizes.spaceBtwItems / 2,
          ),

          ///  Details
          const Padding(
            padding: EdgeInsets.only(left: SoobuSizes.sm),
            child: Column(
              children: [
                SoobuProductTitle(
                  title: 'Round Neck',
                ),
                SizedBox(
                  height: SoobuSizes.spaceBtwItems / 2,
                ),
                SoobuBrandTitleWithVerification(
                  title: 'Perfect Square',
                ),
              ],
            ),
          ),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              /// price
              const Padding(
                padding: EdgeInsets.only(left: SoobuSizes.sm),
                child: SoobuProductPriceText(
                  price: '15.0',
                ),
              ),
              Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(SoobuSizes.cardRadiusMd),
                      bottomRight:
                          Radius.circular(SoobuSizes.productImageRadius)),
                  color: SoobuColors.dark,
                ),
                child: const SizedBox(
                    height: SoobuSizes.iconLg * 1.2,
                    width: SoobuSizes.iconLg * 1.2,
                    child: Center(
                        child: Icon(
                      Icons.add,
                      color: SoobuColors.white,
                    ))),
              )
            ],
          )
        ]),
      ),
    );
  }
}

