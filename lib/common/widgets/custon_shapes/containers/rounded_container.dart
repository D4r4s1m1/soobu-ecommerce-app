import 'package:e_commerce/utils/constraints/sizes.dart';
import 'package:flutter/material.dart';

import '../../../../utils/constraints/colors.dart';

class SoobuRoundedContainer extends StatelessWidget {
  const SoobuRoundedContainer(
      {super.key,
      this.width,
      this.height,
      this.radius = SoobuSizes.cardRadiusLg,
      this.child,
      this.showBorder = false,
      this.borderColor = SoobuColors.grey,
      this.backgroundColor = SoobuColors.white,
      this.padding,
      this.margin});

  final double? width;
  final double? height;
  final double radius;
  final Widget? child;
  final bool showBorder;
  final Color borderColor;
  final Color backgroundColor;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: padding,
      margin: margin,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(radius),
        border: showBorder ? Border.all(color: borderColor) : null,
      ),
      child: child,
    );
  }
}
