import 'package:flutter/material.dart';

import '../../../utils/constraints/colors.dart';
import '../../../utils/constraints/sizes.dart';
import '../../../utils/helpers/helper_functions.dart';

class SoobuVerticalImageText extends StatelessWidget {
  const SoobuVerticalImageText({
    super.key, this.textColor = SoobuColors.textWhite, this.backgroundColor = SoobuColors.white, required this.image, required this.onTap, required this.title,
  });
  final Color textColor;
  final Color? backgroundColor;
  final String image, title;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final dark = SoobuHelperFunctions.isDarkMode(context);

    return GestureDetector(onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(right: SoobuSizes.spaceBtwItems),
        child: Column(
          children: [

            /// Category circle
            Container(
                width: 56,
                height: 56,
                padding: const EdgeInsets.all(
                    SoobuSizes.md),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius
                      .circular(100),
                  color: dark? SoobuColors.black : SoobuColors.white,
                ),
                child: Center(child: Image(image: AssetImage(image),
                  fit: BoxFit.cover,
                  color: dark? SoobuColors.white : SoobuColors.dark,))
            ),
            const SizedBox(height: SoobuSizes.spaceBtwItems/2),
            SizedBox(width: 55, child: Text(title, style: Theme.of(context).textTheme.labelMedium!.apply(color: textColor) ,maxLines: 1, overflow: TextOverflow.ellipsis,))

          ],
        ),
      ),
    );
  }
}

