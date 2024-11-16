import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

import '../../../../utils/constraints/colors.dart';
import '../../../../utils/constraints/sizes.dart';

class SoobuCircularIcon extends StatelessWidget {
  const SoobuCircularIcon({
    super.key,
    this.width,
    this.height,
    this.size = SoobuSizes.lg,
    required this.icon,
    this.backgroundColor,
    this.color,
    this.onPressed,
  });

  final double? width, height, size;
  final IconData icon;
  final Color? backgroundColor;
  final Color? color;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: backgroundColor != null
            ? backgroundColor!
            : SoobuHelperFunctions.isDarkMode(context)
                ? SoobuColors.black.withOpacity(0.9)
                : SoobuColors.light.withOpacity(0.9),
      ),
      child: IconButton(
          onPressed: () {},
          icon: Icon(
            icon,
            color: color,
            size: size,
          )),
    );
  }
}
