import 'package:e_commerce/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:flutter/material.dart';

import '../../../../common/widgets/custon_shapes/containers/primary_header_container.dart';
import '../../../../common/widgets/custon_shapes/containers/search_container.dart';
import '../../../../common/widgets/layout/grid_layout.dart';
import '../../../../common/widgets/text/section_heading.dart';
import '../../../../utils/constraints/colors.dart';
import '../../../../utils/constraints/image_strings.dart';
import '../../../../utils/constraints/sizes.dart';
import 'widgets/home_appbar.dart';
import 'widgets/home_category.dart';
import 'widgets/home_promo_slider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Column(
      children: [
        const SoobuPrimaryHeaderContainer(
            child: Column(
          children: [
            /// Appbar
            SoobuHomeAppbar(),
            SizedBox(height: SoobuSizes.spaceBtwSections),

            /// Search bar
            SoobuSearchContainer(
              text: 'Search in store',
            ),
            SizedBox(height: SoobuSizes.spaceBtwSections),

            /// Categories

            Padding(
              padding: EdgeInsets.only(left: SoobuSizes.defaultSpace),
              child: Column(
                children: [
                  /// Heading
                  SoobuSectionHeading(
                    title: 'Popular Categories',
                    showActionButton: false,
                    textColor: SoobuColors.textWhite,
                  ),
                  SizedBox(height: SoobuSizes.spaceBtwItems),

                  /// Categories
                  SoobuHomeCategory(),
                  const SizedBox(height: SoobuSizes.spaceBtwSections,)
                ],
              ),
            )
          ],
        )),

        /// Body
        Padding(
          padding: const EdgeInsets.all(SoobuSizes.defaultSpace),
          child: Column(
            children: [
              const SoobuPromoSlider(
                banners: [
                  SoobuImages.promoBanner1,
                  SoobuImages.promoBanner2,
                  SoobuImages.promoBanner3
                ],
              ),
              SoobuSectionHeading(
                title: 'Popular Products',
                onPressed: () {},
              ),
              const SizedBox(
                height: SoobuSizes.spaceBtwItems,
              ),
              SoobuGridviewLayout(
                itemCount: 4,
                itemBuilder: (_, index) => const SoobuProductCardVertical(),
              ),
            ],
          ),
        ),
      ],
    )));
  }
}
