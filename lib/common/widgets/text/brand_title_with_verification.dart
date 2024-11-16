import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../utils/constraints/colors.dart';
import '../../../utils/constraints/enums.dart';
import '../../../utils/constraints/sizes.dart';
import 'brand_title.dart';

class SoobuBrandTitleWithVerification extends StatelessWidget {
  const SoobuBrandTitleWithVerification({
    super.key,
    required this.title,
    this.maxLine = 1,
    this.textColor,
    this.iconColor = SoobuColors.primaryColor,
    this.textAlign = TextAlign.center,
    this.brandTextSize = TextSizes.small,
  });

  final String title;
  final int maxLine;
  final Color? textColor, iconColor;
  final TextAlign? textAlign;
  final TextSizes brandTextSize;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
          child: SoobuBrandTitleText(
            title: title,
            maxLine: maxLine,
            textAlign: textAlign,
            brandTextSize: brandTextSize,
          ),
        ),
        const SizedBox(
          width: SoobuSizes.xs,
        ),
        const Icon(
          Iconsax.verify5,
          color: SoobuColors.primaryColor,
          size: SoobuSizes.iconXs,
        )
      ],
    );
  }
}

