import 'package:flutter/material.dart';

import '../../../utils/constraints/colors.dart';
import '../../../utils/constraints/enums.dart';
import '../../../utils/constraints/image_strings.dart';
import '../../../utils/constraints/sizes.dart';
import '../../../utils/helpers/helper_functions.dart';
import '../custon_shapes/containers/rounded_container.dart';
import '../images/circular_image.dart';
import '../text/brand_title_with_verification.dart';

class SoobuBrandCard extends StatelessWidget {
  const SoobuBrandCard({
    super.key, required this.showBorder, this.onTap,
  });
  final bool showBorder;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SoobuRoundedContainer(
        padding: const EdgeInsets.all(SoobuSizes.sm),
        showBorder: showBorder,
        backgroundColor: Colors.transparent,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            /// Icon
            Flexible(
              child: SoobuCircularImage(
                isNetworkImage: false,
                image: SoobuImages.clothIcon,
                backgroundColor:Colors.transparent,
                overlayColor: SoobuHelperFunctions.isDarkMode(context) ? SoobuColors.white  : SoobuColors.black,
              ),
            ),
            const SizedBox(width: SoobuSizes.spaceBtwItems / 2),
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SoobuBrandTitleWithVerification(
                    title: 'Nike',
                    brandTextSize: TextSizes.large,
                  ),

                  Text(
                        '256 Products',
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context).textTheme.labelMedium,
                      )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
