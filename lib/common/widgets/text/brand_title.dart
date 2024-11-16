import 'package:flutter/material.dart';

import '../../../utils/constraints/enums.dart';

class SoobuBrandTitleText extends StatelessWidget {
  const SoobuBrandTitleText({
    super.key,
    required this.title,
    this.maxLine = 1,
    this.textAlign = TextAlign.center,
    this.brandTextSize = TextSizes.small,
    this.color,
  });

  final String title;
  final int maxLine;
  final TextAlign? textAlign;
  final TextSizes brandTextSize;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      maxLines: maxLine,
      overflow: TextOverflow.ellipsis,
      textAlign: textAlign,
      // Check which brand size is required and apply it
      style: brandTextSize == TextSizes.small
          ? Theme.of(context).textTheme.labelMedium!.apply(color: color)
          : brandTextSize == TextSizes.medium
              ? Theme.of(context).textTheme.bodyLarge!.apply(color: color)
              : brandTextSize == TextSizes.large
                  ? Theme.of(context).textTheme.titleLarge!.apply(color: color)
                  : Theme.of(context).textTheme.bodyMedium!.apply(color: color),
    );
  }
}
