import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../common/widgets/appbar/appbar.dart';
import '../../../../../common/widgets/custon_shapes/curved_edges/curved_edges_widget.dart';
import '../../../../../common/widgets/custon_shapes/icons/circular_icon.dart';
import '../../../../../common/widgets/images/round_image.dart';
import '../../../../../utils/constraints/colors.dart';
import '../../../../../utils/constraints/image_strings.dart';
import '../../../../../utils/constraints/sizes.dart';
import '../../../../../utils/helpers/helper_functions.dart';

class SoobuProductImageSlider extends StatelessWidget {
  const SoobuProductImageSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = SoobuHelperFunctions.isDarkMode(context);
    return SoobuCurvedEdgeWidget(
      child: Container(
        color: dark ? SoobuColors.dark : SoobuColors.light,
        child: Stack(
          children: [
            const SizedBox(
                height: 400,
                child: Padding(
                  padding:
                  EdgeInsets.all(SoobuSizes.productImageRadius * 2),
                  child: Center(
                      child: Image(
                          image: AssetImage(SoobuImages.product1))),
                )),
            Positioned(
              right: 0,
              bottom: 30,
              left: SoobuSizes.defaultSpace,
              child: SizedBox(height: 80,
                child: ListView.separated(
                    itemCount: 4,
                    scrollDirection: Axis.horizontal,
                    physics: const AlwaysScrollableScrollPhysics(),
                    shrinkWrap: true,
                    separatorBuilder: (_, __) => const SizedBox(
                      width: SoobuSizes.spaceBtwItems,
                    ),
                    itemBuilder: (_, index) => SoobuRoundImage(
                        padding: const EdgeInsets.all(SoobuSizes.sm),
                        width: 80,
                        border: Border.all(color: SoobuColors.primaryColor),
                        backgroundColor:
                        dark ? SoobuColors.dark : SoobuColors.light,
                        imageUrl: SoobuImages.product5)),
              ),
            ),
            const SoobuAppBar(showBackArrow: true, actions: [
              SoobuCircularIcon(icon: Iconsax.heart5, color: Colors.red,)
            ],)
          ],
        ),
      ),
    );
  }
}
